<?
class CustomDeletePreview extends DeletePreview {

	// to be compatible with Editor::check_constraints($sub_meta_tables = NULL) 
	function check_constraints($sub_meta_tables = NULL) {

		return true;
	}
}

?>