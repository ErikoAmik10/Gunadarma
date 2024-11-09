<?php include '../config/koneksi.php'; ?>
<?php session_start(); ?>
<?php 
    $ID = $_SESSION['nim'];
    $sql = 'mysql_query'("SELECT * FROM mahasiswa WHERE nim = '$ID'");
    $data='mysql_fetch_array'($sql);
?>

<section class="content-header">      
    <h1> Pengajuan Judul </h1>
    <ol class="breadcrumb">
        <li><a href="homepage.php?p=dashboard"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Pengajuan Judul</li>
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
                                <label for="nim">NPM</label>
                                <input type="text" class="form-control" id="nim" placeholder="" value="<?php echo $_SESSION['nim'] ?>" readonly>
                            </div>
                            <!-- form nama lengkap-->
                            <div class="form-group">
                                <label for="nama">Nama Lengkap</label>
                                <input type="text" class="form-control" id="nama" placeholder="" value="<?php echo $_SESSION['nama_mhs'] ?>" readonly>
                            </div>
                            <!-- form program studi-->
                            <div class="form-group">
                                <label>Program Studi</label>
                                <select class="form-control"  name="prodi" readonly>
                                    <?php
                                         $qsp = 'mysql_query'("SELECT * FROM prodi");
                                         while ($s='mysql_fetch_array'($qsp)) {
                                            if ($s['pnama']==$data['program_studi']){
                                        echo "<option value='$s[pnama]' selected>$s[pnama]</option>";
                                     }else{
                                        echo "<option value='$s[pnama]'>$s[pnama]</option>";
                                     }
                                }
                                    ?>
                                </select>
                            </div>
                            <!-- form semester-->
                            <div class="form-group">
                                <label>Semester</label>
                                <div class="radio" name="semester" required>
                                    <p><label><input type="radio" name="semester" value="ganjil">Ganjil</label></p>
                                    <p><label><input type="radio" name="semester" value="genap">Genap</label></p>
                                </div>
                            </div>
                            <!-- form ajaran1-->
                            <div class="form-group">
                                <label for="ajaran">Tahun Ajaran</label>
                                <select class="form-control" name="ajaran" id="ajaran">
                                    <option selected>Pilih Tahun Ajaran</option>
                                    <option value="2022/2023">2022/2023</option>
                                    <option value="2023/2024">2023/2024</option>
                                    <option value="2024/2025">2024/2025</option>
                                    <option value="2025/2026">2025/2026</option>
                                    <option value="2026/2027">2026/2027</option>
                                    
                                </select>
                            </div>
                            <!-- form judul laporan-->
                            <div class="form-group">
                                <label>Judul Penulisan</label>
                                <textarea class="form-control" name="judul" rows="3" placeholder="Tuliskan Judul" required></textarea>
                                <p class="help-block">*Judul tidak boleh ada singkatan</p>
                            </div>
                            <!-- form jenis laporan-->
                            <div class="form-group">
                                <label>Jenis Penulisan</label>
                                <div class="radio" name="jenis_laporan" required>
                                    
                                    <p><label><input type="radio" name="jenis_laporan" value="skripsi">Skripsi</label></p>

                                </div>
                            </div>
                            <!-- form file laporan-->
                            <div class="form-group">
                                <label for="exampleInputFile">Berkas Pengajuan</label>
                                <input type="file" id="exampleInputFile" name="fupload" required>
                                <p class="help-block">*Format berkas : NamaMahasiswa_Npm.pdf
                            </div>
                        </div>
                        <!-- /.box-body -->
                        <div class="box-footer">
                            <button type="submit" class="btn btn-primary" name="simpan">Kirim</button>
                        </div>
                    </form>
                    <?php
                        $nama           = trim($_SESSION['nama_mhs']);
                        $semester       = trim ($_POST['semester']);
                        $laporan        = trim ($_POST['jenis_laporan']);
                        $ajaran         = trim ($_POST['ajaran']);
                        $prodi          = trim ($_POST['prodi']);
                        $judul          = ucwords($_POST['judul']);
                        $tgls           = date('Y-m-d');
                        $lokasi_file    = $_FILES['fupload']['tmp_name'];
                        $nama_file      = $_FILES['fupload']['name'];
                        $ukuran_file    = $_FILES['fupload']['size'];
                        $ekstensi_diperbolehkan	= array('pdf','rar','zip','docx');
                        $x = explode('.', $nama_file);
			            $ekstensi = strtolower(end($x));
                        move_uploaded_file($lokasi_file,"file/$nama_file");
                        $size = 10000000;

                        if (isset($_POST['simpan'])) {
                            
                            if(in_array($ekstensi, $ekstensi_diperbolehkan) === true){
                                if($ukuran_file > $size){
                                    echo "<script language='javascript'>alert('Gagal upload! Ukuran Maksimal 10mb, saat ini ukuran file $ukuran_file');document.location='homepage.php?p=pengajuan';</script>";
                                    exit();
                                }
                                $q = 'mysql_query'("INSERT INTO pengajuan (nim,nama_lengkap,program_studi,semester,thn_ajaran,judul,jenis_laporan,status,file,tanggal) VALUES ('$ID','$nama','$prodi','$semester','$ajaran','$judul','$laporan','0','$nama_file','$tgls')");
                                if ($q){
                                    echo "<script language='javascript'>alert('Judul Berhasil Diajukan');document.location='homepage.php?p=dashboard';</script>";
                                } else {
                                    echo "<script language='javascript'>alert('Judul Gagal Diajukan');document.location='homepage.php?p=pengajuan';</script>";
                                    // echo mysql_error($connect);
                                }
                            }else{
                                echo "<script language='javascript'>alert('Ekstensi File Yang di Upload Tidak Diperbolehkan');document.location='homepage.php?p=pengajuan';</script>";
                            }
                        }
                    ?>
                </div>
            </div>
        </div>
    </div>
<!-- /.row (main row) -->
</section>    