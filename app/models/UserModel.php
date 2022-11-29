<?php

class UserModel
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
		$query = "INSERT INTO user (userid,username,password,datecreated,dateupdated) VALUES(:userid,:username,:password,:datecreated,:dateupdated)";
		$this->db->query($query);
		$this->db->bind('userid', $data['userid']);
		$this->db->bind('username', $data['username']);
		$this->db->bind('password', md5($data['password']));
		$this->db->bind('datecreated', date("Y-m-d H:i:s"));
		$this->db->bind('dateupdated', date("Y-m-d H:i:s"));
		$this->db->execute();

		return $this->db->rowCount();
	}

	// before -> $username
	public function cekUserid()
	{
		$userid = $_POST['userid'];
		$this->db->query("SELECT * FROM user WHERE userid = :userid");
		$this->db->bind('userid', $userid);
		return $this->db->single();
	}

	public function tampil()
    {
        $this->db->query("SELECT * FROM user ");
        return $this->db->resultSet();
    }

    public function ubah($id)
    {
        $this->db->query("SELECT * FROM user where id = :id");
		$this->db->bind('id', $id);
        return $this->db->resultSet();
    }
}
