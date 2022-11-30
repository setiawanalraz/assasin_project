<?php 

class ResetEmail extends Controller
{
    public function index()
    {
        $data['title'] = 'Reset Email';
        // $this->view('templates/header', $data);
        $this->view('reset_email/index', $data);
    }

    public function verificationEmail()
    {
        if ($row = $this->model('EmailModel')->checkEmail($_POST) > 0) {
            Flasher::setMessage('Email', 'ditemukan.', 'success');
            header('location: ' . base_url . '/resetpassword');
        } else {
            Flasher::setMessage('Email', 'tidak terdaftar.', 'danger');
            header('location: ' . base_url . '/resetemail');
            exit;
        }
    }
}
