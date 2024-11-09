<?php include '../config/koneksi.php'; ?>
<?php include 'modular/pagination1.php'; ?>
<?php session_start(); ?>
<?php 
$ID = $_SESSION['username'];
$sql = mysql_query("SELECT * FROM mahasiswa WHERE nim = '$ID'");
$data=mysql_fetch_array($sql);
?>


<section class="content-header">      
    <h1> Add Kosultasi </h1>
    <ol class="breadcrumb">
        <li><a href="homepage.php?p=dashboard"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Konsultasi</li>
    </ol>
</section>

<!-- Main content -->
<section class="content">
    <!-- quick email widget -->
    <div class="box box-info">            
        <div class="box-header">
            <div class="row-fluid">
                <div class="col-md-8">
                    <!-- form start -->
                    <form role="form" method="POST" enctype="multipart/form-data">
                        <div class="box-body">
                            <!-- form nim-->
                            <div class="form-group">
                                <label for="nim">NIM</label>
                                <input type="text" class="form-control" id="nim" placeholder="" value="<?php echo $_SESSION['nim'] ?>" readonly>
                            </div>
                            <!-- form nama-->
                            <div class="form-group">
                                <label for="nama">Nama Lengkap</label>
                                <input type="text" class="form-control" name="nama" id="nama" placeholder="" value="<?php echo $_SESSION['nama'] ?>" readonly>
                            </div>
                            <!-- form program studi-->
                            <div class="form-group">
                                <label>Program Studi</label>
                                <select class="form-control"  name="prodi" readonly>
                                    <?php
                                         $qsp = mysql_query("SELECT * FROM prodi");
                                         while ($s=mysql_fetch_array($qsp)) {
                                            if ($s[id_prodi]==$data[program_studi]){
                                        echo "<option value='$s[pnama]' selected>$s[pnama]</option>";
                                     }else{
                                        echo "<option value='$s[pnama]'>$s[pnama]</option>";
                                     }
                                }
                                    ?>
                                </select>
                            </div>
                            <!-- form dosbing-->
                            <div class="form-group">
                                <label>Dosen Pembimbing</label>
                                <?php
                                // $qsp = mysql_query("SELECT * FROM dosen");
                                //          $hasil=mysql_fetch_array($qsp);
                                //          print_r($hasil);
                                ?>

                                <select class="form-control" name="dosbing">
                                <?php
                                         $qsp = mysql_query("SELECT * FROM dosen");
                                         while ($s=mysql_fetch_array($qsp)) {
                                    
                                        echo "<option value='$s[nidn]'>$s[nama_lengkap]</option>";
                                        
                                    }
                                ?>
                                    <!-- <option selected>Pilih Dosen Pembimbing</option>
                                    <option value="nidn">Nama Dosen</option> -->
                                </select>
                            </div>
                            <!-- form due date-->
                            <div class="form-group">
                            <div class='form-group form-datepicker header-group-0 ' id='form-group-due_date'style="">
                                <label for="tanggal">Due Date
                                    <span class='text-danger' title='This field is required'>*</span>
                                </label>
                                <div class="input-group">
                                    <span class="input-group-addon open-datetimepicker"><a><i class='fa fa-calendar '></i></a></span>
                                        <input type='text' title="Due Date"
                                        required    class='form-control notfocus datepicker' name="due_date" id="due_date"
                                        value=''/>
                                </div>
                                <div class="text-danger"></div>
                                <p class='help-block'></p>
                            </div>
                            </div>
                            <!-- form judul laporan-->
                            <div class="form-group">
                                <label>Aktivitas</label>
                                <textarea class="form-control" name="aktivitas" rows="3" placeholder="Isi judul Bab yang Anda ajukan" required></textarea>
                                <p class="help-block">*misal "Bab I Pendahuluan"</p>
                            </div>
                            <!-- form jenis laporan-->
                            <div class="form-group">
                                <label>Jenis Laporan</label>
                                <select class="form-control" name="laporan" required>
                                    <option selected>Pilih Laporan</option>
                                    <option value="kp">Kerja Praktek</option>
                                    <option value="skripsi">Skripsi</option>
                                </select>
                            </div>
                            <!-- form file laporan-->
                            <div class="form-group">
                                <label for="exampleInputFile">File Laporan</label>
                                <input type="file" id="exampleInputFile" name="fupload" required>
                                <p class="help-block">format laporan : nim_namalaporan.pdf</p>
                            </div>
                        </div>
                        <!-- /.box-body -->
                        <div class="box-footer">
                            <button type="submit" class="btn btn-primary" name="simpan">Simpan</button>
                        </div>
                    </form>
                    <?php
                        $nama = trim ($_POST['nama']);
                        $dosen = trim ($_POST['dosbing']);
                        $aktivitas = trim ($_POST['aktivitas']);
                        $tgl_input = date ('y-m-d');
                        // $tgl_input = trim ($_POST['due_date']);
                        $prodi = trim ($_POST['prodi']);
                        $jenis_laporan= ucwords($_POST['laporan']);
                        $lokasi_file    = $_FILES['fupload']['tmp_name'];
                        $nama_file      = $_FILES['fupload']['name'];
                        move_uploaded_file($lokasi_file,"file/$nama_file");
                        $status = "New";
   
                        if (isset($_POST['simpan'])) {

                        $q = mysql_query("INSERT INTO konsultasi (nim,nama,program_studi,dosen,tgl_input,aktivitas,jenis_laporan,file,status) VALUES ('$ID','$nama','$prodi','$dosen','$tgl_input','$aktivitas','$jenis_laporan','$nama_file','$status')");
                            if ($q){
                                echo "<script language='javascript'>alert('Judul Berhasil Diajukan');document.location='homepage.php?p=bimbingan_skripsi';</script>";
                            } else {
                                echo "<script language='javascript'>alert('Judul Gagal Diajukan');document.location='homepage.php?p=bimbingan_skripsi';</script>";
                            }
                        }
                    ?>
                </div>
            </div>
        </div>
    </div>
<!-- /.row (main row) -->
</section>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="../bower_components/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
<script>
$('.datepicker').datepicker();
$('.datepicker').on('changeDate', function(ev){
    $(this).datepicker('hide');
});

</script>    