<?php echo $header; ?>
<div class="container main">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <?php if ($success) { ?>
  <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?></div>
  <?php } ?>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <div class="page-title"><h1><?php echo $text_dashboard?></h1></div>
    <div class="panel panel-group" id="account-panel">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h2><a href="#panelone" data-parent="#account-panel" data-toggle="collapse"><?php echo $text_my_account; ?><i class="caret"></i></a></h2>
            </div>
            <div class="panel-body collapse in" id="panelone">
            <ul class="list-unstyled">
                <li><a href="<?php echo $edit; ?>"><?php echo $text_edit; ?></a></li>
                <li><a href="<?php echo $password; ?>"><?php echo $text_password; ?></a></li>
                <li><a href="<?php echo $address; ?>"><?php echo $text_address; ?></a></li>
                <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
              </ul>
            </div>
        </div>
        
        
        <div class="panel panel-default">
            <div class="panel-heading">
                <h2><a href="#paneltwo" data-parent="#account-panel" data-toggle="collapse"><?php echo $text_my_orders; ?><i class="caret"></i></a></h2>
            </div>
            <div class="panel-body collapse" id="paneltwo">
                <ul class="list-unstyled">
                    <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
                    <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
                    <?php if ($reward) { ?>
                    <li><a href="<?php echo $reward; ?>"><?php echo $text_reward; ?></a></li>
                    <?php } ?>
                    <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
                    <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
                    <li><a href="<?php echo $recurring; ?>"><?php echo $text_recurring; ?></a></li>
                  </ul>
            </div>
        </div>
        
        
        <div class="panel panel-default">
            <div class="panel-heading">
                <h2><a href="#panelthree" data-parent="#account-panel" data-toggle="collapse"><?php echo $text_my_newsletter; ?><i class="caret"></i></a></h2>
            </div>
            <div class="panel-body collapse" id="panelthree">
            <ul class="list-unstyled">
                <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
              </ul>
            </div>
        </div>
        
    </div>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
<?php echo $footer; ?>
</div>
</body></html>
