<div id="slideshow<?php echo $module; ?>" class="owl-carousel" style="opacity: 1;">
  <?php foreach ($banners as $banner) { ?>
  <div class="item">
    <?php if ($banner['link']) { ?>
    <a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" /></a>
            <div id="banner_text" class="nivo-caption">
            <div class="banner7-content hidden-xs ">
                <h1 class="title"><span><?php echo $banner['title']; ?></span></h1>
                <h2 class="sub-title"><span><?php echo $banner['sub_title']; ?></span></h2>
                
            <div class="banner7-readmore">
              <a href="http://plazathemes.com/" title="Read more">Read more</a> 
            </div>
                </div>
          </div>
    <?php } else { ?>
    <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" />
      <div id="banner_text" class="nivo-caption">
            <div class="banner7-content hidden-xs ">
                <h1 class="title"><span><?php echo $banner['title']; ?></span></h1>
                <h2 class="sub-title"><span><?php echo $s['sub_title']; ?></span></h2>
                
            <div class="banner7-readmore">
              <a href="http://plazathemes.com/" title="Read more">Read more</a> 
            </div>
                </div>
          </div>
    </div>

    <?php } ?>
  </div>
  
  <?php } ?>
</div>
<script type="text/javascript"><!--
$('#slideshow<?php echo $module; ?>').owlCarousel({
	items: 6,
	autoPlay: 3000,
	singleItem: true,
	navigation: true,
	navigationText: ['<i class="fa fa-chevron-left fa-5x"></i>', '<i class="fa fa-chevron-right fa-5x"></i>'],
	pagination: true
});
--></script>