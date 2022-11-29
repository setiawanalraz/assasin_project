<?php

class Curl extends Controller
{
    public function __construct()
    {
        if ($_SESSION['session_login'] != 'sudah_login') {
            Flasher::setMessage('Login', 'Tidak ditemukan.', 'danger');
            header('location: ' . base_url . '/login');
            exit;
        }
    }

    public function index()
    {
        $this->view('curl/curlget');
    }

    public function get()
    {
        $this->view('curl/curlget');
    }

    public function post()
    {
        $this->view('curl/curlpost');
    }

    public function put()
    {
        $this->view('curl/curlput');
    }

    public function savefile()
    {
        $this->view('curl/curlsavefile');
    }
}
