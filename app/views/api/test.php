<?php 

if (isset($messaging_product) && isset($recipient_type) && isset($to) && isset($type)) {
    http_response_code(200);

    //for insert to db
    $jobid = $this->model('HitModel')->generateGUID();
    $trxid = $this->model('HitModel')->generateGUID();

    $batchname = 'Test Upload';
    $MSISDN = $to;
    $message = $text[0];
    // $message = array($text.$body);

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
}
else {
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
