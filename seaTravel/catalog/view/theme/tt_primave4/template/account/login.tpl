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
  <?php if ($error_warning) { ?>
  <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?></div>
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
      <div class="login-page">
        <div class="page-title">
            <h1><?php echo $heading_title; ?></h1>
        </div>
        <div class="col-sm-12 col-lg-6 col-md-6 new-customer">
          <div class="left-login">
            <h2><?php echo $text_new_customer; ?></h2>
            <p><?php echo $text_register_account; ?></p>
            
          </div>
          <div class="bottom-form">
            <button class="button" onclick="window.location='<?php echo $register; ?>'"><span><?php echo $text_create_an_account; ?></span></button>
          </div>
        </div>
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
        <div class="col-sm-12 col-lg-6 col-md-6 returning-customer">
          <div class="right-login">
            <h2><?php echo $text_returning_customer; ?></h2>
            <p><?php echo $text_i_am_returning_customer; ?></p>
            
              <div class="form-group">
                <label class="control-label" for="input-email"><em>*</em><?php echo $entry_email; ?></label>
                <input type="text" name="email" value="<?php echo $email; ?>" placeholder="<?php echo $entry_email; ?>" id="input-email" class="form-control" />
              </div>
              <div class="form-group">
                <label class="control-label" for="input-password"><em>*</em><?php echo $entry_password; ?></label>
                <input type="password" name="password" value="<?php echo $password; ?>" placeholder="<?php echo $entry_password; ?>" id="input-password" class="form-control" />
                
              </div>
              
              <?php if ($redirect) { ?>
              <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
              <?php } ?>
            
          </div>
          <div class="bottom-form">
                  <a href="<?php echo $forgotten; ?>" class="forgotten-pw"><?php echo $text_forgotten; ?></a>
                  <button class="button" type="submit" value="<?php echo $button_login; ?>" ><span>Login</span></button>
              </div>
        </div>
        </form>
      </div>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
<?php echo $footer; ?>
</div>
</body></html>