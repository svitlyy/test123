<?php

namespace Tools\CommonCore;

//i--- Base Systems Load and Relations ; inside_core ; torrison ; 01.05.2020 ; 1 ---/
use Tools\CommonCore\Commons as Commons;
use Tools\AuthSystem\AuthSystem as AuthSystem;
use Tools\TextsTranslate\TextsTranslate as TextsTranslate;
use Tools\Website\Website as Website;
use Tools\SEO\SEO as SEO;
use Tools\CommonCore\RenderView as RenderView;
use Tools\Security\Security as Security;
use Tools\CommonCore\Database as Database;
use Tools\CommonCore\Input as Input;
use Tools\CommonCore\Sessions as Sessions;
use Tools\CommonCore\Response as Response;
//use Tools\Mailing\Mailer as Mailer;


Class SmartWebsiteService {

    var $t; // Short variable for Texts Translate
    var $auth;
    var $website;
    var $seo;
    var $data;
    var $view;
    var $security;
    var $db;
    var $sessions;
    var $mailer;
    var $response;
    var $commons;
    var $input;


    public function __construct(){

        $this->commons = new Commons();

        $this->db = new Database();
        $this->db->init();

        $this->security = new Security();
        $this->security->init();
        $this->security->db =& $this->db;

        $this->input = new Input();
        $this->input->db = &$this->db;
        $this->input->security = &$this->security;
        $this->input->init();

        $this->website = new Website();
        $this->website->init();

       // $this->mailer =  new Mailer();
       // $this->mailer->init();

        $this->sessions = new Sessions();
        $this->sessions->db = &$this->db;
        $this->sessions->security = &$this->security;
        $this->sessions->init();

        $this->view = new RenderView();

        $this->t = new TextsTranslate();
        $this->t->db =& $this->db;
        $this->t->init();

        $this->auth = new AuthSystem();
        $this->auth->db = &$this->db;
        $this->auth->security = &$this->security;
        $this->auth->sessions = &$this->sessions;
        $this->auth->view = &$this->view;
      //  $this->auth->mailer = &$this->mailer;
        $this->auth->website = &$this->website;
        $this->auth->init();

        $this->response = new Response();
        $this->response->sessions = &$this->sessions;


        //i--- Define Common View Variable for Easy Access ; inside_core ; torrison ; 01.05.2020 ; 2 ---/
        $this->data['lang_link_prefix'] = &$GLOBALS['app']['translate']['uri_prefix'];
        $this->data['inside4_website'] = &$this->website;
        $this->data['inside4_auth'] = &$this->auth;
        $this->data['inside4_security'] = &$this->security;
        $this->data['t'] = &$this->t;
        $this->data['user'] = &$this->auth->user;
        $this->data['inside4_input'] = &$this->input;

        //i--- Define Global Object for Easy Access ; inside_core ; torrison ; 01.05.2020 ; 3 ---/
        $GLOBALS['Commons']['db'] = &$this->db;
        $GLOBALS['Commons']['user'] = &$this->auth->user;
        $GLOBALS['Commons']['security'] = &$this->security;
        $GLOBALS['Commons']['auth'] = &$this->auth;
        $GLOBALS['Commons']['input'] = &$this->input;
        $GLOBALS['Commons']['t'] = &$this->t;

        //i--- Add SEO data for Easy Access ; inside_core ; torrison ; 01.05.2020 ; 5 ---/
        $this->seo = new SEO();
        $this->data = $this->data + $this->seo->add_page_seo_data();

    }

}