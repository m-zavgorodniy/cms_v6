<div class="index">
	<?  if (isset($_DATA['article']['items'])) { 
	        $article = current($_DATA['article']['items']); ?>
	        <?=$article['body']?>
	<?  } ?>
</div>