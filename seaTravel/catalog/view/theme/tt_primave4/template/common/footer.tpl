<footer>
  <div class="our-brand">
    <div class="container">
        <?php echo $block2; ?>
    </div>
  </div>
  <div class="social-footer-link">
    <div class="container">
        <div class="row">
          <div class="col-xs-12 col-sm-6 left-footer">
            <ul class="link-follow">
              <li><a class="twitter fa fa-twitter" href="https://twitter.com/plazathemes"><span><?php echo $text_twitter; ?></span></a></li>
              <li><a class="google fa fa-google-plus" href="#"><span><?php echo $text_google; ?></span></a></li>
              <li><a class="facebook fa fa-facebook" href="https://www.facebook.com/plazathemes"><span><?php echo $text_facebook; ?></span></a></li>
              <li><a class="youtube fa fa-youtube" href="https://www.youtube.com/user/plazathemes"><span><?php echo $text_youtube; ?></span></a></li>
              <li><a class="rss fa fa-rss" href="#"><span><?php echo $text_rss; ?></span></a></li>
              <li><a class="vimeo fa fa-vimeo-square" href="#"><span><?php echo $text_vimeo; ?></span></a></li>
            </ul>
          </div>
          <div class="col-xs-12 col-sm-6">
            <ul class="links">
              <li><a href="<?php echo $sitemap; ?>" title="<?php echo $text_sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
              <li><a href="<?php echo $search; ?>" title="<?php echo $text_search; ?>"><?php echo $text_search; ?></a></li>
              <li><a href="<?php echo $manufacturer; ?>" title="<?php echo $text_manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
              <li><a href="<?php echo $order; ?>" title="<?php echo $text_order; ?>"><?php echo $text_order; ?></a></li>
              <li><a href="<?php echo $contact; ?>" title="<?php echo $text_contact; ?>"><?php echo $text_contact; ?></a></li>
            </ul>
          </div>
        </div>
    </div>
  </div>
  <div class="footer-static-top">
    <div class="container">
        <div class="footer-static-top-border">
      <div class="row">
        <div class="col1 col-sm-6 col-md-3 col-sm-6 col-xs-12">
          <a href="#"><img alt="logo-footer" src="image/catalog/logo-footer_4.jpg"></a>
          <div class="footer-static-content">
          <p class="des"><?php echo $informations[1]['short-aboutus']; ?></p>
          <a class="readmore" href="<?php echo $informations[1]['href']; ?>"><?php echo $text_readmore; ?></a>
          </div>
        </div>
        <div class="col2 col-sm-6 col-md-3 col-sm-6 col-xs-12">
          <?php echo $block3; ?>
        </div>
        <div class="col3 col-sm-6 col-md-3 col-sm-6 col-xs-12">
          <?php echo $block4; ?>
        </div>
        <div class="col4 col-sm-6 col-md-3 col-sm-6 col-xs-12">
          <div class="title-contact">
            <h2><?php echo $text_contact; ?></h2>
          </div>
          <div class="content-contact">
            <ul>
              <li><div class="pull-left"><i class="fa fa-map-marker"></i></div><div class="media-body"><?php echo $address; ?></div></li>
              <li><div class="pull-left"><i class="fa fa-mobile"></i></div><div class="media-body"><?php echo $telephone; ?></div></li>
              <li><div class="pull-left"><i class="fa fa-envelope-o"></i></div><div class="media-body"><?php echo $email; ?></div></li>
            </ul>
          </div>
        </div>
      </div>
      </div>
    </div>
  </div><!--footer-static-top-->
  <div class="footer-static"> 
        <div class="container">
            <div class="row"> 
                <div class="col-sm-6 col-md-3 col-lg-3 col-xs-12">            
                    <div class="footer-static-title">                
                        <h3><?php echo $text_service;?></h3>
                    </div>
                    <div class="footer-static-content">                
                        <ul>
                            <li><a href="<?php echo $informations[1]['href']?>"><?php echo $informations[1]['title']?></a></li>
                            <li><a href="<?php echo $order; ?>"><?php echo $text_order;?></a></li>
                            <li><a href="<?php echo $return; ?>"><?php echo $text_return;?></a></li>
                            <li><a href="<?php echo $informations[4]['href']?>"><?php echo $informations[4]['title']?></a></li>
                            <li><a href="<?php echo $informations[2]['href']?>"><?php echo $informations[2]['title']?></a></li>
                        </ul>
                    </div>
                </div><!-- col1-->
                <div class="col-sm-6 col-md-3 col-lg-3 col-xs-12">            
                    <div class="footer-static-title">                
                        <h3><?php echo $text_support;?></h3>
                    </div>
                    <div class="footer-static-content ">                
                        <ul>
                            <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap;?></a></li>
                            <li><a href="<?php echo $informations[0]['href']?>"><?php echo $informations[0]['title']?></a></li>
                            <li><a href="<?php echo $special; ?>"><?php echo $text_special;?></a></li>
                            <li><a href="<?php echo $search; ?>"><?php echo $text_search;?></a></li>
                            <li><a href="<?php echo $contact; ?>"><?php echo $text_contact;?></a></li>
                        </ul>
                    </div>
                </div><!-- col2-->
                <div class="col-sm-6 col-md-3 col-lg-3 col-xs-12">            
                    <div class="footer-static-title">                
                        <h3><?php echo $text_account;?></h3>
                    </div>
                    <div class="footer-static-content">                
                        <ul>
                            <li><a href="<?php echo $account; ?>"><?php echo $text_account;?></a></li>
                            <li><a href="<?php echo $order; ?>"><?php echo $text_order;?></a></li>
                            <li><a href="<?php echo $return; ?>"><?php echo $text_return;?></a></li>
                            <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer;?></a></li>
                            <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap;?></a></li>
                        </ul>
                    </div>
                </div><!-- col3-->
                <div class="col-sm-6 col-md-3 col-lg-3 col-xs-12">            
                    <div class="footer-static-title">                
                        <h3><?php echo $text_information;?></h3>
                    </div>
                    <div class="footer-static-content">                
                        <ul>
                            <?php foreach ($informations as $information) { ?>
                            <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
                            <?php } ?>
                        </ul>
                    </div>
                </div><!-- col4-->
                        </div><!-- row -->
    </div><!-- container -->
    </div><!-- footer-static -->
    <div class="footer">
      <div class="container">
        <div class="row">
          <div class="col-xs-12 col-sm-6 left-footer">
            <address><?php echo $powered; ?></address>
          </div>
          <div class="col-xs-12 col-sm-6">
          </div>
        </div>
      </div>
      <div style="display: block;" id="back-top" class="hidden-xs"></div>
	</div>
  
            <script type="text/javascript">
            	$(document).ready(function(){
            	 // hide #back-top first
            	 $("#back-top").hide();
            	 // fade in #back-top
            	 $(function () {
            	  $(window).scroll(function () {
            	   if ($(this).scrollTop() > 300) {
            		$('#back-top').fadeIn();
            	   } else {
            		$('#back-top').fadeOut();
            	   }
            	  });
            	  // scroll body to 0px on click
            	  $('#back-top').click(function () {
            	   $('body,html').animate({
            		scrollTop: 0
            	   }, 800);
            	   return false;
            	  });
            	 });
            	});
            </script>
</footer>

<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->

<!-- Theme created by Welford Media for OpenCart 2.0 www.welfordmedia.co.uk -->

