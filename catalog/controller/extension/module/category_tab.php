<?php

class ControllerExtensionModuleCategoryTab extends Controller { 
	public function index($setting) {
		$this->load->language('extension/module/category_tab');

		$data['text_tax'] = $this->language->get('text_tax');

		$data['button_cart'] = $this->language->get('button_cart');
		$data['button_wishlist'] = $this->language->get('button_wishlist');
		$data['button_compare'] = $this->language->get('button_compare');

		$this->load->model('catalog/category');

		$this->load->model('catalog/product');

		$this->load->model('tool/image');
		
		//$this->document->addStyle('catalog/view/javascript/jquery/owl-carousel/owl.carousel.css');
		//$this->document->addStyle('catalog/view/javascript/jquery/owl-carousel/owl.transitions.css');
		//$this->document->addScript('catalog/view/javascript/jquery/owl-carousel/owl.carousel.min.js');
 		
		$categories_id = $setting['product_category'];
		$categories_id = array_slice($categories_id, 0, $setting['category_limit']);
		$arrayCategory['categories'] = array();
		
		foreach($categories_id as $category_id)
		{
			$category_info = $this->model_catalog_category->getCategory($category_id);			
			$category_name = $category_info['name'];
			
			$filter_data = array(
				'filter_category_id' => $category_id,
				'sort'               => 'p.sort_order',
				'order'              => 'ASC',
				'start'              => 0 * $setting['product_limit'],
				'limit'              => $setting['product_limit']
			);
			$results = $this->model_catalog_product->getProducts($filter_data);
			
			$products_for_template = [];
			
			foreach ($results as $result) {
				if ($result['image']) {
					$image = $this->model_tool_image->resize($result['image'], $setting['width'], $setting['height']);
				} else {
					$image = $this->model_tool_image->resize('placeholder.png', $setting['width'], $setting['height']);
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
	
				$products_for_template[] = array(
					'product_id'  => $result['product_id'],
					'thumb'       => $image,
					'thumb_swap'  => $this->model_tool_image->resize($images , $setting['width'], $setting['height']),
					'name'        => $result['name'],
					//'description' => utf8_substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get($this->config->get('config_theme') . '_product_description_length')) . '..',
					'price'       => $price,
					'sku'		  => $result['sku'],
					'special'     => $special,
					'percentsaving' 	 => round((($result['price'] - $result['special'])/$result['price'])*100, 0),
					'tax'         => $tax,
					'rating'      => $result['rating'],
					'href'        => $this->url->link('product/product', 'product_id=' . $result['product_id']),
					'quick'       => $this->url->link('product/quick_view','&product_id=' . $result['product_id'])
				);
			}
			
			$arrayCategory['categories'][] = array(
				'category_info' => $category_info,
				'category_id'  	=> $category_id,
				'target_category_id'  => $category_id,						
				'category_name' => $category_name,
				'category_href' => $this->url->link('product/category', 'path=' . $category_id),
				'products' => $products_for_template
			);
						
 		}
		
		if ($arrayCategory) {
			
			return $this->load->view('extension/module/category_tab', $arrayCategory);
			
		}
	}
}