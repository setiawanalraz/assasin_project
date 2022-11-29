<?php

class User extends Controller {
	// public function __construct()
	// {	
	// 	if($_SESSION['session_login'] != 'sudah_login') {
	// 		Flasher::setMessage('Login','Tidak ditemukan.','danger');
	// 		header('location: '. base_url . '/login');
	// 		exit;
	// 	}
	// }
	public function index()
	{
		$data['title'] = 'Data User';
		$data['user'] = $this->model('UserModel')->tampil();
		$this->view('templates/header', $data);
		$this->view('templates/sidebar', $data);
		$this->view('user/index', $data);
		$this->view('templates/footer');
	}
	public function cari()
	{
		$data['title'] = 'Data User';
		$data['user'] = $this->model('UserModel')->cariUser();
		$data['key'] = $_POST['key'];
		$this->view('templates/header', $data);
		$this->view('templates/sidebar', $data);
		$this->view('user/index', $data);
		$this->view('templates/footer');
	}

	public function formUbah($id)
    {
        $data['title'] = 'Ubah Data User';
        $data['ubahData'] = $this->model('UserModel')->ubah($id);

        $this->view('templates/header', $data);
        $this->view('templates/sidebar', $data);
        $this->view('user/edit', $data);
        $this->view('templates/footer');
    }

	public function tambah(){
		$data['title'] = 'Tambah User';		
		$this->view('templates/header', $data);
		$this->view('templates/sidebar', $data);
		$this->view('user/create', $data);
		$this->view('templates/footer');
	}

	public function simpanUser(){
		if(!empty($_POST['userid'] && $_POST['username'] && $_POST['password'] && $_POST['ulangi_password'])) 
		{
			if($_POST['password'] && $_POST['password'] == $_POST['ulangi_password']) {	
				$row = $this->model('UserModel')->cekUserid();
				if($row['userid'] == $_POST['userid']){
					Flasher::setMessage('Gagal','Userid yang anda masukan sudah pernah digunakan!','danger');
					header('location: '. base_url . '/signup');
					exit;	
				} else {
					if( $this->model('UserModel')->tambahUser($_POST) > 0 ) {
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

	public function updateUser(){	
		if(empty($_POST['password'])) {
			if( $this->model('UserModel')->updateDataUser($_POST) > 0 ) {
			Flasher::setMessage('Berhasil','diupdate','success');
			header('location: '. base_url . '/user');
			exit;			
			}else{
				Flasher::setMessage('Gagal','diupdate','danger');
				header('location: '. base_url . '/user');
				exit;	
			}
		} else {
			if($_POST['password'] == $_POST['ulangi_password']) {
				if( $this->model('UserModel')->updateDataUser($_POST) > 0 ) {
				Flasher::setMessage('Berhasil','diupdate','success');
				header('location: '. base_url . '/user');
				exit;			
				}else{
					Flasher::setMessage('Gagal','diupdate','danger');
					header('location: '. base_url . '/user');
					exit;	
				}
			} else {
				Flasher::setMessage('Gagal','password tidak sama.','danger');
				header('location: '. base_url . '/user/tambah');
				exit;	
			}
		}
	}

	public function hapus($id){
		if( $this->model('UserModel')->deleteUser($id) > 0 ) {
			Flasher::setMessage('Berhasil','dihapus','success');
			header('location: '. base_url . '/user');
			exit;			
		}else{
			Flasher::setMessage('Gagal','dihapus','danger');
			header('location: '. base_url . '/user');
			exit;	
		}
	}
}