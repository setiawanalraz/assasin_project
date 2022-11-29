<?php
header("Content-Type: application/json; charset=UTF-8");
$varjson = json_decode(file_get_contents("php://input"));
$messaging_product = $varjson->messaging_product;
$recipient_type = $varjson->recipient_type;
$to = $varjson->to;
$type = $varjson->type;

// $preview_url = $varjson->preview_url;
// $body = $varjson->body;
// $text = array(
//     $preview_url = $varjson->preview_url,
//     $body = $varjson->body
// );

// $text = (array) $varjson->text(
//     $preview_url = $preview_url,
//     $body = $body
// );

// $text = array($varjson->text);
$text = array($varjson->text);

$id = $this->model('HitModel')->generateWAMID();

$result = array();
$response = array();
$data = array();

//rm text
if (isset($messaging_product) && isset($recipient_type) && isset($to) && isset($type)) {
    http_response_code(200);

    //for insert to db
    $jobid = $this->model('HitModel')->generateGUID();
    $trxid = $this->model('HitModel')->generateGUID();

    $batchname = 'Test Upload';
    $MSISDN = $to;
    $message = $text[0]->body;

    $input = $to;
    $wa_id = $to;
    $messageid = $id;
    $responsestatus = 200;

    $datecreated = date("Y-m-d H:i:s");
    $dateupdated = date("Y-m-d H:i:s");

    $con = new mysqli('localhost', 'root', '', 'assasin_db');
    $sql = "INSERT INTO report (jobid, trxid, batchname, msisdn, message, input, wa_id, messageid, responsestatus, datecreated, dateupdated)
                VALUES ('$jobid', '$trxid', '$batchname', '$MSISDN', '$message', '$input', '$wa_id', '$messageid', '$responsestatus', '$datecreated', '$dateupdated')";

    $con->query($sql);
    //end

    $data['Response'] = array(
        'messaging_product' => $messaging_product,
        'contacts' => array(
            'input' => $to,
            'wa_id' => $to,
        ),
        'messages' => array(
            'id' => $id,
        ),
    );
    $response = $data;
    echo json_encode($response);
} else {
    http_response_code(400);
    echo json_encode(
        array(
            "status" => json_decode('{
                    "code": 400, 
                    "description": "Parameter Salah"
                }')
        )
    );
}
