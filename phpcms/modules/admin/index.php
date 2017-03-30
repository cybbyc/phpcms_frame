<?php
defined('IN_PHPCMS') or exit('No permission resources.');
pc_base::load_app_class('admin', 'admin', 0);

class index extends admin {
	
	private $db, $messagequeue_db;
	/**
	 * 析构函数
	 */
	public function __construct() {	
		parent::__construct();
	}
	
	public function init() {
		$userinfo = $this->get_userinfo();		
		include $this->admin_tpl('index');
	}

	public function right() {
		
		include $this->admin_tpl('right');
	}
}
?>