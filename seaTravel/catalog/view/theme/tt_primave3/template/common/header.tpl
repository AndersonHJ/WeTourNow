<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<script src="catalog/view/javascript/jquery/jquery-ui.js" type="text/javascript"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="catalog/view/javascript/opentheme/owlcarousel/owl.carousel.js" type="text/javascript"></script>
<script src="catalog/view/javascript/opentheme/hozmegamenu/custommenu.js" type="text/javascript"></script>
<script src="catalog/view/javascript/opentheme/hozmegamenu/mobile_menu.js" type="text/javascript"></script>
<script src="catalog/view/javascript/opentheme/vermegamenu/mobile_menu.js" type="text/javascript"></script>
<script src="catalog/view/javascript/opentheme/opcajaxlogin/opcajaxlogin.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
<link href="catalog/view/theme/tt_primave3/stylesheet/stylesheet.css" rel="stylesheet" />
<link href="catalog/view/theme/tt_primave3/stylesheet/animate.css" rel="stylesheet" />
<link href="catalog/view/theme/tt_primave3/stylesheet/opentheme/hozmegamenu/css/custommenu.css" rel="stylesheet" />
<link href="catalog/view/theme/tt_primave3/stylesheet/opentheme/css/owl.carousel.css" rel="stylesheet" />
<script src="catalog/view/javascript/jquery/elevatezoom/jquery.elevatezoom.js" type="text/javascript"></script>
<script src="catalog/view/javascript/opentheme/ocslideshow/jquery.nivo.slider.js" type="text/javascript"></script>
<link href="catalog/view/javascript/jquery/css/jquery-ui.css" rel="stylesheet" media="screen" />
<link href="catalog/view/theme/tt_primave3/stylesheet/opentheme/oclayerednavigation/css/oclayerednavigation.css" rel="stylesheet">
<link href="catalog/view/theme/tt_primave3/stylesheet/opentheme/opcajaxlogin/css/opcajaxlogin.css" rel="stylesheet">
<script src="catalog/view/javascript/opentheme/oclayerednavigation/oclayerednavigation.js" type="text/javascript"></script>
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php echo $google_analytics; ?>
<script type="text/javascript">
    $(document).ready(function() {
        $("*").find("a[href='"+window.location.href+"']").each(function(){
            $(this).addClass("current");
    });
});
</script>
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp"></script>

</head>
<body class="<?php echo $class; ?>">
<header>
    <div class="top-header">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-sm-12 col-xs-12">
                    <div class="email infor">
                        <em class="fa fa-envelope">&nbsp;</em><?php echo $email;?>
                    </div>
                    <div class="phone infor"><em class="fa fa-phone">&nbsp;</em><?php echo $telephone;?></div>
                </div>
                <div class="col-md-6 col-sm-12 col-xs-12">
                    <div class="top-link" id="top-links">
                        <div class="top-currency"><?php echo $currency; ?></div>
                        <div class="top-language"><?php echo $language; ?></div>
                        <ul class="menu dropit">
                            <li class="dropit-trigger"><a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>" class="dropdown-toggle" data-toggle="dropdown"><span class="account-dropdown"><?php echo $text_account; ?></span> <span class="caret"></span></a>
                              <ul class="menu_link ul-account">
                                <?php if ($logged) { ?>
                                <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
                                <li><a href="<?php echo $wishlist; ?>" id="wishlist-total" title="<?php echo $text_wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
                                <li><a href="<?php echo $shopping_cart; ?>" title="<?php echo $text_shopping_cart; ?>"><?php echo $text_shopping_cart; ?></a></li>
                                <li><a href="<?php echo $checkout; ?>" title="<?php echo $text_checkout; ?>"><?php echo $text_checkout; ?></a></li>
                                <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
                                <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
                                <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
                                <li><a id="a-logout-link" href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
                                <?php } else { ?>
                                <li><a id="a-register-link" href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li>
                                <li><a id="a-login-link" href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>
                                <?php } ?>
                                
                              </ul>
                            </li>
                          </ul>
                        
                    </div>
                </div>
            </div><!-- row -->
        </div><!-- container -->
    </div><!-- top-header -->
    <div class="bottom-header">
        <div class="container">
            <div class="row">
                <div id="logo" class="col-xs-12 col-md-3 col-sm-12">
                  <?php if ($logo) { ?>
                  <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
                  <?php } else { ?>
                  <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
                  <?php } ?>
                </div>
                <div class="top-serch col-xs-12 col-md-9 col-sm-12">
                    <?php echo $cart; ?>
                    <?php echo $top_search;?>
                </div>
            </div>
        </div>
    </div><!-- bottom-header -->
    <div class="top-menu">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-md-3 col-sm-12"></div>
                <div class="col-xs-12 col-md-9 col-sm-12">
                    <?php echo $top_menu;?>
                </div>
            </div>
        </div>
    </div>
</header>

