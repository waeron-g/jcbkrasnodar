<?php
class ControllerProductCategory extends Controller {

				private function mb_ucfirst($str, $enc = 'utf-8') {
				return mb_strtoupper(mb_substr($str, 0, 1, $enc), $enc) . mb_substr($str, 1, mb_strlen($str, $enc), $enc);
				}
				private function mb_lcfirst($str, $enc = 'utf-8') {
				return mb_strtolower(mb_substr($str, 0, 1, $enc), $enc) . mb_substr($str, 1, mb_strlen($str, $enc), $enc);
				}
				private function mb_scfirst($str, $enc = 'utf-8') {
				if (str_word_count($str) > 1) {
				return str_replace(substr($str,0,strpos(trim($str),' ')), mb_strtolower(substr($str,0,strpos(trim($str),' ')), $enc), $str); 
				} else {
				return mb_strtolower($str, $enc); 
		        }
				}
			
	public function index() {
		$this->load->language('product/category');

		$this->load->model('catalog/category');

		$this->load->model('catalog/product');

		$this->load->model('tool/image');

		if (isset($this->request->get['filter'])) {
			$filter = $this->request->get['filter'];
		} else {
			$filter = '';
		}

		if (isset($this->request->get['sort'])) {
			$sort = $this->request->get['sort'];
		} else {
			$sort = 'p.sort_order';
		}

		if (isset($this->request->get['order'])) {
			$order = $this->request->get['order'];
		} else {
			$order = 'ASC';
		}

		if (isset($this->request->get['page'])) {
			$page = $this->request->get['page'];
		} else {
			$page = 1;
		}

		if (isset($this->request->get['limit'])) {
			$limit = (int)$this->request->get['limit'];
		} else {
			$limit = $this->config->get('theme_' . $this->config->get('config_theme') . '_product_limit');
		}

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home')
		);

		if (isset($this->request->get['path'])) {
			$url = '';

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}

			$path = '';

			$parts = explode('_', (string)$this->request->get['path']);

			$category_id = (int)array_pop($parts);

			foreach ($parts as $path_id) {
				if (!$path) {
					$path = (int)$path_id;
				} else {
					$path .= '_' . (int)$path_id;
				}

				$category_info = $this->model_catalog_category->getCategory($path_id);

				if ($category_info) {
					$data['breadcrumbs'][] = array(
						'text' => $category_info['name'],
						'href' => $this->url->link('product/category', 'path=' . $path . $url)
					);
				}
			}
		} else {
			$category_id = 0;
		}

		$category_info = $this->model_catalog_category->getCategory($category_id);

		if ($category_info) {
			$this->document->setTitle($category_info['meta_title']);
			$this->document->setDescription($category_info['meta_description']);
			$this->document->setKeywords($category_info['meta_keyword']);

			$data['heading_title'] = $category_info['name'];

			$data['text_compare'] = sprintf($this->language->get('text_compare'), (isset($this->session->data['compare']) ? count($this->session->data['compare']) : 0));

			// Set the last category breadcrumb
			$data['breadcrumbs'][] = array(
				'text' => $category_info['name'],
				'href' => $this->url->link('product/category', 'path=' . $this->request->get['path'])
			);

			if ($category_info['image']) {
				$data['thumb'] = $this->model_tool_image->resize($category_info['image'], $this->config->get('theme_' . $this->config->get('config_theme') . '_image_category_width'), $this->config->get('theme_' . $this->config->get('config_theme') . '_image_category_height'));
			} else {
				$data['thumb'] = '';
			}

			$data['description'] = html_entity_decode($category_info['description'], ENT_QUOTES, 'UTF-8');
			$data['compare'] = $this->url->link('product/compare');

			$url = '';

			if (isset($this->request->get['filter'])) {
				$url .= '&filter=' . $this->request->get['filter'];
			}

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}

			$data['categories'] = array();

			$results = $this->model_catalog_category->getCategories($category_id);

			foreach ($results as $result) {
				$filter_data = array(
					'filter_category_id'  => $result['category_id'],
					'filter_sub_category' => true
				);

				$data['categories'][] = array(
					'name' => $result['name'] . ($this->config->get('config_product_count') ? ' (' . $this->model_catalog_product->getTotalProducts($filter_data) . ')' : ''),
					'href' => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '_' . $result['category_id'] . $url)
				);
			}

			$data['products'] = array();

			$filter_data = array(
				'filter_category_id' => $category_id,
				'filter_filter'      => $filter,
				'sort'               => $sort,
				'order'              => $order,
				'start'              => ($page - 1) * $limit,
				'limit'              => $limit
			);

			$product_total = $this->model_catalog_product->getTotalProducts($filter_data);

			$results = $this->model_catalog_product->getProducts($filter_data);

			foreach ($results as $result) {
				if ($result['image']) {
					$image = $this->model_tool_image->resize($result['image'], $this->config->get('theme_' . $this->config->get('config_theme') . '_image_product_width'), $this->config->get('theme_' . $this->config->get('config_theme') . '_image_product_height'));
				} else {
					$image = $this->model_tool_image->resize('placeholder.png', $this->config->get('theme_' . $this->config->get('config_theme') . '_image_product_width'), $this->config->get('theme_' . $this->config->get('config_theme') . '_image_product_height'));
				}
							
				
				//added for image swap						
				$images = $this->model_catalog_product->getProductImages($result['product_id']);
				
				if(isset($images[0]['image']) && !empty($images)){
					$images = $images[0]['image']; 
				}else
				{
					$images = $image;
				}
				//


				if ($this->customer->isLogged() || !$this->config->get('config_customer_price')) {
					$price = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
				} else {
					$price = false;
				}

				if ((float)$result['special']) {
					$special = $this->currency->format($this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
				} else {
					$special = false;
				}

				if ($this->config->get('config_tax')) {
					$tax = $this->currency->format((float)$result['special'] ? $result['special'] : $result['price'], $this->session->data['currency']);
				} else {
					$tax = false;
				}

				if ($this->config->get('config_review_status')) {
					$rating = (int)$result['rating'];
				} else {
					$rating = false;
				}

				$data['products'][] = array(
					'product_id'  => $result['product_id'],
					'thumb'       => $image,
					'thumb_swap'  => $this->model_tool_image->resize($images, $this->config->get('theme_' . $this->config->get('config_theme') . '_image_product_width'), $this->config->get('theme_' . $this->config->get('config_theme') . '_image_product_height')),
					'name'        => $result['name'],
					'description' => utf8_substr(trim(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8'))), 0, $this->config->get('theme_' . $this->config->get('config_theme') . '_product_description_length')) . '..',
					'price'       => $price,
					'special'     => $special,
					'percentsaving' 	 => round((($result['price'] - $result['special'])/$result['price'])*100, 0),
					'tax'         => $tax,
					'minimum'     => $result['minimum'] > 0 ? $result['minimum'] : 1,
					'rating'      => $result['rating'],
					'href'        => $this->url->link('product/product', 'path=' . $this->request->get['path'] . '&product_id=' . $result['product_id'] . $url),
					'quick'       => $this->url->link('product/quick_view','path=' . $this->request->get['path'] . '&product_id=' . $result['product_id'] . $url)
				);
			}

			$url = '';

			if (isset($this->request->get['filter'])) {
				$url .= '&filter=' . $this->request->get['filter'];
			}

			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}


				if ($this->config->get('module_seogenerator_status')) {
				$uni_seogenerator_data = $this->config->get('module_seogenerator_data');
				
				if ((isset($uni_seogenerator_data['category']['title_status']) && $uni_seogenerator_data['category']['title_status']) && (isset($uni_seogenerator_data['category']['title'][$this->config->get('config_language_id')]) && !empty($uni_seogenerator_data['category']['title'][$this->config->get('config_language_id')]))) {
				
			if (isset($this->request->get['path'])) {
				$parts = explode('_', (string)$this->request->get['path']);
				foreach ($parts as $path_id) {
					$cat_info = $this->model_catalog_category->getCategory($path_id);
					if ($cat_info) {
						$cats[] = $cat_info['name'];
					}
				}
			}
		if (count($cats) > 1) {
				$uni_cat = $cats[count($cats)-2];
			} else {
				$uni_cat  = '';
		}

				$uni_replace = [
				'[name]' => strip_tags(html_entity_decode($category_info['name'], ENT_QUOTES, 'UTF-8')),
				
				'[n*ame]' => strip_tags(html_entity_decode($this->mb_lcfirst($category_info['name']), ENT_QUOTES, 'UTF-8')),
				'[na*me]' => strip_tags(html_entity_decode($this->mb_scfirst($category_info['name']), ENT_QUOTES, 'UTF-8')),
				'[N*ame]' => strip_tags(html_entity_decode($this->mb_ucfirst($category_info['name']), ENT_QUOTES, 'UTF-8')),
				'[name*]' => strip_tags(html_entity_decode(mb_strtolower($category_info['name']), ENT_QUOTES, 'UTF-8')),
				'[NAME*]' => strip_tags(html_entity_decode(mb_strtoupper($category_info['name']), ENT_QUOTES, 'UTF-8')),
				'[N*aM*e]' => strip_tags(html_entity_decode(mb_convert_case($category_info['name'], MB_CASE_TITLE, 'UTF-8'), ENT_QUOTES, 'UTF-8')),
				
				'[price]' => !empty($data['products'][0]['price']) ? $data['products'][0]['price'] : '',
				'[category]' => !empty($uni_cat) ? strip_tags(html_entity_decode($uni_cat, ENT_QUOTES, 'UTF-8')) : '',
				
				'[store]' => $this->config->get('config_name')
				];
				
				$uni_seo_title = str_replace(array_keys($uni_replace), array_values($uni_replace), $uni_seogenerator_data['category']['title'][$this->config->get('config_language_id')]);
				
				if ((isset($uni_seogenerator_data['category']['title_empty']) && $uni_seogenerator_data['category']['title_empty']) && empty($category_info['meta_title'])) {
				$this->document->setTitle($uni_seo_title);
				} elseif (!isset($uni_seogenerator_data['category']['title_empty'])) {
				$this->document->setTitle($uni_seo_title);
				}
				}
				
				if ((isset($uni_seogenerator_data['category']['description_status']) && $uni_seogenerator_data['category']['description_status']) && (isset($uni_seogenerator_data['category']['description'][$this->config->get('config_language_id')]) && !empty($uni_seogenerator_data['category']['description'][$this->config->get('config_language_id')]))) {
				$uni_replace = [
				'[name]' => strip_tags(html_entity_decode($category_info['name'], ENT_QUOTES, 'UTF-8')),
				
				'[n*ame]' => strip_tags(html_entity_decode($this->mb_lcfirst($category_info['name']), ENT_QUOTES, 'UTF-8')),
				'[na*me]' => strip_tags(html_entity_decode($this->mb_scfirst($category_info['name']), ENT_QUOTES, 'UTF-8')),
				'[N*ame]' => strip_tags(html_entity_decode($this->mb_ucfirst($category_info['name']), ENT_QUOTES, 'UTF-8')),
				'[name*]' => strip_tags(html_entity_decode(mb_strtolower($category_info['name']), ENT_QUOTES, 'UTF-8')),
				'[NAME*]' => strip_tags(html_entity_decode(mb_strtoupper($category_info['name']), ENT_QUOTES, 'UTF-8')),
				'[N*aM*e]' => strip_tags(html_entity_decode(mb_convert_case($category_info['name'], MB_CASE_TITLE, 'UTF-8'), ENT_QUOTES, 'UTF-8')),

		'[description]' => !empty($category_info['description']) ? ltrim(mb_substr(strip_tags(html_entity_decode($category_info['description'], ENT_QUOTES, 'UTF-8')), 0, 170)) : '',
				
				'[price]' => !empty($data['products'][0]['price']) ? $data['products'][0]['price'] : '',
				'[category]' => !empty($uni_cat) ? strip_tags(html_entity_decode($uni_cat, ENT_QUOTES, 'UTF-8')) : '',
				'[store]' => $this->config->get('config_name')
				];
				
				$uni_seo_description = str_replace(array_keys($uni_replace), array_values($uni_replace), $uni_seogenerator_data['category']['description'][$this->config->get('config_language_id')]);
				
				if ((isset($uni_seogenerator_data['category']['description_empty']) && $uni_seogenerator_data['category']['description_empty']) && empty($category_info['meta_description'])) {
				$this->document->setDescription($uni_seo_description);
				} elseif (!isset($uni_seogenerator_data['category']['description_empty'])) {
				$this->document->setDescription($uni_seo_description);
				}
				}
				
				if ((isset($uni_seogenerator_data['category']['keywords_status']) && $uni_seogenerator_data['category']['keywords_status']) && (isset($uni_seogenerator_data['category']['keywords'][$this->config->get('config_language_id')]) && !empty($uni_seogenerator_data['category']['keywords'][$this->config->get('config_language_id')]))) {
				$uni_replace = [
				'[name]' => strip_tags(html_entity_decode($category_info['name'], ENT_QUOTES, 'UTF-8')),
				
				'[n*ame]' => strip_tags(html_entity_decode($this->mb_lcfirst($category_info['name']), ENT_QUOTES, 'UTF-8')),
				'[na*me]' => strip_tags(html_entity_decode($this->mb_scfirst($category_info['name']), ENT_QUOTES, 'UTF-8')),
				'[N*ame]' => strip_tags(html_entity_decode($this->mb_ucfirst($category_info['name']), ENT_QUOTES, 'UTF-8')),
				'[name*]' => strip_tags(html_entity_decode(mb_strtolower($category_info['name']), ENT_QUOTES, 'UTF-8')),
				'[NAME*]' => strip_tags(html_entity_decode(mb_strtoupper($category_info['name']), ENT_QUOTES, 'UTF-8')),
				'[N*aM*e]' => strip_tags(html_entity_decode(mb_convert_case($category_info['name'], MB_CASE_TITLE, 'UTF-8'), ENT_QUOTES, 'UTF-8')),

                '[price]' => !empty($data['products'][0]['price']) ? $data['products'][0]['price'] : '',

				'[category]' => !empty($uni_cat) ? strip_tags(html_entity_decode($uni_cat, ENT_QUOTES, 'UTF-8')) : '',
				'[store]' => $this->config->get('config_name')
				];
				
				$uni_seo_keywords = str_replace(array_keys($uni_replace), array_values($uni_replace), $uni_seogenerator_data['category']['keywords'][$this->config->get('config_language_id')]);
				
				if ((isset($uni_seogenerator_data['category']['keywords_empty']) && $uni_seogenerator_data['category']['keywords_empty']) && empty($category_info['meta_keywords'])) {
				$this->document->setKeywords($uni_seo_keywords);
				} elseif (!isset($uni_seogenerator_data['category']['keywords_empty'])) {
				$this->document->setKeywords($uni_seo_keywords);
				}
				}
								if ((isset($uni_seogenerator_data['category']['h1_status']) && $uni_seogenerator_data['category']['h1_status']) && (isset($uni_seogenerator_data['category']['h1'][$this->config->get('config_language_id')]) && !empty($uni_seogenerator_data['category']['h1'][$this->config->get('config_language_id')]))) {
				$uni_replace = [
				'[name]' => strip_tags(html_entity_decode($category_info['name'], ENT_QUOTES, 'UTF-8')),
				
				'[n*ame]' => strip_tags(html_entity_decode($this->mb_lcfirst($category_info['name']), ENT_QUOTES, 'UTF-8')), //первый символ строки в нижний регистр
				'[na*me]' => strip_tags(html_entity_decode($this->mb_scfirst($category_info['name']), ENT_QUOTES, 'UTF-8')), //первое слово строки в нижний регистр
				'[N*ame]' => strip_tags(html_entity_decode($this->mb_ucfirst($category_info['name']), ENT_QUOTES, 'UTF-8')), //первый символ строки в верхний регистр
				
				'[name*]' => strip_tags(html_entity_decode(mb_strtolower($category_info['name']), ENT_QUOTES, 'UTF-8')), //строку в нижний регистр
				'[NAME*]' => strip_tags(html_entity_decode(mb_strtoupper($category_info['name']), ENT_QUOTES, 'UTF-8')), //строку в верхний регистр
				'[N*aM*e]' => strip_tags(html_entity_decode(mb_convert_case($category_info['name'], MB_CASE_TITLE, 'UTF-8'), ENT_QUOTES, 'UTF-8')), //В верхний регистр первый символ каждого слова в строке
				
				'[price]' => !empty($data['products'][0]['price']) ? $data['products'][0]['price'] : '',
				'[category]' => !empty($uni_cat) ? strip_tags(html_entity_decode($uni_cat, ENT_QUOTES, 'UTF-8')) : '',

				'[store]' => $this->config->get('config_name')
				];
				
				$uni_seo_h1 = str_replace(array_keys($uni_replace), array_values($uni_replace), $uni_seogenerator_data['category']['h1'][$this->config->get('config_language_id')]);
				if ((isset($uni_seogenerator_data['category']['h1_empty']) && $uni_seogenerator_data['category']['h1_empty']) && empty($category_info['meta_h1'])) {
				$data['heading_title'] = $uni_seo_h1;
				} elseif (!isset($uni_seogenerator_data['category']['h1_empty'])) {
				$data['heading_title'] = $uni_seo_h1;
				}
				}
				}
			
			$data['sorts'] = array();

			$data['sorts'][] = array(
				'text'  => $this->language->get('text_default'),
				'value' => 'p.sort_order-ASC',
				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=p.sort_order&order=ASC' . $url)
			);

			$data['sorts'][] = array(
				'text'  => $this->language->get('text_name_asc'),
				'value' => 'pd.name-ASC',
				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=pd.name&order=ASC' . $url)
			);

			$data['sorts'][] = array(
				'text'  => $this->language->get('text_name_desc'),
				'value' => 'pd.name-DESC',
				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=pd.name&order=DESC' . $url)
			);

			$data['sorts'][] = array(
				'text'  => $this->language->get('text_price_asc'),
				'value' => 'p.price-ASC',
				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=p.price&order=ASC' . $url)
			);

			$data['sorts'][] = array(
				'text'  => $this->language->get('text_price_desc'),
				'value' => 'p.price-DESC',
				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=p.price&order=DESC' . $url)
			);

			if ($this->config->get('config_review_status')) {
				$data['sorts'][] = array(
					'text'  => $this->language->get('text_rating_desc'),
					'value' => 'rating-DESC',
					'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=rating&order=DESC' . $url)
				);

				$data['sorts'][] = array(
					'text'  => $this->language->get('text_rating_asc'),
					'value' => 'rating-ASC',
					'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=rating&order=ASC' . $url)
				);
			}

			$data['sorts'][] = array(
				'text'  => $this->language->get('text_model_asc'),
				'value' => 'p.model-ASC',
				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=p.model&order=ASC' . $url)
			);

			$data['sorts'][] = array(
				'text'  => $this->language->get('text_model_desc'),
				'value' => 'p.model-DESC',
				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=p.model&order=DESC' . $url)
			);

			$url = '';

			if (isset($this->request->get['filter'])) {
				$url .= '&filter=' . $this->request->get['filter'];
			}

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			$data['limits'] = array();

			$limits = array_unique(array($this->config->get('theme_' . $this->config->get('config_theme') . '_product_limit'), 25, 50, 75, 100));

			sort($limits);

			foreach($limits as $value) {
				$data['limits'][] = array(
					'text'  => $value,
					'value' => $value,
					'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . $url . '&limit=' . $value)
				);
			}

			$url = '';

			if (isset($this->request->get['filter'])) {
				$url .= '&filter=' . $this->request->get['filter'];
			}

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}

			$pagination = new Pagination();
			$pagination->total = $product_total;
			$pagination->page = $page;
			$pagination->limit = $limit;
			$pagination->url = $this->url->link('product/category', 'path=' . $this->request->get['path'] . $url . '&page={page}');

			$data['pagination'] = $pagination->render();

			$data['results'] = sprintf($this->language->get('text_pagination'), ($product_total) ? (($page - 1) * $limit) + 1 : 0, ((($page - 1) * $limit) > ($product_total - $limit)) ? $product_total : ((($page - 1) * $limit) + $limit), $product_total, ceil($product_total / $limit));

			// http://googlewebmastercentral.blogspot.com/2011/09/pagination-with-relnext-and-relprev.html
			if ($page == 1) {
			    $this->document->addLink($this->url->link('product/category', 'path=' . $category_info['category_id']), 'canonical');
			} else {
				$this->document->addLink($this->url->link('product/category', 'path=' . $category_info['category_id'] . '&page='. $page), 'canonical');
			}
			
			if ($page > 1) {
			    $this->document->addLink($this->url->link('product/category', 'path=' . $category_info['category_id'] . (($page - 2) ? '&page='. ($page - 1) : '')), 'prev');
			}

			if ($limit && ceil($product_total / $limit) > $page) {
			    $this->document->addLink($this->url->link('product/category', 'path=' . $category_info['category_id'] . '&page='. ($page + 1)), 'next');
			}

			$data['sort'] = $sort;
			$data['order'] = $order;
			$data['limit'] = $limit;

			$data['continue'] = $this->url->link('common/home');

			$data['column_left'] = $this->load->controller('common/column_left');
			$data['column_right'] = $this->load->controller('common/column_right');
			$data['content_top'] = $this->load->controller('common/content_top');
			$data['content_bottom'] = $this->load->controller('common/content_bottom');
			$data['footer'] = $this->load->controller('common/footer');
			$data['header'] = $this->load->controller('common/header');

			$this->response->setOutput($this->load->view('product/category', $data));
		} else {
			$url = '';

			if (isset($this->request->get['path'])) {
				$url .= '&path=' . $this->request->get['path'];
			}

			if (isset($this->request->get['filter'])) {
				$url .= '&filter=' . $this->request->get['filter'];
			}

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}

			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}

			$data['breadcrumbs'][] = array(
				'text' => $this->language->get('text_error'),
				'href' => $this->url->link('product/category', $url)
			);

			$this->document->setTitle($this->language->get('text_error'));

			$data['continue'] = $this->url->link('common/home');

			$this->response->addHeader($this->request->server['SERVER_PROTOCOL'] . ' 404 Not Found');

			$data['column_left'] = $this->load->controller('common/column_left');
			$data['column_right'] = $this->load->controller('common/column_right');
			$data['content_top'] = $this->load->controller('common/content_top');
			$data['content_bottom'] = $this->load->controller('common/content_bottom');
			$data['footer'] = $this->load->controller('common/footer');
			$data['header'] = $this->load->controller('common/header');

			$this->response->setOutput($this->load->view('error/not_found', $data));
		}
	}
}
