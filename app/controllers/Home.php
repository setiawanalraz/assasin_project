<?php

require '../vendor/autoload.php';

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;
use PhpOffice\PhpSpreadsheet\Writer\Xls;
use PhpOffice\PhpSpreadsheet\Writer\Csv;

class Home extends Controller
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
        $data['title'] = 'Main Page for Upload';
        $this->view('templates/header', $data);
        $this->view('templates/topbar');
        $this->view('home/index', $data);
        $this->view('templates/footer');
    }

    public function importfile()
    {
        $con = mysqli_connect('localhost', 'root', '', 'assasin_db');
        if (!empty($_POST['batchname'])) {
            if (isset($_POST['save_excel_data'])) {
                $batchname = $_POST['batchname'];
                $fileName = $_FILES['import_file']['name'];
                $file_ext = pathinfo($fileName, PATHINFO_EXTENSION);
                $allowed_ext = ['xls', 'csv', 'xlsx'];

                if (in_array($file_ext, $allowed_ext)) {
                    $inputFileNamePath = $_FILES['import_file']['tmp_name'];
                    $realFilePath = realpath($_FILES["file"]["tmp_name"]);
                    // $realFilePath = pathinfo($fileName)['extension'];
                    $spreadsheet = \PhpOffice\PhpSpreadsheet\IOFactory::load($inputFileNamePath);
                    $data = $spreadsheet->getActiveSheet()->toArray();

                    $jobid = $this->model('ImportModel')->generateGUID();
                    $batchname = $batchname;
                    $filename = $fileName;
                    $filepath = $realFilePath;

                    $count = "0";
                    foreach ($data as $row) {
                        if ($count > 0) {
                            $msisdn = $row['1'];
                            $message = $row['2'];

                            //new
                            $messaging_product = $row['3'];
                            $recipient_type = $row['4'];
                            $type = $row['5'];
                            $preview_url = $row['6'];

                            $status = $this->model('ImportModel')->validating($msisdn);

                            $jobid = $jobid;
                            $trxid = $this->model('ImportModel')->generateGUID();
                            $datecreated = date("Y-m-d H:i:s");
                            $dateupdated = date("Y-m-d H:i:s");

                            $query1 = "INSERT INTO upload (jobid,batchname,filename,filepath,datecreated,dateupdated) VALUES ('$jobid','$batchname','$filename','$filepath','$datecreated','$dateupdated')";
                            $result = mysqli_query($con, $query1);

                            $query2 = "INSERT INTO content (jobid,trxid,msisdn,message,messaging_product,recipient_type,type,preview_url,datecreated,dateupdated,status) VALUES ('$jobid','$trxid','$msisdn','$message','$messaging_product','$recipient_type','$type','$preview_url','$datecreated','$dateupdated', '$status')";
                            $result = mysqli_query($con, $query2);

                            $msg = true;
                        } else {
                            $count = "1";
                        }
                    }

                    if (isset($msg)) {
                        Flasher::setMessage('Import Data Berhasil', '', 'success');
                        header('location: ' . base_url . '/home');
                        exit;
                    }
                } else {
                    Flasher::setMessage('File Import Tidak Sesuai', '', 'danger');
                    header('location: ' . base_url . '/home');
                    exit;
                }
            }
        } else {
            Flasher::setMessage('Import Data Gagal,', 'Batch Name tidak boleh kosong', 'danger');
            header('location: ' . base_url . '/home');
            exit;
        }
    }

	public function exportfile()
    {
        $con = mysqli_connect('localhost', 'root', '', 'assasin_db');

        if (isset($_POST['export_excel_btn'])) {
            $file_ext_name = $_POST['export_file_type'];
            $fileName = "export-data";

            $query = "SELECT * FROM content ORDER BY dateUpdated DESC";
            $query_run = mysqli_query($con, $query);

            if (mysqli_num_rows($query_run) > 0) {
                $spreadsheet = new Spreadsheet();
                $sheet = $spreadsheet->getActiveSheet();
     
                $sheet->setCellValue('A1', 'JobID');
                $sheet->setCellValue('B1', 'TrxId');
                $sheet->setCellValue('C1', 'MSISDN');
                $sheet->setCellValue('D1', 'Message');
                $sheet->setCellValue('E1', 'Messaging_Product');
                $sheet->setCellValue('F1', 'Recipient_Type');
                $sheet->setCellValue('G1', 'Type');
                $sheet->setCellValue('H1', 'Preview_URL');
                $sheet->setCellValue('I1', 'DateCreated');
                $sheet->setCellValue('J1', 'DateUpdated');
                $sheet->setCellValue('K1', 'Status');

                $rowCount = 2;
                foreach ($query_run as $data) {
                    $sheet->setCellValue('A' . $rowCount, $data['jobId']);
                    $sheet->setCellValue('B' . $rowCount, $data['trxId']);
                    $sheet->setCellValue('C' . $rowCount, "'" . $data['MSISDN']);
                    $sheet->setCellValue('D' . $rowCount, $data['message']);
                    $sheet->setCellValue('E' . $rowCount, $data['Messaging_Product']);
                    $sheet->setCellValue('F' . $rowCount, $data['Recipient_Type']);
                    $sheet->setCellValue('G' . $rowCount, $data['Type']);
                    $sheet->setCellValue('H' . $rowCount, $data['Preview_URL']);
                    $sheet->setCellValue('I' . $rowCount, $data['dateCreated']);
                    $sheet->setCellValue('J' . $rowCount, $data['dateUpdated']);
                    $sheet->setCellValue('K' . $rowCount, $data['status']);
                    $rowCount++;
                }

                if ($file_ext_name == 'xlsx') {
                    $writer = new Xlsx($spreadsheet);
                    $final_filename = $fileName . '.xlsx';
                } elseif ($file_ext_name == 'xls') {
                    $writer = new Xls($spreadsheet);
                    $final_filename = $fileName . '.xls';
                } elseif ($file_ext_name == 'csv') {
                    $writer = new Csv($spreadsheet);
                    $final_filename = $fileName . '.csv';
                }

                // $writer->save($final_filename);
                header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
                header('Content-Disposition: attactment; filename="' . urlencode($final_filename) . '"');
                $writer->save('php://output');
            } else {
                $_SESSION['message'] = "No Record Found";
                header('Location: index.php');
                exit(0);
            }
        }
    }

    public function template()
    {
        $filename = '../assets/files/Template_File.xlsx';

        if (file_exists($filename)) {
            header('Content-Description: File Transfer');
            header('Content-Type: application/octet-stream');
            header('Content-Disposition: attachment; filename="' . basename($filename) . '"');
            header('Expires: 0');
            header('Cache-Control: must-revalidate');
            header('Pragma: public');
            header('Content-Length: ' . filesize($filename));
            readfile($filename);
            exit;
        }
    }
}
