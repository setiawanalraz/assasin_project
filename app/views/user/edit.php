  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Halaman User</h1>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-sm-12">
          <?php
            Flasher::Message();
          ?>
        </div>
      </div>
<div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title"><?= $data['title']; ?></h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form role="form" action="<?= base_url; ?>/user/simpanuser" method="POST" enctype="multipart/form-data">
              <?php foreach($data['ubahData'] as $ubah): ?>
                <div class="card-body">
                  <div class="form-group">
                    <label >Username</label>
                    <input type="text" class="form-control" value="<?= $ubah['userName']?>" name="username">
                  </div>
                  <div class="form-group">
                    <label >Password</label>
                    <input type="password" class="form-control" value="<?= $ubah['password']?>" name="password">
                  </div>
                </div>
                <!-- /.card-body -->

                <div class="card-footer">
                  <button type="submit" class="btn btn-primary">Submit</button>
                </div>
                <?php endforeach; ?>
              </form>
            </div>


    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->