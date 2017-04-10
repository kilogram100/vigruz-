<?php echo $header; ?>
<div class="container">
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
      <h2><?php echo $text_my_account; ?></h2>
    <div class="content">
      <div class="account_ul panel-body">
      <div class="account_li2"><img class="account_img" src="catalog/view/theme/default/image/account/edit.png" alt="<?php echo $text_edit; ?>"><br /><a href="<?php echo $edit; ?>"><?php echo $text_edit; ?></a></div>
      <div class="account_li2"><img class="account_img" src="catalog/view/theme/default/image/account/password.png" alt="<?php echo $text_password; ?>"><br /><a href="<?php echo $password; ?>"><?php echo $text_password; ?></a></div>
      <div class="account_li2"><img class="account_img" src="catalog/view/theme/default/image/account/delivery.png" alt="<?php echo $text_address; ?>"><br /><a href="<?php echo $address; ?>"><?php echo $text_address; ?></a></div>
      <div class="account_li2"><img class="account_img" src="catalog/view/theme/default/image/account/wishlist.png" alt="<?php echo $text_wishlist; ?>"><br /><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></div>
      <div class="clear"></div>
    </div>
  </div>
  <h2 class="account_li1"><?php echo $text_my_orders; ?></h2>
  <div class="content">
    <div class="account_ul panel-body">
      <div class="account_li2"><img class="account_img" src="catalog/view/theme/default/image/account/orders.png" alt="Order History"><br /><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></div>
      <div class="account_li2"><img class="account_img" src="catalog/view/theme/default/image/account/download.png" alt="<?php echo $text_download; ?>"><br /><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></div>
      <?php if ($reward) { ?>
      <div class="account_li2"><img class="account_img" src="catalog/view/theme/default/image/account/reward.png" alt="<?php echo $text_reward; ?>"><br /><a href="<?php echo $reward; ?>"><?php echo $text_reward; ?></a></div>
      <?php } ?>
      <div class="account_li2"><img class="account_img" src="catalog/view/theme/default/image/account/return.png" alt="<?php echo $text_return; ?>"><br /><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></div>
      <div class="account_li2"><img class="account_img" src="catalog/view/theme/default/image/account/trans.png" alt="<?php echo $text_transaction; ?>"><br /><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></div>
      <div class="account_li2"><img class="account_img" src="catalog/view/theme/default/image/account/recurring.png" alt="<?php echo $text_recurring; ?>"><br /><a href="<?php echo $recurring; ?>"><?php echo $text_recurring; ?></a></div>
      <div class="clear"></div>
    </div>      
  </div>
  <h2><?php echo $text_my_newsletter; ?></h2>
  <div class="content">
    <div class="account_ul panel-body">
      <div class="account_li2"><img class="account_img" src="catalog/view/theme/default/image/account/newsletter.png" alt="<?php echo $text_my_newsletter; ?>"><br /><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></div>
      <div class="clear"></div>
    </div>
  </div>                
      <!--<h2><?php echo $text_my_account; ?></h2>
      <ul class="list-unstyled">
        <li><a href="<?php echo $edit; ?>"><img src="catalog/view/theme/default/image/account/edit.png"> <?php echo $text_edit; ?></a></li>
        <li><a href="<?php echo $password; ?>"><img src="catalog/view/theme/default/image/account/password.png"> <?php echo $text_password; ?></a></li>
        <li><a href="<?php echo $address; ?>"><img src="catalog/view/theme/default/image/account/delivery.png"> <?php echo $text_address; ?></a></li>
        <li><a href="<?php echo $wishlist; ?>"><img src="catalog/view/theme/default/image/account/wishlist.png"> <?php echo $text_wishlist; ?></a></li>
      </ul>
      <h2><?php echo $text_my_orders; ?></h2>
      <ul class="list-unstyled">
        <li><a href="<?php echo $order; ?>"><img src="catalog/view/theme/default/image/account/orders.png"> <?php echo $text_order; ?></a></li>
        <li><a href="<?php echo $download; ?>"><img src="catalog/view/theme/default/image/account/download.png"> <?php echo $text_download; ?></a></li>
        <?php if ($reward) { ?>
        <li><a href="<?php echo $reward; ?>"><img src="catalog/view/theme/default/image/account/reward.png"> <?php echo $text_reward; ?></a></li>
        <?php } ?>
        <li><a href="<?php echo $return; ?>"><img src="catalog/view/theme/default/image/account/return.png"> <?php echo $text_return; ?></a></li>
        <li><a href="<?php echo $transaction; ?>"><img src="catalog/view/theme/default/image/account/trans.png"> <?php echo $text_transaction; ?></a></li>
        <li><a href="<?php echo $recurring; ?>"> <?php echo $text_recurring; ?></a></li>
      </ul>
      <h2><?php echo $text_my_newsletter; ?></h2>
      <ul class="list-unstyled">
        <li><a href="<?php echo $newsletter; ?>"><img src="catalog/view/theme/default/image/account/newsletter.png"> <?php echo $text_newsletter; ?></a></li>
      </ul>-->
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>
