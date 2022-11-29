<?php

class SignupModel
{

	private $table = 'user';
	private $db;

	public function __construct()
	{
		$this->db = new Database;
	}

	public function tambahUser($data)
	{
		date_default_timezone_set('Asia/Jakarta');
		$query = "INSERT INTO user (firstname,lastname,username,email,password,datecreated,dateupdated) VALUES(:firstname,:lastname,:username,:email,:password,:datecreated,:dateupdated)";
		$this->db->query($query);
		$this->db->bind('firstname', $data['firstName']);
		$this->db->bind('lastname', $data['lastName']);
		$this->db->bind('username', $data['username']);
		$this->db->bind('email', $data['email']);
		$this->db->bind('password', md5($data['password']));
		$this->db->bind('datecreated', date("Y-m-d H:i:s"));
		$this->db->bind('dateupdated', date("Y-m-d H:i:s"));
		$this->db->execute();

		return $this->db->rowCount();
	}

	public function checkUserName()
	{
		$username = $_POST['username'];
		$this->db->query("SELECT * FROM user WHERE username = :username");
		$this->db->bind('username', $username);
		return $this->db->single();
	}
}
