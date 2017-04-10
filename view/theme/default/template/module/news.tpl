<div class="panel panel-default">
  	<div class="panel-heading"><strong><a href="/index.php?route=information/news">&nbsp;&nbsp;&nbsp;<?php echo $heading_title; ?></a></strong></div>
  	<div class="panel-body">
  	<?php foreach ($all_news as $news) { ?>
	<div class="news">
		<div class="col-lg-5" style="padding-right: 0px; padding-left: 0px; margin-right:-25px;">
		<a href="<?php echo $news['view']; ?>">
	    <img src="\image\<?php echo $news['image'];?>" style="width:70%; padding: 7px 0 7px 0;"/></a></div>
	    <div class="col-lg-7" style="padding-right: 0px; padding-left: 0px;">
		<span style="float:right; color: #888; font-size: 10px;"><?php echo $news['date_added']; ?></span></br>
	    <a href="<?php echo $news['view']; ?>"><?php echo $news['title']; ?></a></div>
	 <!-- <?php echo $news['description']; ?>-->
	</div><hr style="margin: 0px;">
  	<?php } ?>
  	</div>
</div>
