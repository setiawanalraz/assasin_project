<?php
class HitModel
{
    private $db;

    public function __construct()
    {
        $this->db = new Database;
    }

    // create GUID
    public function generateGUID()
    {
        if (function_exists('com_create_guid') === true) {
            return trim(com_create_guid(), '{}');
        }

        return sprintf('%04X%04X-%04X-%04X-%04X-%04X%04X%04X', mt_rand(0, 65535), mt_rand(0, 65535), mt_rand(0, 65535), mt_rand(16384, 20479), mt_rand(32768, 49151), mt_rand(0, 65535), mt_rand(0, 65535), mt_rand(0, 65535));
    }

    public function generateWAMID($len = 50)
    {
        $string = "";
        $chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789_";
        for ($i = 0; $i < $len; $i++)
            $string .= substr($chars, rand(0, strlen($chars)), 1);
        return "wamid." . $string;
    }
}
