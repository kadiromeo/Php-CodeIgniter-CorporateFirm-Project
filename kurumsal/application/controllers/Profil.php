<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Profil extends CI_Controller {

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

        $admin  = $this->default_model->get("admin",array("id"=>1));


        $admin= $this->default_model->get("admin",array("id"=>1));

        $settings= $this->default_model->get("settings",array("id"=>1));
        $viewData->settings = $settings;

        $viewData->title = $settings->title;
        $viewData->admin   = $admin;
        $viewData->admin   = $admin;
        $viewData->admin   = $admin;
	    $viewData->url = "";
		$this->load->view('profil',$viewData);
	}


    public function updateprofilimage($id)
    {
        if(!empty($_FILES["image"]["name"]))
        {
            $image_data = $this->default_model->get("admin",array("id"=>$id));

            unlink("uploads/".$image_data->image);

            $config["upload_path"]   = "uploads/admin/";
            $config["allowed_types"] = "gift|jpg|jpeg|png|svg";
            $config["file_name"]     = uniqid();

            $this->load->library("upload",$config);
            $upload = $this->upload->do_upload("image");

            if($upload)
            {
                $uploaded_filename = $this->upload->data("file_name");

                $config["image_library"]   = "gd2";
                $config["source_image"]    =  "uploads/admin/".$uploaded_filename;
                $config["create_thumb"]    = FALSE;
                $config["maintain_ratio"]  = TRUE;
                $config["quality"]         ="100%";
                $config["witdh"]  = 128;
                $config["height"] = 128;

                $this->load->library("image_lib",$config);
                $this->image_lib->resize();

                $update = $this->default_model->update("admin",array("id"=>$id),array("image"=>"admin/".$uploaded_filename));

                if($update)
                {
                    $alert = array(
                        'title'    => "Tebrikler!",
                        'subtitle' => "İşlem başarılı bir şekilde gerçekleşti!",
                        'type'     => "success"
                    );

                }else{
                    $alert = array(
                        'title'    => "Hata!",
                        'subtitle' => "İşlem başarısız oldu.Tekrar deneyin!",
                        'type'     => "error"
                    );
                }
                $this->session->set_flashdata("alert",$alert);
                redirect(base_url("profil"));

            }else{

                $alert = array(
                    'title'    => "Hata!",
                    'subtitle' => "Profil resimi yüklenirken işlem başarısız oldu.Tekrar deneyin!",
                    'type'     => "error"
                );

                $this->session->set_flashdata("alert",$alert);
                redirect(base_url("profil"));

            }


        }else{

            $alert = array(
                'title'    => "Hata!",
                'subtitle' => "Profil resim alanı boş olamaz.Tekrar deneyin!",
                'type'     => "error"
            );

            $this->session->set_flashdata("alert",$alert);
            redirect(base_url("profil"));

        }
    }

    public function updateprofilinfo($id)
    {
        $name       = $this->input->post("name");
        $mail       = $this->input->post("mail");



        /**verilerimizin inputlarda dolu yada boşluk kontrolunu yapıcağız.*/
        if(!$name || !$mail)

            /**todo alert notification gelicek unutma.*/
        {
            $alert = array(
                'title'    => "Dikkat!",
                'subtitle' => "Lütfen form alanında boş stun bırakmayınız!",
                'type'     => "warning"
            );
            $this->session->set_flashdata("alert",$alert);
            redirect(base_url("profil"));
        }else{
            $update = $this->default_model->update("admin",array("id"=>$id),array("name"=>$name,"mail"=>$mail));
            if($update)
            {
                $alert = array(
                    'title'    => "Tebrikler!",
                    'subtitle' => "İşlem başarılı bir şekilde gerçekleşti!",
                    'type'     => "success"
                );

            }else{
                $alert = array(
                    'title'    => "Hata!",
                    'subtitle' => "İşlem başarısız oldu.Tekrar deneyin!",
                    'type'     => "error"
                );
            }
            $this->session->set_flashdata("alert",$alert);
            redirect(base_url("profil"));
        }

    }

    public function updateprofilpassword($id)
    {
        $password1       = $this->input->post("password1");
        $password2       = $this->input->post("password2");

        $this->load->library("form_validation");

        $this->form_validation->set_rules("password1","Şifre","required|trim|min_lenght[5]|max_length[12]");
        $this->form_validation->set_rules("password2","Şifre (Tekrar)","required|trim|matches[password2]|min_lenght[5]|max_length[12]");

        $this->form_validation->set_message(

            array(
                "required"   => "<b>{field}</b> alanı doldurulmalıdır",
                "matches"    => "Şifreler bir birleri ile uyuşmuyor!",
                "min_lenght" => "<b>{field}</b> <b>{param}</b> karakterden küçük olamaz!",
                "max_lenght" => "<b>{field}</b> <b>{param}</b> karakterden büyük olamaz!"

            ));

        $validate = $this->form_validation->run();

        if($validate){

            $update = $this->default_model->update("admin",array("id"=>$id),array("password"=>md5($password1),));
            if($update)
            {
                $alert = array(
                    'title'    => "Tebrikler!",
                    'subtitle' => "İşlem başarılı bir şekilde gerçekleşti!",
                    'type'     => "success"
                );

            }else{
                $alert = array(
                    'title'    => "Hata!",
                    'subtitle' => "İşlem başarısız oldu.Tekrar deneyin!",
                    'type'     => "error"
                );
            }
            $this->session->set_flashdata("alert",$alert);
            redirect(base_url("profil"));
        }else{

            $viewData  = new stdClass();

            $admin  = $this->default_model->get("admin",array("id"=>1));



            $viewData->admin   = $admin;
            $viewData->admin   = $admin;
            $viewData->url = "";
            $viewData->form_error = true;
            $this->load->view('profil',$viewData);

        }

    }



}
