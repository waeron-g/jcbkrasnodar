<?php
class ControllerAccountEdit extends Controller {
	private $error = array();


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
		if (!$this->customer->isLogged()) {
			$this->session->data['redirect'] = $this->url->link('account/edit', '', true);

			$this->response->redirect($this->url->link('account/login', '', true));
		}

		$this->load->language('account/edit');

		$this->document->setTitle($this->language->get('heading_title'));

				if ($this->config->get('module_seogenerator_status')) {
				$uni_seogenerator_data = $this->config->get('module_seogenerator_data');
				
				if ((isset($uni_seogenerator_data['special']['title_status']) && $uni_seogenerator_data['special']['title_status']) && (isset($uni_seogenerator_data['special']['title'][$this->config->get('config_language_id')]) && !empty($uni_seogenerator_data['special']['title'][$this->config->get('config_language_id')]))) {
				$uni_replace = [
				'[name]' => strip_tags(html_entity_decode($this->language->get('heading_title'), ENT_QUOTES, 'UTF-8')),
				
				'[n*ame]' => strip_tags(html_entity_decode($this->mb_lcfirst($this->language->get('heading_title')), ENT_QUOTES, 'UTF-8')),
				'[na*me]' => strip_tags(html_entity_decode($this->mb_scfirst($this->language->get('heading_title')), ENT_QUOTES, 'UTF-8')),
				'[N*ame]' => strip_tags(html_entity_decode($this->mb_ucfirst($this->language->get('heading_title')), ENT_QUOTES, 'UTF-8')),
				'[name*]' => strip_tags(html_entity_decode(mb_strtolower($this->language->get('heading_title')), ENT_QUOTES, 'UTF-8')),
				'[NAME*]' => strip_tags(html_entity_decode(mb_strtoupper($this->language->get('heading_title')), ENT_QUOTES, 'UTF-8')),
				'[N*aM*e]' => strip_tags(html_entity_decode(mb_convert_case($this->language->get('heading_title'), MB_CASE_TITLE, 'UTF-8'), ENT_QUOTES, 'UTF-8')),

				'[store]' => $this->config->get('config_name')
				];
				
				$uni_seo_title = str_replace(array_keys($uni_replace), array_values($uni_replace), $uni_seogenerator_data['special']['title'][$this->config->get('config_language_id')]);

				if ((isset($uni_seogenerator_data['special']['title_empty']) && $uni_seogenerator_data['special']['title_empty']) && empty($special_info['meta_title'])) {
				$this->document->setTitle($uni_seo_title);
				} elseif (!isset($uni_seogenerator_data['special']['title_empty'])) {
				$this->document->setTitle($uni_seo_title);
				}
				}
				
				if ((isset($uni_seogenerator_data['special']['description_status']) && $uni_seogenerator_data['special']['description_status']) && (isset($uni_seogenerator_data['special']['description'][$this->config->get('config_language_id')]) && !empty($uni_seogenerator_data['special']['description'][$this->config->get('config_language_id')]))) {
				$uni_replace = [
				'[name]' => strip_tags(html_entity_decode($this->language->get('heading_title'), ENT_QUOTES, 'UTF-8')),
				'[n*ame]' => strip_tags(html_entity_decode($this->mb_lcfirst($this->language->get('heading_title')), ENT_QUOTES, 'UTF-8')),
				'[na*me]' => strip_tags(html_entity_decode($this->mb_scfirst($this->language->get('heading_title')), ENT_QUOTES, 'UTF-8')),
				'[N*ame]' => strip_tags(html_entity_decode($this->mb_ucfirst($this->language->get('heading_title')), ENT_QUOTES, 'UTF-8')),
				'[name*]' => strip_tags(html_entity_decode(mb_strtolower($this->language->get('heading_title')), ENT_QUOTES, 'UTF-8')),
				'[NAME*]' => strip_tags(html_entity_decode(mb_strtoupper($this->language->get('heading_title')), ENT_QUOTES, 'UTF-8')),
				'[N*aM*e]' => strip_tags(html_entity_decode(mb_convert_case($this->language->get('heading_title'), MB_CASE_TITLE, 'UTF-8'), ENT_QUOTES, 'UTF-8')),	
				'[store]' => $this->config->get('config_name')
				];
				
				$uni_seo_description = str_replace(array_keys($uni_replace), array_values($uni_replace), $uni_seogenerator_data['special']['description'][$this->config->get('config_language_id')]);

				if ((isset($uni_seogenerator_data['special']['description_empty']) && $uni_seogenerator_data['special']['description_empty']) && empty($special_info['meta_description'])) {
				$this->document->setDescription($uni_seo_description);
				} elseif (!isset($uni_seogenerator_data['special']['description_empty'])) {
				$this->document->setDescription($uni_seo_description);
				}
				}
				if ((isset($uni_seogenerator_data['special']['keywords_status']) && $uni_seogenerator_data['special']['keywords_status']) && (isset($uni_seogenerator_data['special']['keywords'][$this->config->get('config_language_id')]) && !empty($uni_seogenerator_data['special']['keywords'][$this->config->get('config_language_id')]))) {
				$uni_replace = [
				'[name]' => strip_tags(html_entity_decode($this->language->get('heading_title'), ENT_QUOTES, 'UTF-8')),				
				'[n*ame]' => strip_tags(html_entity_decode($this->mb_lcfirst($this->language->get('heading_title')), ENT_QUOTES, 'UTF-8')),
				'[na*me]' => strip_tags(html_entity_decode($this->mb_scfirst($this->language->get('heading_title')), ENT_QUOTES, 'UTF-8')),
				'[N*ame]' => strip_tags(html_entity_decode($this->mb_ucfirst($this->language->get('heading_title')), ENT_QUOTES, 'UTF-8')),
				'[name*]' => strip_tags(html_entity_decode(mb_strtolower($this->language->get('heading_title')), ENT_QUOTES, 'UTF-8')),
				'[NAME*]' => strip_tags(html_entity_decode(mb_strtoupper($this->language->get('heading_title')), ENT_QUOTES, 'UTF-8')),
				'[N*aM*e]' => strip_tags(html_entity_decode(mb_convert_case($this->language->get('heading_title'), MB_CASE_TITLE, 'UTF-8'), ENT_QUOTES, 'UTF-8')),			
				'[store]' => $this->config->get('config_name')
				];
				
				$uni_seo_keywords = str_replace(array_keys($uni_replace), array_values($uni_replace), $uni_seogenerator_data['special']['keywords'][$this->config->get('config_language_id')]);
				
				if ((isset($uni_seogenerator_data['special']['keywords_empty']) && $uni_seogenerator_data['special']['keywords_empty']) && empty($special_info['meta_keywords'])) {
				$this->document->setKeywords($uni_seo_keywords);
				} elseif (!isset($uni_seogenerator_data['special']['keywords_empty'])) {
				$this->document->setKeywords($uni_seo_keywords);
				}
				}
				if ((isset($uni_seogenerator_data['special']['h1_status']) && $uni_seogenerator_data['special']['h1_status']) && (isset($uni_seogenerator_data['special']['h1'][$this->config->get('config_language_id')]) && !empty($uni_seogenerator_data['special']['h1'][$this->config->get('config_language_id')]))) {
				$uni_replace = [
				'[name]' => strip_tags(html_entity_decode($this->language->get('heading_title'), ENT_QUOTES, 'UTF-8')),				
				'[n*ame]' => strip_tags(html_entity_decode($this->mb_lcfirst($this->language->get('heading_title')), ENT_QUOTES, 'UTF-8')),
				'[na*me]' => strip_tags(html_entity_decode($this->mb_scfirst($this->language->get('heading_title')), ENT_QUOTES, 'UTF-8')),
				'[N*ame]' => strip_tags(html_entity_decode($this->mb_ucfirst($this->language->get('heading_title')), ENT_QUOTES, 'UTF-8')),
				'[name*]' => strip_tags(html_entity_decode(mb_strtolower($this->language->get('heading_title')), ENT_QUOTES, 'UTF-8')),
				'[NAME*]' => strip_tags(html_entity_decode(mb_strtoupper($this->language->get('heading_title')), ENT_QUOTES, 'UTF-8')),
				'[N*aM*e]' => strip_tags(html_entity_decode(mb_convert_case($this->language->get('heading_title'), MB_CASE_TITLE, 'UTF-8'), ENT_QUOTES, 'UTF-8')),
				'[store]' => $this->config->get('config_name')
				];

			    $uni_seo_h1 = str_replace(array_keys($uni_replace), array_values($uni_replace), $uni_seogenerator_data['special']['h1'][$this->config->get('config_language_id')]);
				if ((isset($uni_seogenerator_data['special']['h1_empty']) && $uni_seogenerator_data['special']['h1_empty']) && empty($special_info['meta_h1'])) {
				$data['heading_title'] = $uni_seo_h1;
				} elseif (!isset($uni_seogenerator_data['special']['h1_empty'])) {
				$data['heading_title'] = $uni_seo_h1;
				}
				}
				}
			

		$this->document->addScript('catalog/view/javascript/jquery/datetimepicker/moment/moment.min.js');
		$this->document->addScript('catalog/view/javascript/jquery/datetimepicker/moment/moment-with-locales.min.js');
		$this->document->addScript('catalog/view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.js');
		$this->document->addStyle('catalog/view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.css');

		$this->load->model('account/customer');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$this->model_account_customer->editCustomer($this->customer->getId(), $this->request->post);

			$this->session->data['success'] = $this->language->get('text_success');

			$this->response->redirect($this->url->link('account/account', '', true));
		}

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_account'),
			'href' => $this->url->link('account/account', '', true)
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_edit'),
			'href' => $this->url->link('account/edit', '', true)
		);

		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}

		if (isset($this->error['firstname'])) {
			$data['error_firstname'] = $this->error['firstname'];
		} else {
			$data['error_firstname'] = '';
		}

		if (isset($this->error['lastname'])) {
			$data['error_lastname'] = $this->error['lastname'];
		} else {
			$data['error_lastname'] = '';
		}

		if (isset($this->error['email'])) {
			$data['error_email'] = $this->error['email'];
		} else {
			$data['error_email'] = '';
		}

		if (isset($this->error['telephone'])) {
			$data['error_telephone'] = $this->error['telephone'];
		} else {
			$data['error_telephone'] = '';
		}

		if (isset($this->error['custom_field'])) {
			$data['error_custom_field'] = $this->error['custom_field'];
		} else {
			$data['error_custom_field'] = array();
		}

		$data['action'] = $this->url->link('account/edit', '', true);

		if ($this->request->server['REQUEST_METHOD'] != 'POST') {
			$customer_info = $this->model_account_customer->getCustomer($this->customer->getId());
		}

		if (isset($this->request->post['firstname'])) {
			$data['firstname'] = $this->request->post['firstname'];
		} elseif (!empty($customer_info)) {
			$data['firstname'] = $customer_info['firstname'];
		} else {
			$data['firstname'] = '';
		}

		if (isset($this->request->post['lastname'])) {
			$data['lastname'] = $this->request->post['lastname'];
		} elseif (!empty($customer_info)) {
			$data['lastname'] = $customer_info['lastname'];
		} else {
			$data['lastname'] = '';
		}

		if (isset($this->request->post['email'])) {
			$data['email'] = $this->request->post['email'];
		} elseif (!empty($customer_info)) {
			$data['email'] = $customer_info['email'];
		} else {
			$data['email'] = '';
		}

		if (isset($this->request->post['telephone'])) {
			$data['telephone'] = $this->request->post['telephone'];
		} elseif (!empty($customer_info)) {
			$data['telephone'] = $customer_info['telephone'];
		} else {
			$data['telephone'] = '';
		}

		// Custom Fields
		$data['custom_fields'] = array();
		
		$this->load->model('account/custom_field');

		$custom_fields = $this->model_account_custom_field->getCustomFields($this->config->get('config_customer_group_id'));

		foreach ($custom_fields as $custom_field) {
			if ($custom_field['location'] == 'account') {
				$data['custom_fields'][] = $custom_field;
			}
		}

		if (isset($this->request->post['custom_field']['account'])) {
			$data['account_custom_field'] = $this->request->post['custom_field']['account'];
		} elseif (isset($customer_info)) {
			$data['account_custom_field'] = json_decode($customer_info['custom_field'], true);
		} else {
			$data['account_custom_field'] = array();
		}

		$data['back'] = $this->url->link('account/account', '', true);

		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');

		$this->response->setOutput($this->load->view('account/edit', $data));
	}

	protected function validate() {
		if ((utf8_strlen(trim($this->request->post['firstname'])) < 1) || (utf8_strlen(trim($this->request->post['firstname'])) > 32)) {
			$this->error['firstname'] = $this->language->get('error_firstname');
		}

		if ((utf8_strlen(trim($this->request->post['lastname'])) < 1) || (utf8_strlen(trim($this->request->post['lastname'])) > 32)) {
			$this->error['lastname'] = $this->language->get('error_lastname');
		}

		if ((utf8_strlen($this->request->post['email']) > 96) || !filter_var($this->request->post['email'], FILTER_VALIDATE_EMAIL)) {
			$this->error['email'] = $this->language->get('error_email');
		}

		if (($this->customer->getEmail() != $this->request->post['email']) && $this->model_account_customer->getTotalCustomersByEmail($this->request->post['email'])) {
			$this->error['warning'] = $this->language->get('error_exists');
		}

		if ((utf8_strlen($this->request->post['telephone']) < 3) || (utf8_strlen($this->request->post['telephone']) > 32)) {
			$this->error['telephone'] = $this->language->get('error_telephone');
		}

		// Custom field validation
		$this->load->model('account/custom_field');

		$custom_fields = $this->model_account_custom_field->getCustomFields('account', $this->config->get('config_customer_group_id'));

		foreach ($custom_fields as $custom_field) {
			if ($custom_field['location'] == 'account') {
				if ($custom_field['required'] && empty($this->request->post['custom_field'][$custom_field['location']][$custom_field['custom_field_id']])) {
					$this->error['custom_field'][$custom_field['custom_field_id']] = sprintf($this->language->get('error_custom_field'), $custom_field['name']);
				} elseif (($custom_field['type'] == 'text') && !empty($custom_field['validation']) && !filter_var($this->request->post['custom_field'][$custom_field['location']][$custom_field['custom_field_id']], FILTER_VALIDATE_REGEXP, array('options' => array('regexp' => $custom_field['validation'])))) {
					$this->error['custom_field'][$custom_field['custom_field_id']] = sprintf($this->language->get('error_custom_field'), $custom_field['name']);
				}
			}
		}

		return !$this->error;
	}
}