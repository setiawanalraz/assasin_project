<?php

class Signup extends Controller {
	public function index()
	{
		$data['title'] = 'Halaman Sign Up';
		// $this->view('signup/signup', $data);
		$this->view('signup/index', $data);
	}

	public function simpanUser(){
		if(!empty($_POST['firstName'] && $_POST['lastName'] && $_POST['username'] && $_POST['email'] && $_POST['password'] && $_POST['ulangi_password'])) 
		{
			if($_POST['password'] && $_POST['password'] == $_POST['ulangi_password']) {	
				$row = $this->model('SignupModel')->checkUserName();
				if($row['username'] == $_POST['username']){
					Flasher::setMessage('Gagal','Username yang anda masukan sudah pernah digunakan!','danger');
					header('location: '. base_url . '/signup');
					exit;	
				} else {
					if( $this->model('SignupModel')->tambahUser($_POST) > 0 ) {
						Flasher::setMessage('Sign Up Berhasil','silahkan login','success');
						header('location: '. base_url . '/login');
						exit;			
					} else {
						Flasher::setMessage('Gagal','ditambahkan','danger');
						header('location: '. base_url . '/signup');
						exit;	
					}
				}
			} else {
				Flasher::setMessage('Gagal','password tidak sama.','danger');
				header('location: '. base_url . '/signup');
				exit;	
			}
		}
		else {
			Flasher::setMessage('Sign Up Gagal','seluruh field harus diisi','danger');
			header('location: '. base_url . '/signup');
			exit;	
		}
		
	}
}