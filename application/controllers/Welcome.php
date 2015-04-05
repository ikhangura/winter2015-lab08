<?php

/**
 * Our homepage. 
 * 
 * controllers/Welcome.php
 *
 * ------------------------------------------------------------------------
 */
class Welcome extends Application {

    function __construct() {
        parent::__construct();
    }

    //-------------------------------------------------------------
    //  Homepage: show home-y stuff
    //-------------------------------------------------------------

    function index() {
        $this->data['pagebody'] = 'homepage';
		$this->data['mouse'] = password_hash('mouse', PASSWORD_DEFAULT);
		$this->data['duck'] = password_hash('duck', PASSWORD_DEFAULT);
        $this->render();
    }

}
