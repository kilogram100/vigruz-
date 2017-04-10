<div class="list-group">
  <?php foreach ($categories as $category) { ?>
  <?php if ($category['category_id'] == $category_id) { ?>
  <a href="<?php echo $category['href']; ?>" class="list-group-item f_bold" ><span class="hed-cat"><?php echo $category['name']; ?></span></a>
  <?php if ($category['children']) { ?>
  <?php foreach ($category['children'] as $child) { ?>
  <?php if ($child['category_id'] == $child_id) { ?>
  <a href="<?php echo $child['href']; ?>" class="list-group-item active "><span class="activ-cat">&nbsp;&nbsp;&nbsp;- <?php echo $child['name']; ?> </span></a>
  <?php } else { ?>
  <a href="<?php echo $child['href']; ?>" class="list-group-item"><span class="sub-cat">&nbsp;&nbsp;&nbsp;- <?php echo $child['name']; ?></span></a>
  <?php } ?>
  <?php } ?>
  <?php } ?>
  <?php } else { ?>
  <a href="<?php echo $category['href']; ?>" class="list-group-item"><span class="top-cat"><b class="caret"></b> &nbsp;  <?php echo $category['name']; ?></span></a>
  <?php } ?>
  <?php } ?>
</div>