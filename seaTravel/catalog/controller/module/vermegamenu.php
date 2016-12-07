<?php
class ControllerModuleVermegamenu extends Controller {
	public function index($setting) { 
		$this->language->load('module/vermegamenu'); 
      	$data['heading_title'] = $this->language->get('heading_title');
		$this->load->model('catalog/category'); 
		$this->load->model('tool/image');
		$this->load->model('vermegamenu/menu');
			$mobile = $this->model_vermegamenu_menu->getblockCategTree(); 
			
			$html  = null; 
			$html .='<ul id="ma-vermobilemenu" class="mobilemenu">';
				foreach($mobile['children'] as $m) { 
					//echo "<pre>"; print_r($m); echo "</pre>"; 
					if(!isset($m["name"])) $m["name"] = 'Root';
							if(isset($m['children']) && count($m['children']) > 0) {
								$html .='<li><a class="alevel0" href="'.$m["link"].'"><span><img src="'.$m['thumbnail'].'" alt="'.$m["name"].'"/></span><span>'.$m["name"].'</span></a><a href="javascript:void(0);" class="more-child show-child-2">Show</a><a href="javascript:void(0);" style="display:none;" class="close-child hide-child-2">Hide</a>';
								//echo "<pre>"; print_r($m['children']); echo "</pre>"; 
								$sub1 = $m['children'] ;
								$html .='<ul class="level2">'; 
								if(isset($sub1)) {
									foreach($sub1 as $child1) {
										if(isset($child1['children'])) {
											if(count($child1['children']) > 0) {
												$html .='<li><a class="alevel1" href="'.$child1["link"].'"><span>'.$child1["name"].'</span></a><a href="javascript:void(0);" class="more-child show-child-3">Show</a><a href="javascript:void(0);" style="display:none;" class="close-child hide-child-3">Hide</a>';											
												$sub2 = $child1["children"];
												$html .= '<ul class="level3">';
												if(isset($sub2)) {
													foreach($sub2 as $child2) {
														$html .= '<li><a class="alevel2" href="'.$child2["link"].'"><span>'.$child2["name"].'</span></a></li>';
													}
												}
												$html .= '</ul>';
												$html .= '</li>';
											} else {
												$html .='<li><a class="alevel1" href="'.$child1["link"].'"><span>'.$child1["name"].'</span></a></li>';									
											}
										}
										
									}
								}
								$html .='</ul>';
								
						    } else {
								$html .='<li><a class="alevel0" href="'.$m["link"].'"><span><img src="'.$m['thumbnail'].'" alt=""/></span><span>'.$m["name"].'</span></a></span>';
							}
					$html .='</li>';
				} 
			$html .='</ul>'	;
        
		$lang_id = (int)$this->config->get('config_language_id');
		$top_menu = $this->model_vermegamenu_menu->getMenuCustomerLink($lang_id,$setting) ;
		$data['vermegamenu'] = $top_menu;
		$data['top_offset'] = 10; 
		$data['effect'] = 1; 
		$data['_menu'] = $html; 
		
		//$this->document->addScript('catalog/view/javascript/opentheme/vermegamenu/custommenu.js');
		//$this->document->addScript('catalog/view/javascript/opentheme/vermegamenu/mobile_menu.js');
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/stylesheet/opentheme/vermegamenu/css/ocsvegamenu.css')) {
			$this->document->addStyle('catalog/view/theme/'.$this->config->get('config_template').'/stylesheet/opentheme/vermegamenu/css/ocsvegamenu.css');
		} else {
			$this->document->addStyle('catalog/view/theme/default/stylesheet/opentheme/vermegamenu/css/ocsvegamenu.css');
		}
		

			if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/vermegamenu.tpl')) {
				return $this->load->view($this->config->get('config_template') . '/template/module/vermegamenu.tpl', $data);
			} else {
				return $this->load->view('default/template/module/vermegamenu.tpl', $data);
			}
		

		
	}
}
?>