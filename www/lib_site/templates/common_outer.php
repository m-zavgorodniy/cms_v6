<!DOCTYPE html>
<html class="no-js" lang="<?=$_SITE['html_lang']?>">
<head>
	<meta charset="utf-8">
<?	// define any SEO_* constants in inner template ?>
	<title><?=$_SITE['seo_title']?$_SITE['seo_title']:(defined('SEO_PAGE_TITLE')?SEO_PAGE_TITLE . ' — ' . $_SITE['site_title']:$_SITE['page_title'])?></title>
<?	if (defined('SEO_PAGE_NOINDEX')) { ?>
	<meta name="robots" content="NOINDEX, NOFOLLOW">
<?	} else { ?>
	<meta name="robots" content="NOODP">
<?	} ?>
<?	if ($_SITE['seo_description']) { ?>
	<meta name="description" content="<?=$_SITE['seo_description']?>">
<?	} else if (defined('SEO_DESCRIPTION')) { ?>
	<meta name="description" content="<?=SEO_DESCRIPTION?>">
<?	}
	if ($_SITE['seo_keywords']) { ?>
	<meta name="keywords" content="<?=$_SITE['seo_keywords']?>">
<?	} else if (defined('SEO_KEYWORDS')) { ?>
	<meta name="keywords" content="<?=SEO_KEYWORDS?>">
<?	} ?>

	<link href="/css/styles.css" rel="stylesheet">
	<link href="/css/content.css" rel="stylesheet">
	<link href="/fonts/fontawesome/css/fontawesome-all.min.css" rel="stylesheet">

	<script src="/js/script.js"></script>
</head>
<body class="page-<?=$_SITE['section_type']?>">
    <header>
    	<nav>
	    	<ul class="menu">
	    		<li><a href="/"><i class="fas fa-home"></i></a>
		    <?	foreach ($_SITE['menu']['main'] as $section_id => $section) { ?>
		    		<li class="menu__item<?=isset($_SITE['crumbs'][$section_id])?' menu__item_current':''?>"><a href="<?=$section['url']?>"><?=$section['title']?></a></li>
		    <?	} ?>
		   	</ul>
		</nav>
    </header>
    <div class="body g-clearfix">
        <div class="body__inner">
            <?=$__CMS__INNER_TEMPLATE_CONTENTS?>
        </div>
        <?=out_aside()?>
    </div>
    <footer>
        page footer <?=$_SITE['settings']['copyright']?>
    </footer>
</body>
</html>
