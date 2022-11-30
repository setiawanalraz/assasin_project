<?php

class ConHitApi extends Controller
{
    public function index()
    {
        $this->view("api/index");
    }

    public function show_json_data()
    {
        header("Content-Type: application/json");
        $method = $_SERVER['REQUEST_METHOD'];
        $result = array();
        $response = array();
        $data = array();

        if ($method == 'GET') {
            $con = mysqli_connect('localhost', 'root', '', 'assasin_db');
            // $query = "SELECT * FROM report, content ORDER BY report.dateUpdated DESC";
            $query = "SELECT * FROM report";
            $result = mysqli_query($con, $query);

            while ($row = mysqli_fetch_array($result)) {
                $data[] = array(
                    // 'messaging_product' => $row['Messaging_Product'],
                    'messaging_product' => 'whatsapp',
                    'contacts' => array(
                        'input' => $row['input'],
                        'wa_id' => $row['WA_ID'],
                    ),
                    'messages' => array(
                        'id' => $row['messageId'],
                    ),
                );
            }
            $response['Response'] = $data;
        }

        echo json_encode($response);
    }

    public function request()
    {
        header("Content-Type: application/json; charset=UTF-8");
        $varjson = json_decode(file_get_contents("php://input"));
        $messaging_product = $varjson->messaging_product;
        $recipient_type = $varjson->recipient_type;
        $to = $varjson->to;
        $type = $varjson->type;
        $text = array($varjson->text);

        $id = $this->model('HitModel')->generateWAMID();

        $result = array();
        $response = array();
        $data = array();
        
        $postdata = http_build_query(
            array(
                'messaging_product' => $varjson->$messaging_product,
                'recipient_type' => $varjson->$recipient_type,
                'to' => $varjson->$to,
                'type' => $varjson->$type,
                'text' => array(
                    'preview_url' => $varjson->$text[0],
                    'body' => $varjson->$text[1]
                )
            )
        );
        $opts = array('http' =>
        array(
            'method' => 'POST',
            'header' => 'Content-type: application/json',
            'content' => $postdata
        ));

        $this->view("api/test", $data);

        $context = stream_context_create($opts);
        $response = file_get_contents('http://localhost/assasin_project/public/conhitapi/request', false, $context);
        echo $response;
        die;
    }
}
