<?php
class ControllerInformationContact extends Controller {
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
		$this->load->language('information/contact');

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
			$mail = new Mail($this->config->get('config_mail_engine'));
			$mail->parameter = $this->config->get('config_mail_parameter');
			$mail->smtp_hostname = $this->config->get('config_mail_smtp_hostname');
			$mail->smtp_username = $this->config->get('config_mail_smtp_username');
			$mail->smtp_password = html_entity_decode($this->config->get('config_mail_smtp_password'), ENT_QUOTES, 'UTF-8');
			$mail->smtp_port = $this->config->get('config_mail_smtp_port');
			$mail->smtp_timeout = $this->config->get('config_mail_smtp_timeout');

			$mail->setTo($this->config->get('config_email'));
			$mail->setFrom($this->config->get('config_email'));
			$mail->setReplyTo($this->request->post['email']);
			$mail->setSender(html_entity_decode($this->request->post['name'], ENT_QUOTES, 'UTF-8'));
			$mail->setSubject(html_entity_decode(sprintf($this->language->get('email_subject'), $this->request->post['name']), ENT_QUOTES, 'UTF-8'));
			$mail->setText($this->request->post['enquiry']);
			$mail->send();

			$this->response->redirect($this->url->link('information/contact/success'));
		}

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('information/contact')
		);

		if (isset($this->error['name'])) {
			$data['error_name'] = $this->error['name'];
		} else {
			$data['error_name'] = '';
		}

		if (isset($this->error['email'])) {
			$data['error_email'] = $this->error['email'];
		} else {
			$data['error_email'] = '';
		}

		if (isset($this->error['enquiry'])) {
			$data['error_enquiry'] = $this->error['enquiry'];
		} else {
			$data['error_enquiry'] = '';
		}

		$data['button_submit'] = $this->language->get('button_submit');

		$data['action'] = $this->url->link('information/contact', '', true);

		$this->load->model('tool/image');

		if ($this->config->get('config_image')) {
			$data['image'] = $this->model_tool_image->resize($this->config->get('config_image'), $this->config->get('theme_' . $this->config->get('config_theme') . '_image_location_width'), $this->config->get('theme_' . $this->config->get('config_theme') . '_image_location_height'));
		} else {
			$data['image'] = false;
		}

		$data['store'] = $this->config->get('config_name');
		$data['address'] = nl2br($this->config->get('config_address'));
		$data['geocode'] = $this->config->get('config_geocode');
		$data['geocode_hl'] = $this->config->get('config_language');
		$data['telephone'] = $this->config->get('config_telephone');
		$data['fax'] = $this->config->get('config_fax');
		$data['open'] = nl2br($this->config->get('config_open'));
		$data['comment'] = $this->config->get('config_comment');

		$data['locations'] = array();

		$this->load->model('localisation/location');

		foreach((array)$this->config->get('config_location') as $location_id) {
			$location_info = $this->model_localisation_location->getLocation($location_id);

			if ($location_info) {
				if ($location_info['image']) {
					$image = $this->model_tool_image->resize($location_info['image'], $this->config->get('theme_' . $this->config->get('config_theme') . '_image_location_width'), $this->config->get('theme_' . $this->config->get('config_theme') . '_image_location_height'));
				} else {
					$image = false;
				}

				$data['locations'][] = array(
					'location_id' => $location_info['location_id'],
					'name'        => $location_info['name'],
					'address'     => nl2br($location_info['address']),
					'geocode'     => $location_info['geocode'],
					'telephone'   => $location_info['telephone'],
					'fax'         => $location_info['fax'],
					'image'       => $image,
					'open'        => nl2br($location_info['open']),
					'comment'     => $location_info['comment']
				);
			}
		}

		if (isset($this->request->post['name'])) {
			$data['name'] = $this->request->post['name'];
		} else {
			$data['name'] = $this->customer->getFirstName();
		}

		if (isset($this->request->post['email'])) {
			$data['email'] = $this->request->post['email'];
		} else {
			$data['email'] = $this->customer->getEmail();
		}

		if (isset($this->request->post['enquiry'])) {
			$data['enquiry'] = $this->request->post['enquiry'];
		} else {
			$data['enquiry'] = '';
		}

		// Captcha
		if ($this->config->get('captcha_' . $this->config->get('config_captcha') . '_status') && in_array('contact', (array)$this->config->get('config_captcha_page'))) {
			$data['captcha'] = $this->load->controller('extension/captcha/' . $this->config->get('config_captcha'), $this->error);
		} else {
			$data['captcha'] = '';
		}

		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');

		$this->response->setOutput($this->load->view('information/contact', $data));
	}

	protected function validate() {
		if ((utf8_strlen($this->request->post['name']) < 3) || (utf8_strlen($this->request->post['name']) > 32)) {
			$this->error['name'] = $this->language->get('error_name');
		}

		if (!filter_var($this->request->post['email'], FILTER_VALIDATE_EMAIL)) {
			$this->error['email'] = $this->language->get('error_email');
		}

		if ((utf8_strlen($this->request->post['enquiry']) < 10) || (utf8_strlen($this->request->post['enquiry']) > 3000)) {
			$this->error['enquiry'] = $this->language->get('error_enquiry');
		}

		// Captcha
		if ($this->config->get('captcha_' . $this->config->get('config_captcha') . '_status') && in_array('contact', (array)$this->config->get('config_captcha_page'))) {
			$captcha = $this->load->controller('extension/captcha/' . $this->config->get('config_captcha') . '/validate');

			if ($captcha) {
				$this->error['captcha'] = $captcha;
			}
		}

		return !$this->error;
	}

	public function success() {
		$this->load->language('information/contact');

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
			

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('information/contact')
		);

		$data['continue'] = $this->url->link('common/home');

		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');

		$this->response->setOutput($this->load->view('common/success', $data));
	}
}
