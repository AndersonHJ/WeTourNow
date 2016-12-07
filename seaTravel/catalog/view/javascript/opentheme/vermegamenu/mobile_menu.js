
(function($){
     $.fn.extend({  
         mobilemenu: function() {       
            return this.each(function() {
            	
            	var $ul = $(this);
            	
				if($ul.data('accordiated'))
					return false;
													
				$.each($ul.find('ul, li>div'), function(){
					$(this).data('accordiated', true);
					$(this).hide();
				});
				
				$.each($ul.find('span.head'), function(){
					$(this).click(function(e){
						activate(this);
						return void(0);
					});
				});
				
				var active = (location.hash)?$(this).find('a[href=' + location.hash + ']')[0]:'';

				if(active){
					activate(active, 'toggle');
					$(active).parents().show();
				}
				
				function activate(el,effect){
					$(el).parent('li').toggleClass('active').siblings().removeClass('active').children('ul, div').slideUp('fast');
					$(el).siblings('ul, div')[(effect || 'slideToggle')]((!effect)?'fast':null);
				}
				
            });
        } 
    }); 
})($);

$(document).ready(function () {
	
	$("ul.mobilemenu li span.grower").each(function(){
        $(this).append('<span class="head"><a href="javascript:void(0)"></a></span>');
      });
	
	//$('ul.mobilemenu').mobilemenu();
	$('#ma-mobilemenu').css('display','none');
	$("ul.mobilemenu li.active").each(function(){
		$(this).children().next("ul").css('display', 'block');
	});
    
	$('.show-child-2').click(function() {
		$('.level2').slideUp('slow');
		$('.show-child-2').show();
		$('.hide-child-2').hide();
		$(this).closest('li').children('.level2').slideDown('fast');
		$(this).hide();
		$(this).closest('li').children('.hide-child-2').show();
		$('#ma-mobilemenu li').removeClass('act_parent');
		$(this).parent().addClass('act_parent');
	});
	
	$('.hide-child-2').click(function() {
		$(this).closest('li').children('.level2').slideUp('fast');
		$(this).hide();
		$(this).closest('li').children('.show-child-2').show();
		$(this).parent().removeClass('act_parent');
	});
	
	$('.show-child-3').click(function() {
		$('.level3').slideUp('slow');
		$('.show-child-3').show();
		$('.hide-child-3').hide();
		$(this).closest('li').children('.level3').slideDown('fast');
		$(this).hide();
		$(this).closest('li').children('.hide-child-3').show();
		$('#ma-mobilemenu li').removeClass('act_parent');
		$(this).parent().addClass('act_parent');
	});
	
	$('.hide-child-3').click(function() {
		$(this).closest('li').children('.level3').slideUp('fast');
		$(this).hide();
		$(this).closest('li').children('.show-child-3').show();
		$(this).parent().removeClass('act_parent');
	});
	
	//mobile
	//$('.btn-navbar').click(function() {
	//	
	//	var chk = 0;
	//	if ( $('#navbar-inner').hasClass('navbar-inactive') && ( chk==0 ) ) {
	//		$('#navbar-inner').removeClass('navbar-inactive');
	//		$('#navbar-inner').addClass('navbar-active');
	//		$('#ma-mobilemenu').css('display','block');
	//		chk = 1;
	//	}
	//	if ($('#navbar-inner').hasClass('navbar-active') && ( chk==0 ) ) {
	//		$('#navbar-inner').removeClass('navbar-active');
	//		$('#navbar-inner').addClass('navbar-inactive');			
	//		$('#ma-mobilemenu').css('display','none');
	//		chk = 1;
	//	}
	//	//$('#ma-mobilemenu').slideToggle();
	//});    
    
});