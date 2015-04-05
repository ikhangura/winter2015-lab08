<?php

/**
 * Our homepage. 
 * 
 * controllers/Welcome.php
 *
 * ------------------------------------------------------------------------
 */
class Auth extends Application {

    function __construct() {
        parent::__construct();
		$this->load->helper('url');
    }

    //-------------------------------------------------------------
    //  Homepage: show home-y stuff
    //-------------------------------------------------------------

    function index() {
        $this->data['pagebody'] = 'login';
        $this->render();
    }
	
	function login() {
		$key = $_POST['userid'];
		$user = $this->users->get($key);
		$password_correct = password_verify($_POST['password'], $user->password);
		
    
		if ($password_correct) {
			$this->session->set_userdata('userID',$key);
			$this->session->set_userdata('userName',$user->name);
			$this->session->set_userdata('userRole',$user->role);
		}
    
		redirect('/');
	}
	
	function logout() {
		$this->session->sess_destroy();
		redirect('/');
	}
}
