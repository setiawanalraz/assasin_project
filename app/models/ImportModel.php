<?php
class ImportModel
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

    // validating msisdn
    public function validating($msisdn)
    {
        if (is_numeric($msisdn) && strlen($msisdn) >= 12 && strlen($msisdn) <= 14) {
            $status = "valid";
        } else {
            $status = "invalid";
        }

        return $status;
    }
}
