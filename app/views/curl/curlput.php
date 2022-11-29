<?php 

$url = "https://reqres.in/api/users/2";

$data_array = array(
    'name' => 'John Doe',
    'job' => 'Lawyer'
);

$data = http_build_query($data_array);

$header = array(
    'Authorization: qwerty'
);

$ch = curl_init();

curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_CUSTOMREQUEST, 'PUT');
curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
curl_setopt($ch, CURLOPT_HEADER, $header);

$response = curl_exec($ch);
if ($e = curl_error($ch)) {
    echo $e;
} else {
    $decoded = json_decode($response, true);
    var_dump($response);
    var_dump($decoded);
    $encoded = json_encode($decoded);
    var_dump($encoded);
}
curl_close($ch);
