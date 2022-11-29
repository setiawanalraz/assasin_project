<?php

class Login extends Controller
{
	public function index()
	{
		$data['title'] = 'Halaman Login';
        // $this->view('templates/header', $data);
		$this->view('login/index', $data);
	}

	public function prosesLogin()
	{
		if ($row = $this->model('LoginModel')->checkLogin($_POST) > 0) {
			$_SESSION['userid'] = $row['userid'];
			$_SESSION['username'] = $row['username'];
			$_SESSION['session_login'] = 'sudah_login';
			//$this->model('LoginModel')->isLoggedIn($_SESSION['session_login']);
			header('location: ' . base_url . '/home');
		} else {
			Flasher::setMessage('Username / Password', 'salah.', 'danger');
			header('location: ' . base_url . '/login');
			exit;
		}
	}

	// in case, jika tidak bisa logout menggunakan versi php > 7.4
	public function logout(){
		session_start();
		session_destroy();
		header('location: '. base_url . '/login');
	}
}
