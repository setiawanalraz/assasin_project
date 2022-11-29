<?php 

class ResetEmail extends Controller
{
    public function index()
    {
        $data['title'] = 'Reset Email';
        // $this->view('templates/header', $data);
        $this->view('reset_email/index', $data);
    }
}
