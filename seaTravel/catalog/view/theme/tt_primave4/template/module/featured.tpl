<div class="lastest-title"><h2><?php echo $heading_title; ?></h2></div>
<div class="footer-module">
  <?php foreach ($products as $product) { ?>
  <div class="">
    <div class="product-thumb transition">
      <div class="image">
        <a href="<?php echo $product['href']; ?>">
           <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" />
        </a>
     </div>
      <div class="caption">
        <h2 class="product-name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h2>
        <!--<p class="des-product"><?php echo $product['description']; ?></p>-->
        <?php if ($product['rating']) { ?>
        <!--<div class="ratings">
              <div class="rating-box">
                  <?php for ($i = 0; $i <= 5; $i++) { ?>
                      <?php if ($product['rating'] == $i) {
                          $class_r= "rating".$i;
                          echo '<div class="'.$class_r.'">rating</div>';
                      } 
                  }  ?>
              </div>
          </div>-->
        <?php } ?>
        <?php if ($product['price']) { ?>
        <div class="price-box">
              <?php if (!$product['special']) { ?>
                  <span class="price"><?php echo $product['price']; ?></span>
              <?php } else { ?>
                  <p class="old-price"><span class="price"><?php echo $product['price']; ?></span></p>
                  <p class="special-price"><span class="price"><?php echo $product['special']; ?></span></p>
              <?php } ?>
          </div>
        <?php } ?>
      </div>
      <div class="button-group">
        <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span></button>
        <button type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
        <button type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button>
      </div>
    </div>
  </div>
  <?php } ?>
</div>
