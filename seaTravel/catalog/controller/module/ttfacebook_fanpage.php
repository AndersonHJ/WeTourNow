<?php  

class ControllerModuleTtfacebookFanpage extends Controller {
	public  function index($setting) {
		$this->language->load('module/facebook_like_lite');
		$data['heading_title'] = $this->language->get('heading_title');
		$data['ttfacebook_page'] = $this->config->get('ttfacebook_fanpage');
		$data['ttfacebook_fanpage_width'] = $this->config->get('ttfacebook_fanpage_width');
		$data['ttfacebook_fanpage_height'] = $this->config->get('ttfacebook_fanpage_height');
        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/ttfacebook_fanpage.tpl')) {
            return $this->load->view($this->config->get('config_template') . '/template/module/ttfacebook_fanpage.tpl', $data);
        } else {
            return $this->load->view('default/template/module/ttfacebook_fanpage.tpl', $data);
        }
	}
}

?>