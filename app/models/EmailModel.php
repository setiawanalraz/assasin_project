<?php

class EmailModel {
	
	private $table = 'user';
	private $db;

	public function __construct()
	{
		$this->db = new Database;
	}

	public function checkEmail($data)
    {
        $query = "SELECT * FROM user WHERE email = :email";
        $this->db->query($query);
        $this->db->bind('email', $data['email']);
        //$this->db->execute();
        //return $this->db->rowCount();
        $data =  $this->db->single();
        $_SESSION['userId'] = $data['userId'];
        return $data;
    }

    public function updateResetPassword($data)
    {
        $query = "UPDATE user SET password=:password WHERE userId=:userId";
        $this->db->query($query);
        $this->db->bind('userId', $data['userId']);
        $this->db->bind('password', md5($data['password']));
        $this->db->execute();

        return $this->db->rowCount();
    }

}