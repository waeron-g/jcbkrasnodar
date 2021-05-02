<?php
class ControllerAccountPassword extends Controller {
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
			$this->session->data['redirect'] = $this->url->link('account/password', '', true);

			$this->response->redirect($this->url->link('account/login', '', true));
		}

		$this->load->language('account/password');

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
			

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$this->load->model('account/customer');

			$this->model_account_customer->editPassword($this->customer->getEmail(), $this->request->post['password']);

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
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('account/password', '', true)
		);

		if (isset($this->error['password'])) {
			$data['error_password'] = $this->error['password'];
		} else {
			$data['error_password'] = '';
		}

		if (isset($this->error['confirm'])) {
			$data['error_confirm'] = $this->error['confirm'];
		} else {
			$data['error_confirm'] = '';
		}

		$data['action'] = $this->url->link('account/password', '', true);

		if (isset($this->request->post['password'])) {
			$data['password'] = $this->request->post['password'];
		} else {
			$data['password'] = '';
		}

		if (isset($this->request->post['confirm'])) {
			$data['confirm'] = $this->request->post['confirm'];
		} else {
			$data['confirm'] = '';
		}

		$data['back'] = $this->url->link('account/account', '', true);

		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');

		$this->response->setOutput($this->load->view('account/password', $data));
	}

	protected function validate() {
		if ((utf8_strlen(html_entity_decode($this->request->post['password'], ENT_QUOTES, 'UTF-8')) < 4) || (utf8_strlen(html_entity_decode($this->request->post['password'], ENT_QUOTES, 'UTF-8')) > 40)) {
			$this->error['password'] = $this->language->get('error_password');
		}

		if ($this->request->post['confirm'] != $this->request->post['password']) {
			$this->error['confirm'] = $this->language->get('error_confirm');
		}

		return !$this->error;
	}
}