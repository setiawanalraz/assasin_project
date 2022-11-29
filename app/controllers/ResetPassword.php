<?php 

class ResetPassword extends Controller
{
    public function index()
    {
        $data['title'] = 'Reset Password';
        // $this->view('templates/header', $data);
        $this->view('reset_password/index', $data);
    }
}
