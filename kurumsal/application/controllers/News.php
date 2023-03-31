<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class News extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
    public function __construct()
    {
        parent:: __construct();
        $this->load->model("default_model");
    }

    public function index()
    {
        $viewData  = new stdClass();

        $settings = $this->default_model->get("settings",array("id"=>1));
        $viewData->settings             = $settings;


        $sliders = $this->default_model->get_all("sliders",array("status"=>1),"rank ASC");
        $viewData->sliders              = $sliders;

        $services = $this->default_model->get_all("services",array("status"=>1),"rank ASC");
        $viewData->services             = $services;

        $teams = $this->default_model->get_all("teams",array("status"=>1),"rank ASC");
        $viewData->teams                = $teams;

        $counters = $this->default_model->get_all("counters",array("status"=>1),"rank ASC");
        $viewData->counters             = $counters;

        $social = $this->default_model->get_all("social",array("status"=>1),"rank ASC");
        $viewData->social               = $social;

        $projects = $this->default_model->get_all("projects",array("status"=>1),"rank ASC");
        $viewData->projects             = $projects;

        $pages = $this->default_model->get_all("pages",array("status"=>1),"rank ASC");
        $viewData->pages                = $pages;

        $news = $this->default_model->get_all("news",array("status"=>1),"id DESC");
        $viewData->news                = $news;

        $viewData->url = "news";
        $this->load->view('news',$viewData);
    }

    public function detay($id)
    {
        $viewData  = new stdClass();

        $settings = $this->default_model->get("settings",array("id"=>1));
        $viewData->settings             = $settings;


        $sliders = $this->default_model->get_all("sliders",array("status"=>1),"rank ASC");
        $viewData->sliders              = $sliders;

        $services = $this->default_model->get_all("services",array("status"=>1),"rank ASC");
        $viewData->services             = $services;

        $teams = $this->default_model->get_all("teams",array("status"=>1),"rank ASC");
        $viewData->teams                = $teams;

        $counters = $this->default_model->get_all("counters",array("status"=>1),"rank ASC");
        $viewData->counters             = $counters;

        $social = $this->default_model->get_all("social",array("status"=>1),"rank ASC");
        $viewData->social               = $social;

        $projects = $this->default_model->get_all("projects",array("status"=>1),"rank ASC");
        $viewData->projects             = $projects;

        $pages = $this->default_model->get_all("pages",array("status"=>1),"rank ASC");
        $viewData->pages                = $pages;

        $news = $this->default_model->get("news",array("status"=>1,"id"=>$id));
        $viewData->news                = $news;



        $viewData->url = "news";
        $this->load->view('news-detay',$viewData);
    }









}
