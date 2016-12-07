<div id="carousel<?php echo $module; ?>" class="owl-carousel">
  <?php foreach ($banners as $banner) { ?>
  <div class="item text-center">
    <?php if ($banner['link']) { ?>
    <a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" /></a>
    <?php } else { ?>
    <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" />
    <?php } ?>
  </div>
  <?php } ?>
</div>
<script type="text/javascript">
$('#carousel<?php echo $module; ?>').owlCarousel({
	autoPlay : false,
	items : 4,
	itemsDesktop : [1199,4],
	itemsDesktopSmall : [980,3],
	itemsTablet: [768,2],
	itemsMobile : [479,1],
	slideSpeed : 4000,
	paginationSpeed : 4000,
	rewindSpeed : 4000,
	navigation : false,
	stopOnHover : true,
	pagination : false,
	scrollPerPage:true,
});
</script>