<?
class CustomList extends CList {

	function CustomList($meta_table, $site_id) {
		
		parent::__construct($meta_table, $site_id);

		if ($_GET['filter'] == 'new')
			$this->set_sql_filter("user.password = '*'");

	}
}
?>