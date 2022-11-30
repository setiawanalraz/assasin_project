<?php 

class ResetPassword extends Controller
{
    public function index()
    {
        $data['title'] = 'Reset Password';
        // $this->view('templates/header', $data);
        $this->view('reset_password/index', $data);
    }

    public function updateResetPassword()
    {

        if ($_POST['password'] == $_POST['ConfirmNewPasswd']) {
            if ($this->model('EmailModel')->updateResetPassword($_POST) > 0) {
                Flasher::setMessage('Berhasil', 'diupdate', 'success');
                header('location: ' . base_url . '/login');
                exit;
            } else {
                Flasher::setMessage('Gagal', 'diupdate', 'danger');
                header('location: ' . base_url . '/resetpassword');
                exit;
            }
        } else {
            Flasher::setMessage('Gagal', 'password tidak sama.', 'danger');
            header('location: ' . base_url . '/resetpassword');
            exit;
        }
    }
}
