<?php

class ControllerModuleTtfacebookFanpage extends Controller {
	private $error = array();
	public function index() {
        $this->load->language('module/ttfacebook_fanpage');
        $this->document->setTitle($this->language->get('heading_title'));
        $this->load->model('setting/setting');
        if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
            //echo "<pre>".print_r($this->request->post,1);die;
            $this->model_setting_setting->editSetting('ttfacebook_fanpage', $this->request->post);
            $this->session->data['success'] = $this->language->get('text_success');
            $this->response->redirect($this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'));
        }
		$data['heading_title'] = $this->language->get('heading_title');
		$data['text_facebook_width'] = $this->language->get('text_facebook_width');
		$data['text_facebook_height'] = $this->language->get('text_facebook_height');
		$data['text_facebook_page'] = $this->language->get('text_facebook_page');
		$data['text_enabled'] = $this->language->get('text_enabled');
		$data['text_disabled'] = $this->language->get('text_disabled');
		$data['text_edit'] = $this->language->get('text_edit');
		$data['text_content_top'] = $this->language->get('text_content_top');
		$data['text_content_bottom'] = $this->language->get('text_content_bottom');		
		$data['text_column_left'] = $this->language->get('text_column_left');
		$data['text_column_right'] = $this->language->get('text_column_right');
		$data['entry_layout'] = $this->language->get('entry_layout');
		$data['entry_position'] = $this->language->get('entry_position');
		$data['entry_status'] = $this->language->get('entry_status');
		$data['entry_sort_order'] = $this->language->get('entry_sort_order');
		$data['button_save'] = $this->language->get('button_save');
		$data['button_cancel'] = $this->language->get('button_cancel');
		$data['button_add_module'] = $this->language->get('button_add_module');
		$data['button_remove'] = $this->language->get('button_remove');
		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}
		$data['breadcrumbs'] = array();
		$data['breadcrumbs'][] = array(
			'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
			'separator' => false
		);

		$data['breadcrumbs'][] = array(
			'text'      => $this->language->get('text_module'),
			'href'      => $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'),
			'separator' => ' :: '
		);

		$data['breadcrumbs'][] = array(
			'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('module/ttfacebook_fanpage', 'token=' . $this->session->data['token'], 'SSL'),
			'separator' => ' :: '
		);
		$data['action'] = $this->url->link('module/ttfacebook_fanpage', 'token=' . $this->session->data['token'], 'SSL');
		$data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');
		$data['modules'] = array();
		
		if (isset($this->request->post['ttfacebook_fanpage_status'])) {
			$data['ttfacebook_fanpage_status'] = $this->request->post['ttfacebook_fanpage_status'];
		} elseif ($this->config->get('ttfacebook_fanpagepage_status')) {
			$data['ttfacebook_fanpage_status'] = $this->config->get('ttfacebook_fanpage_status');
		}

		if (isset($this->request->post['ttfacebook_fanpage'])) {
			$data['ttfacebook_fanpage'] = $this->request->post['ttfacebook_fanpage'];
		} elseif ($this->config->get('ttfacebook_fanpage')) {
			$data['ttfacebook_fanpage'] = $this->config->get('ttfacebook_fanpage');
		}
		if (isset($this->request->post['ttfacebook_fanpage_height'])) {
			$data['ttfacebook_fanpage_height'] = $this->request->post['ttfacebook_fanpage_height'];
		} elseif ($this->config->get('ttfacebook_fanpage')) {
			$data['ttfacebook_fanpage_height'] = $this->config->get('ttfacebook_fanpage_height');
		}
		if (isset($this->request->post['ttfacebook_fanpage_width'])) {
			$data['ttfacebook_fanpage_width'] = $this->request->post['ttfacebook_fanpage_width'];
		} elseif ($this->config->get('ttfacebook_fanpage')) {
			$data['ttfacebook_fanpage_width'] = $this->config->get('ttfacebook_fanpage_width');
		}
		$this->load->model('design/layout');
		$data['layouts'] = $this->model_design_layout->getLayouts();
        $data['header'] = $this->load->controller('common/header');
        $data['column_left'] = $this->load->controller('common/column_left');
        $data['footer'] = $this->load->controller('common/footer');
        $this->response->setOutput($this->load->view('module/ttfacebook_fanpage.tpl', $data));
	}

	public  function validate() {
		if (!$this->user->hasPermission('modify', 'module/ttfacebook_fanpage')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}

		if (!$this->error) {
			return true;
		} else {
			return false;
		}	
	}
}

?>