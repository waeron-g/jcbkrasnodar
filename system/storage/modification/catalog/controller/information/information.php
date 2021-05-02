<?php
class ControllerInformationInformation extends Controller {

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
		$this->load->language('information/information');

		$this->load->model('catalog/information');

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home')
		);

		if (isset($this->request->get['information_id'])) {
			$information_id = (int)$this->request->get['information_id'];
		} else {
			$information_id = 0;
		}

		$information_info = $this->model_catalog_information->getInformation($information_id);

		if ($information_info) {
			$this->document->setTitle($information_info['meta_title']);
			$this->document->setDescription($information_info['meta_description']);
			$this->document->setKeywords($information_info['meta_keyword']);

			$data['breadcrumbs'][] = array(
				'text' => $information_info['title'],
				'href' => $this->url->link('information/information', 'information_id=' .  $information_id)
			);

			$data['heading_title'] = $information_info['title'];


				if ($this->config->get('module_seogenerator_status')) {
				$uni_seogenerator_data = $this->config->get('module_seogenerator_data');
				
				if ((isset($uni_seogenerator_data['information']['title_status']) && $uni_seogenerator_data['information']['title_status']) && (isset($uni_seogenerator_data['information']['title'][$this->config->get('config_language_id')]) && !empty($uni_seogenerator_data['information']['title'][$this->config->get('config_language_id')]))) {
				$uni_replace = [
				'[name]' => strip_tags(html_entity_decode($information_info['title'], ENT_QUOTES, 'UTF-8')),
				
				'[n*ame]' => strip_tags(html_entity_decode($this->mb_lcfirst($information_info['title']), ENT_QUOTES, 'UTF-8')),
				'[na*me]' => strip_tags(html_entity_decode($this->mb_scfirst($information_info['title']), ENT_QUOTES, 'UTF-8')),
				'[N*ame]' => strip_tags(html_entity_decode($this->mb_ucfirst($information_info['title']), ENT_QUOTES, 'UTF-8')),
				'[name*]' => strip_tags(html_entity_decode(mb_strtolower($information_info['title']), ENT_QUOTES, 'UTF-8')),
				'[NAME*]' => strip_tags(html_entity_decode(mb_strtoupper($information_info['title']), ENT_QUOTES, 'UTF-8')),
				'[N*aM*e]' => strip_tags(html_entity_decode(mb_convert_case($information_info['title'], MB_CASE_TITLE, 'UTF-8'), ENT_QUOTES, 'UTF-8')),

				'[store]' => $this->config->get('config_name')
				];
				
				$uni_seo_title = str_replace(array_keys($uni_replace), array_values($uni_replace), $uni_seogenerator_data['information']['title'][$this->config->get('config_language_id')]);

				if ((isset($uni_seogenerator_data['information']['title_empty']) && $uni_seogenerator_data['information']['title_empty']) && empty($information_info['meta_title'])) {
				$this->document->setTitle($uni_seo_title);
				} elseif (!isset($uni_seogenerator_data['information']['title_empty'])) {
				$this->document->setTitle($uni_seo_title);
				}
				}
				
				if ((isset($uni_seogenerator_data['information']['description_status']) && $uni_seogenerator_data['information']['description_status']) && (isset($uni_seogenerator_data['information']['description'][$this->config->get('config_language_id')]) && !empty($uni_seogenerator_data['information']['description'][$this->config->get('config_language_id')]))) {
				$uni_replace = [
				'[name]' => strip_tags(html_entity_decode($information_info['title'], ENT_QUOTES, 'UTF-8')),
				
				'[n*ame]' => strip_tags(html_entity_decode($this->mb_lcfirst($information_info['title']), ENT_QUOTES, 'UTF-8')),
				'[na*me]' => strip_tags(html_entity_decode($this->mb_scfirst($information_info['title']), ENT_QUOTES, 'UTF-8')),
				'[N*ame]' => strip_tags(html_entity_decode($this->mb_ucfirst($information_info['title']), ENT_QUOTES, 'UTF-8')),
				'[name*]' => strip_tags(html_entity_decode(mb_strtolower($information_info['title']), ENT_QUOTES, 'UTF-8')),
				'[NAME*]' => strip_tags(html_entity_decode(mb_strtoupper($information_info['title']), ENT_QUOTES, 'UTF-8')),
				'[N*aM*e]' => strip_tags(html_entity_decode(mb_convert_case($information_info['title'], MB_CASE_TITLE, 'UTF-8'), ENT_QUOTES, 'UTF-8')),

'[description]' => !empty($information_info['description']) ? ltrim(mb_substr(strip_tags(html_entity_decode($information_info['description'], ENT_QUOTES, 'UTF-8')), 0, 170)) : '',		
				'[store]' => $this->config->get('config_name')
				];
				
				$uni_seo_description = str_replace(array_keys($uni_replace), array_values($uni_replace), $uni_seogenerator_data['information']['description'][$this->config->get('config_language_id')]);

				if ((isset($uni_seogenerator_data['information']['description_empty']) && $uni_seogenerator_data['information']['description_empty']) && empty($information_info['meta_description'])) {
				$this->document->setDescription($uni_seo_description);
				} elseif (!isset($uni_seogenerator_data['information']['description_empty'])) {
				$this->document->setDescription($uni_seo_description);
				}
				}
				if ((isset($uni_seogenerator_data['information']['keywords_status']) && $uni_seogenerator_data['information']['keywords_status']) && (isset($uni_seogenerator_data['information']['keywords'][$this->config->get('config_language_id')]) && !empty($uni_seogenerator_data['information']['keywords'][$this->config->get('config_language_id')]))) {
				$uni_replace = [
				'[name]' => strip_tags(html_entity_decode($information_info['title'], ENT_QUOTES, 'UTF-8')),
				
				'[n*ame]' => strip_tags(html_entity_decode($this->mb_lcfirst($information_info['title']), ENT_QUOTES, 'UTF-8')),
				'[na*me]' => strip_tags(html_entity_decode($this->mb_scfirst($information_info['title']), ENT_QUOTES, 'UTF-8')),
				'[N*ame]' => strip_tags(html_entity_decode($this->mb_ucfirst($information_info['title']), ENT_QUOTES, 'UTF-8')),
				'[name*]' => strip_tags(html_entity_decode(mb_strtolower($information_info['title']), ENT_QUOTES, 'UTF-8')),
				'[NAME*]' => strip_tags(html_entity_decode(mb_strtoupper($information_info['title']), ENT_QUOTES, 'UTF-8')),
				'[N*aM*e]' => strip_tags(html_entity_decode(mb_convert_case($information_info['title'], MB_CASE_TITLE, 'UTF-8'), ENT_QUOTES, 'UTF-8')),
				
				'[store]' => $this->config->get('config_name')
				];
				
				$uni_seo_keywords = str_replace(array_keys($uni_replace), array_values($uni_replace), $uni_seogenerator_data['information']['keywords'][$this->config->get('config_language_id')]);
				
				if ((isset($uni_seogenerator_data['information']['keywords_empty']) && $uni_seogenerator_data['information']['keywords_empty']) && empty($information_info['meta_keywords'])) {
				$this->document->setKeywords($uni_seo_keywords);
				} elseif (!isset($uni_seogenerator_data['information']['keywords_empty'])) {
				$this->document->setKeywords($uni_seo_keywords);
				}
				}
				if ((isset($uni_seogenerator_data['information']['h1_status']) && $uni_seogenerator_data['information']['h1_status']) && (isset($uni_seogenerator_data['information']['h1'][$this->config->get('config_language_id')]) && !empty($uni_seogenerator_data['information']['h1'][$this->config->get('config_language_id')]))) {
				$uni_replace = [
				'[name]' => strip_tags(html_entity_decode($information_info['title'], ENT_QUOTES, 'UTF-8')),
				
				'[n*ame]' => strip_tags(html_entity_decode($this->mb_lcfirst($information_info['title']), ENT_QUOTES, 'UTF-8')),
				'[na*me]' => strip_tags(html_entity_decode($this->mb_scfirst($information_info['title']), ENT_QUOTES, 'UTF-8')),
				'[N*ame]' => strip_tags(html_entity_decode($this->mb_ucfirst($information_info['title']), ENT_QUOTES, 'UTF-8')),
				'[name*]' => strip_tags(html_entity_decode(mb_strtolower($information_info['title']), ENT_QUOTES, 'UTF-8')),
				'[NAME*]' => strip_tags(html_entity_decode(mb_strtoupper($information_info['title']), ENT_QUOTES, 'UTF-8')),
				'[N*aM*e]' => strip_tags(html_entity_decode(mb_convert_case($information_info['title'], MB_CASE_TITLE, 'UTF-8'), ENT_QUOTES, 'UTF-8')),

				'[store]' => $this->config->get('config_name')
				];

			    $uni_seo_h1 = str_replace(array_keys($uni_replace), array_values($uni_replace), $uni_seogenerator_data['information']['h1'][$this->config->get('config_language_id')]);
				if ((isset($uni_seogenerator_data['information']['h1_empty']) && $uni_seogenerator_data['information']['h1_empty']) && empty($information_info['meta_h1'])) {
				$data['heading_title'] = $uni_seo_h1;
				} elseif (!isset($uni_seogenerator_data['information']['h1_empty'])) {
				$data['heading_title'] = $uni_seo_h1;
				}
				}
				}
			
			$data['description'] = html_entity_decode($information_info['description'], ENT_QUOTES, 'UTF-8');

			$data['continue'] = $this->url->link('common/home');

			$data['column_left'] = $this->load->controller('common/column_left');
			$data['column_right'] = $this->load->controller('common/column_right');
			$data['content_top'] = $this->load->controller('common/content_top');
			$data['content_bottom'] = $this->load->controller('common/content_bottom');
			$data['footer'] = $this->load->controller('common/footer');
			$data['header'] = $this->load->controller('common/header');

			$this->response->setOutput($this->load->view('information/information', $data));
		} else {
			$data['breadcrumbs'][] = array(
				'text' => $this->language->get('text_error'),
				'href' => $this->url->link('information/information', 'information_id=' . $information_id)
			);

			$this->document->setTitle($this->language->get('text_error'));

			$data['heading_title'] = $this->language->get('text_error');

			$data['text_error'] = $this->language->get('text_error');

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

	public function agree() {
		$this->load->model('catalog/information');

		if (isset($this->request->get['information_id'])) {
			$information_id = (int)$this->request->get['information_id'];
		} else {
			$information_id = 0;
		}

		$output = '';

		$information_info = $this->model_catalog_information->getInformation($information_id);

		if ($information_info) {
			$output .= html_entity_decode($information_info['description'], ENT_QUOTES, 'UTF-8') . "\n";
		}

		$this->response->setOutput($output);
	}
}