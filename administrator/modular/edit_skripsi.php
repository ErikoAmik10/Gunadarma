<?php include '../config/koneksi.php'; ?>

<?php 
    $ID =$_GET['ubah'];
    $sql = mysql_query("SELECT * FROM tblskripsi WHERE NIM = '$ID'");
    $data=mysql_fetch_array($sql);

    $nim=$data['NIM'];
    $nama=$data['nama'];
    $judul=$data['judul'];
    $pembimbing1=$data['pembimbing1'];
    $prodi=$data['program_studi'];
    $wisuda=$data['angkatan_wisuda'];
?>

<section class="content-header">      
    <h1> Edit Skripsi</h1>
    <ol class="breadcrumb">
        <li><a href="homepage.php?p=dashboard"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Edit Skripsi</li>
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
                    <form method="POST" enctype="multipart/form-data">
                        <div class="box-body">
                            <!-- form nim-->
                           <div class="form-group">
                                <label>NPM</label>
                                <input type="text" class="form-control" id="nim" placeholder="50420418" name="nim" value="<?php echo "$nim";?>" readonly>
                            </div>
                            <!-- form nama lengkap-->
                            <div class="form-group">
                                <label>Nama Lengkap</label>
                                <input type="text" class="form-control" id="nama" placeholder="masukkan nama" name="nama" value="<?php echo "$nama";?>" required>
                            </div>
                            <!-- form judul-->
                            <div class="form-group">
                                <label>Judul</label>
                                <textarea class="form-control" name="judul" rows="3" placeholder="Tuliskan Judul"  required><?php echo "$judul";?></textarea>
                                <p class="help-block">*Judul tidak boleh ada singkatan</p>
                            </div>
                            <!-- form pembimbing1-->
                            <div class="form-group">
                                <label>Dosen Pembimbing </label>
                                <select class="form-control" name="dosbing1" required>
                                <option selected>Pilih Dosen Pembimbing</option>
                                   <?php
                                        $qsp = mysql_query("SELECT * FROM dosen");
                                        while ($s=mysql_fetch_array($qsp)) {
                                            if ($s[nama_lengkap]==$data[pembimbing_1]){
                                                echo "<option value='$s[nama_lengkap]' selected>$s[nama_lengkap]</option>";
                                            } else {
                                                echo "<option value='$s[nama_lengkap]'>$s[nama_lengkap]</option>";
                                            }
                                        }
                                    ?>
                                </select>
                            </div>
                            <!-- form program studi-->
                            <div class="form-group">
                                <label>Program Studi</label>
                                <select class="form-control" name="prodi" required>
                                <option selected>Pilih Program Studi</option>
                                    <?php
                                        $qsp = mysql_query("SELECT * FROM prodi");
                                        while ($s=mysql_fetch_array($qsp)) {
                                            if ($s[pnama]==$data[program_studi]){
                                                echo "<option value='$s[pnama]' selected>$s[pnama]</option>";
                                            } else {
                                                echo "<option value='$s[pnama]'>$s[pnama]</option>";
                                            }
                                        }
                                    ?>
                                </select>
                            </div>
                            <!-- form wisuda-->
                            <div class="form-group">
                                <label>Angkatan</label>
                                <input type="text" class="form-control" id="wisuda" placeholder="masukkan wisuda" name="wisuda" value="<?php echo "$wisuda";?>" required>
                            </div>   
                        <!-- /.box-body -->
                        <div class="box-footer">
                            <button type="submit" name="simpan" class="btn btn-primary"><i class="fa fa-check"></i> simpan</button>
                        <a class="btn btn-primary" href="homepage.php?p=data_skripsi"><i class="fa fa-mail-reply"></i> batal </a>
                    </div>
                    </form>
                    <?php
                        $x1 = trim ($_POST['nim']);
                        $x2 = trim ($_POST['nama']);
                        $x3 = trim ($_POST['judul']);
                        $x4 = trim ($_POST['dosbing1']);
                        $x5 = trim ($_POST['dosbing2']);
                        $x6 = trim ($_POST['prodi']);
                        $x7 = trim ($_POST['wisuda']);

                        if (isset($_POST[simpan])) {
                            $q = mysql_query("UPDATE tblskripsi set NIM='$x1',nama='$x2',judul='$x3',pembimbing_1='$x4',pembimbing_2='$x5',program_studi='$x6',angkatan_wisuda='$x7' WHERE NIM='$ID' ");
                                if($q){
                                    echo "<script language='javascript'>alert('Data Berhasil Diubah');document.location='homepage.php?p=data_skripsi';</script>";
                                } else {
                                    echo "<script language='javascript'>alert('Data Gagal Diubah');document.location='homepage.php?p=data_skripsi';</script>"; 
                                }
                        }
                    ?>
                </div>
            </div>
        </div>
    </div>
<!-- /.row (main row) -->
</section> 