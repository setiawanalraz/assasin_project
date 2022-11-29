<!-- Upload Section -->
<section class="upload">

    <form action="<?= base_url; ?>/home/importfile" method="POST" enctype="multipart/form-data">

        <div class="container border p-3 border-3 border-info rounded-4 mt-4">

            <div class="form-group mb-3 ms-4 me-4">
                <label for="batchname" class="form-label">Batchname</label>
                <input type="text" class="form-control form-control-lg border-info bg-transparent" id="batchname" name="batchname" autocomplete="off">
            </div>

            <div class="form-group mb-3 ms-4 me-4 col-2">
                <label for="type" class="form-label">File Type</label>
                <select name="filetype" class="form-select form-select-lg border-info bg-transparent" aria-label="Default select example">
                    <option selected></option>
                    <option value="xlsx">.xlsx</option>
                    <option value="csv">.csv</option>
                </select>
            </div>

            <!-- kinda works -->
            <div class="form-group ms-4 me-4">
                <label for="download" class="form-label">Download Template</a></label>
            </div>
            <!-- ajaib -->
            <div class="d-grid mb-3">
                <a href="<?= base_url; ?>/home/template" class="button-test mb-3 mx-4 text-center pt-1" download="../assets/files/Template_File.xlsx" style="text-decoration: none;">
                    Template File
                </a>
            </div>

            <div class="card bg-transparent text-center ms-4 me-4">
                <div class="icon mt-5 mb-3"><img src="../assets/img/Upload.png" alt="" width="107.1"><br><br>
                    <div id="drop_zone">
                        <p>Drag And Drop Your File Here</p>
                        <p>Or</p>
                        <button type="button" id="btn_file_pick" class="button-upload" name="import_file">Browse File</button>
                        <p id="file_info"></p>
                        <input type="file" id="selectfile" name="import_file" hidden>
                        <p id="message_info"></p>
                        <!-- <input type="file" id="selectfile" name="import_file" required>
                        <p id="message_info"></p> -->
                    </div>
                </div>
            </div>

            <div class="d-grid gap-2">
                <button type="submit" id="btn_upload" name="save_excel_data" class="button-submit mx-4 my-3">Submit</button>
            </div>

    </form>

    </br>
    </br>
    </br>

    <!-- export file here -->
    <!-- REVISI -->
    <div class="col-md-6">
        <form action="<?= base_url; ?>/export/exportfile" method="POST">
            <div class="form-group my-4 mx-4">
                <label for="Export" class="form-label">Export</label>
            </div>
            <div class="row">
                <div class="col-4 mt-2 mb-5 mx-4">
                    <select name="export_file_type" class="form-select form-select-lg border-info bg-transparent" aria-label="Default select example">
                        <option selected></option>
                        <option value="xlsx">XLSX</option>
                        <option value="xls">XLS</option>
                        <option value="csv">CSV</option>
                    </select>
                </div>
                <div class="col-auto mt-2">
                    <button type="submit" name="export_excel_btn" class="button-export">Export</button>
                </div>
            </div>
        </form>
    </div>

    <div class="table-responsive border border-info border-1 rounded">
        <table class="table table-hover">
            <thead class="thead">
                <tr>
                    <th>No.</th>
                    <th>MSISDN</th>
                    <th>Message</th>
                    <th>Messaging_Product</th>
                    <th>Recipient_Type</th>
                    <th>Type</th>
                    <th>Date Created</th>
                </tr>
            </thead>
            <tbody class="tbody">
                <!-- End REVISI -->
                <?php
                $con = mysqli_connect('localhost', 'root', '', 'assasin_db');
                $query = "SELECT * FROM content ORDER BY dateUpdated DESC LIMIT 10";
                $query_run = mysqli_query($con, $query);

                $num = 1;
                if (mysqli_num_rows($query_run) > 0) {
                    foreach ($query_run as $row) {
                ?>
                        <tr>
                            <td><?= $num++; ?></td>
                            <td><?= $row['MSISDN']; ?></td>
                            <td><?= $row['message']; ?></td>
                            <td><?= $row['Messaging_Product']; ?></td>
                            <td><?= $row['Recipient_Type']; ?></td>
                            <td><?= $row['Type']; ?></td>
                            <td><?= $row['dateCreated']; ?></td>
                        </tr>
                    <?php
                    }
                } else {
                    ?>
                    <tr>
                        <td colspan="8">No Record Found</td>
                    </tr>
                <?php
                }
                ?>
            </tbody>
        </table>
    </div>

    </div>

</section>


<script>
    var fileobj;
    $(document).ready(function() {
        $("#drop_zone").on("dragover", function(event) {
            event.preventDefault();
            event.stopPropagation();
            return false;
        });
        $("#drop_zone").on("drop", function(event) {
            event.preventDefault();
            event.stopPropagation();
            fileobj = event.originalEvent.dataTransfer.files[0];
            var fname = fileobj.name;
            var fsize = fileobj.size;
            if (fname.length > 0) {
                document.getElementById('file_info').innerHTML = "File name : " + fname + ' <br>File size : ' + bytesToSize(fsize);
            }
            document.getElementById('selectfile').files[0] = fileobj;
            document.getElementById('btn_upload').style.display = "inline";
        });
        $('#btn_file_pick').click(function() {
            /*normal file pick*/
            document.getElementById('selectfile').click();
            document.getElementById('selectfile').onchange = function() {
                fileobj = document.getElementById('selectfile').files[0];
                var fname = fileobj.name;
                var fsize = fileobj.size;
                if (fname.length > 0) {
                    document.getElementById('file_info').innerHTML = "File name : " + fname + ' <br>File size : ' + bytesToSize(fsize);
                }
                document.getElementById('btn_upload').style.display = "inline";
            };
        });
        $('#btn_upload').click(function() {
            if (fileobj == "" || fileobj == null) {
                alert("Please select a file");
                return false;
            } else {
                ajax_file_upload(fileobj);
            }
        });
    });

    function ajax_file_upload(file_obj) {
        if (file_obj != undefined) {
            var form_data = new FormData();
            form_data.append('upload_file', file_obj);
            $.ajax({
                type: 'POST',
                url: '<?= base_url; ?>home/importfile',
                contentType: false,
                processData: false,
                data: form_data,
                beforeSend: function(response) {
                    $('#message_info').html("Uploading your file, please wait...");
                },
                success: function(response) {
                    $('#message_info').html(response);
                    alert(response);
                    $('#selectfile').val('');
                }
            });
        }
    }

    function bytesToSize(bytes) {
        var sizes = ['Bytes', 'KB', 'MB', 'GB', 'TB'];
        if (bytes == 0) return '0 Byte';
        var i = parseInt(Math.floor(Math.log(bytes) / Math.log(1024)));
        return Math.round(bytes / Math.pow(1024, i), 2) + ' ' + sizes[i];
    }
</script>

<!-- End Section Upload -->