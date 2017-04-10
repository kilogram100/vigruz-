<?php echo $header; ?>
<div class="container">
	<ul class="breadcrumb">
    	<?php foreach ($breadcrumbs as $breadcrumb) { ?>
    	<li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    	<?php } ?>
	</ul><!--хлебные крошки, конец-->
	<div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-7'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>

        <h1><small><?php echo $heading_title; ?> компании</small></h1>
        <table class="table news">
	    <?php foreach ($all_news as $news) { ?>
			<tr>
				<td style="vertical-align:middle" class="text-center"><a href="<?php echo $news['view']; ?>"><img src="<?php echo $news['image']; ?>"width="150px" height="100px" /></a></td>
		  		<td>
		   			<p class="text-right text-danger"><small><?php echo $news['date_added']; ?></small></p>
		   			<a href="<?php echo $news['view']; ?>"><ins><?php echo $news['title']; ?></ins></a><br>
		   			<p><small><?php echo $news['description']; ?></small></p><br>
		   		</td>
		 	</tr>
		<?php } ?>
		</table>
	<div class="row">
    	<div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
        <div class="col-sm-6 text-right"><?php echo $results; ?></div>
    </div>

	<?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?> 