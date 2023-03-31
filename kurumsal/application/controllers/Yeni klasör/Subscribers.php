<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Subscribers extends CI_Controller {

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

        $subscribers    = $this->default_model->get_all("subscribers",array(),"id ASC");

        $admin= $this->default_model->get("admin",array("id"=>1));

        $settings= $this->default_model->get("settings",array("id"=>1));
        $viewData->settings = $settings;

        $viewData->admin   = $admin;
        $viewData->title = $settings->title;
        $viewData->subscribers   = $subscribers;
        $viewData->url = "subscribers";
        $this->load->view('subscribers',$viewData);
    }


	public function insert()
{

    $icon    = $this->input->post("icon");
    $mail    = $this->input->post("mail");


    /**verilerimizin inputlarda dolu yada boşluk kontrolunu yapıcağız.*/
    if(!$icon || !$mail )

        /**todo alert notification gelicek unutma.*/
    {
        $alert = array(
            'title'    => "Dikkat!",
            'subtitle' => "Lütfen form alanında boş stun bırakmayınız!",
            'type'     => "warning"
        );
        $this->session->set_flashdata("alert",$alert);
        redirect(base_url("subscribers"));
    }else{
        $insert = $this->default_model->insert("subscribers",array("icon"=>$icon,"mail"=>$mail,"status"=>1,"created_at"=>date("Y-m-d")));
        if($insert)
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
        redirect(base_url("subscribers"));
    }

}

    public function update($id)
    {
        $icon    = $this->input->post("icon");
        $mail    = $this->input->post("mail");


        /**verilerimizin inputlarda dolu yada boşluk kontrolunu yapıcağız.*/
        if(!$icon || !$mail)

            /**todo alert notification gelicek unutma.*/
        {
            $alert = array(
                'title'    => "Dikkat!",
                'subtitle' => "Lütfen form alanında boş stun bırakmayınız!",
                'type'     => "warning"
            );
            $this->session->set_flashdata("alert",$alert);
            redirect(base_url("subscribers"));
        }else{
            $update = $this->default_model->update("subscribers",array("id"=>$id),array("icon"=>$icon,"mail"=>$mail,"status"=>1,"created_at"=>date("Y-m-d")));
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
            redirect(base_url("subscribers"));
        }

    }

    public function delete($id)
    {

            $delete = $this->default_model->delete("subscribers",array("id"=>$id));
            if($delete)
            {
                $alert = array(
                    'title'    => "Tebrikler!",
                    'subtitle' => "Silme işlemi başarışı bir şekilde gerçekleşti!",
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
            redirect(base_url("subscribers"));
        }

    public function isactivesetter($id)
    {
        if($id)
        {
            $isActive = ($this->input->post("data") == "true") ? 1 : 0;
            $this->default_model->update("subscribers",array("id"=>$id),array("status"=>$isActive));
        }
    }

    public function ranksetter()
    {
        $data = $this->input->post("data");
        parse_str($data,$rank);
        $value = $rank["rank"];
        foreach ($value as $rank =>$id)
        {
            $this->default_model->update("subscribers",array("id"=>$id),array("rank"=>$rank));
        }
    }




}
