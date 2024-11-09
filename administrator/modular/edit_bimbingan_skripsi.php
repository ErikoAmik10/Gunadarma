

<?php
    $ID =$_GET['ubah'];
    $sql = mysql_query("SELECT * FROM bimbinganskripsi WHERE id_bimbingan = '$ID'");
    $data=mysql_fetch_array($sql);

    // print_r($data);

    $nim = $data['nim'];
    $nama = $data['nama_lengkap'];
    // echo $nama;
    $prodi = $data['program_studi'];
    $dosen = $data['dosen_pembimbing'];
    $tgl_input = $data['tgl_input'];
    $aktivitas = $data['aktivitas'];
    $jenis_laporan= $data['jenis_laporan'];
    // echo $jenis_laporan;
    $nama_file = $data['file'];
    $status = $data['status'];
    $tgl_koreksi = $data['tgl_koreksi'];
    $uraian = $data['uraian'];
?>


<section class="content-header">      
    <h1> Edit Bimbingan Skripsi</h1>
    <ol class="breadcrumb">
        <li><a href="homepage.php?p=dashboard"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Edit Bimbingan Skripsi</li>
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
                            <!-- form NIM-->
                            <div class="form-group">
                                <label>NPM</label>
                                <input type="text" class="form-control" id="nim" placeholder="50420418" name="nim" value="<?php echo $nim;?>" readonly>
                            </div>
                            <!-- form nama lengkap-->
                            <div class="form-group">
                                <label>Nama Lengkap</label>
                                <input type="text" class="form-control" id="nama_lengkap" placeholder="masukkan nama" name="nama_lengkap" value="<?php echo $nama;?>" required>
                            </div>                            
                            <!-- form prodi-->
                            <div class="form-group">
                                <label>Program Studi</label>
                                <select class="form-control" name="program_studi" required>
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
                            <!-- form dosbing-->
                            <div class="form-group">
                                <label>Dosen Pembimbing</label>
                                <select class="form-control" name="dosen_pembimbing">
                                    <?php
                                         $qsp = mysql_query("SELECT * FROM dosen");
                                         while ($s=mysql_fetch_array($qsp)) {
                                    
                                        if ($s[nama_lengkap]==$data[dosen_pembimbing]){
                                                echo "<option value='$s[nama_lengkap]' selected>$s[nama_lengkap]</option>";
                                            } else {
                                                echo "<option value='$s[nama_lengkap]'>$s[nama_lengkap]</option>";
                                            }
                                        }
                                    ?>
                                </select>
                            </div>
                            <!-- form tanggal input-->
                            <div class="form-group">
                            <div class='form-group form-datepicker header-group-0 ' id='form-group-due_date'style="">
                                <label for="tanggal">Tanggal Input
                                <span class='text-danger' title='This field is required'>*</span>
                                </label>
                                <div class="input-group">
                                    <span class="input-group-addon open-datetimepicker"><a><i class='fa fa-calendar '></i></a></span>
                                        <input type='text' title="Tanggal Input" value="<?php 
                                        $exploded_date = explode('-',$tgl_input);
                                        $tgl_input_formatted = $exploded_date[2].'-'.$exploded_date[1].'-'.$exploded_date[0];
                                        echo $tgl_input_formatted;?>" required class='form-control notfocus datepicker' name="tgl_input" id="tgl_input" value=''/>
                                </div>
                                <div class="text-danger"></div>
                                <p class='help-block'></p>
                            </div>
                            </div>
                            <!-- form aktivitas-->
                            <div class="form-group">
                                <label>Aktivitas</label>
                                <!-- <textarea class="form-control" name="aktivitas" rows="3" placeholder="Isi judul Bab yang Anda ajukan" required></textarea> -->
                                <textarea class="form-control" name="aktivitas" rows="3" placeholder="Isi berdasarkan hasil file laporan" selected value="<?php echo $aktivitas;?>"><?php echo $aktivitas;?></textarea>
                                <!-- <input type="text" class="form-control" id="aktivitas" placeholder="Isi judul Bab yang Anda ajukan" name="aktivitas" value="<?php echo $aktivitas;?>" required>
                                <p class="help-block">*misal "Bab I Pendahuluan"</p> -->
                            </div>
                            <!-- form jenis laporan-->
                            <div class="form-group">
                                <label>Jenis Laporan</label>
                                <select class="form-control" name="jenis_laporan" required>
                                    <!-- <option selected>Pilih Laporan</option> -->
                                    <!-- <option value="kp">Kerja Praktek</option> -->
                                    <option value="KP" <?=($jenis_laporan=='KP')?'selected':'';?> >Kerja Praktek</option>
                                    <!-- <option value="Skripsi">Skripsi</option> -->
                                    <option value="Skripsi" <?=($jenis_laporan=='Skripsi')?'selected':'';?> >Skripsi</option>
                                </select>
                            </div>
                            <!-- form file laporan-->
                            <div class="form-group">
                                <label>Nama File Laporan</label>
                                <input type="text" class="form-control" id="file" name="file" value="<?php echo $nama_file;?>" readonly>
                                <td>
                                <a href="../mahasiswa/file/<?php echo $data[file]; ?>" class='btn btn-xs btn-primary' title='View Document' target="_blank"><span class='glyphicon glyphicon-eye-open' aria-hidden='true'></span> View</a>
                                </td>
                            </div>
                            <!-- form status-->
                            <div class="form-group">
                                <label>Status </label>
                                <!-- <input type="text" class="form-control" id="file" name="file" value="<?php echo $status;?>" required> -->
                                <select class="form-control" name="status" required>
                                    <!-- <option selected>Pilih Status Laporan</option> -->
                                    <!-- <option value="New">New</option>
                                    <option value="ACC">ACC</option>
                                    <option value="Revisi">Revisi</option> -->
                                    <option value="New" <?=($status=='New')?'selected':'';?> >New</option>
                                    <option value="ACC" <?=($status=='ACC')?'selected':'';?> >ACC</option>
                                    <option value="Revisi" <?=($status=='Revisi')?'selected':'';?> >Revisi</option>
                                    
                                </select>
                            </div>
                            <!-- form tanggal koreksi -->
                            <div class="form-group">
                            <div class='form-group form-datepicker header-group-0 ' id='form-group-due_date'style="">
                                <!-- <label for="tanggal">Tanggal Koreksi<span class='text-danger' title='This field is required'>*</span>
                                </label> -->
                                <label for="tanggal">Tanggal Koreksi
                                    <span class='text-danger' title='This field is required'>*</span>
                                </label>
                                <div class="input-group">
                                    <span class="input-group-addon open-datetimepicker"><a><i class='fa fa-calendar '></i></a></span>
                                        <input type='text' title="Tanggal Koreksi" value="<?php
                                        $exploded_date = explode('-',$tgl_koreksi);
                                        $tgl_koreksi_formatted = $exploded_date[2].'-'.$exploded_date[1].'-'.$exploded_date[0];
                                        echo $tgl_koreksi_formatted;?>" required
                                        class='form-control notfocus datepicker' name="tgl_koreksi" id="tgl_koreksi"
                                        value=''/>
                                </div>
                                <div class="text-danger"></div>
                                <p class='help-block'></p>
                            </div>
                            </div>

                            <!-- form uraian -->
                            <div class="form-group">
                                <label>Uraian</label>
                                <textarea class="form-control" name="uraian" rows="3" placeholder="Isi berdasarkan hasil file laporan" selected value="<?php echo $uraian;?>"><?php echo $uraian;?></textarea>
                                <!-- <input type="text" class="form-control" id="aktivitas" placeholder="Isi judul Bab yang Anda ajukan" name="aktivitas" value="<?php echo $aktivitas;?>" required>
                                <p class="help-block">*misal "Bab I Pendahuluan"</p> -->
                            </div>

                            <!-- /.box-body -->
                            <div class="box-footer">
                                <button type="submit" name="simpan" class="btn btn-primary"><i class="fa fa-check"></i> Simpan</button>
                                <a class="btn btn-primary" href="homepage.php?p=bimbingan_skripsi"><i class="fa fa-mail-reply"></i> Batal </a>
                            </div>
                        </div>
                    </form>

                    <?php

                        $x1 = trim ($_POST['nim']);
                        $x2 = trim ($_POST['nama_lengkap']);
                        $x3 = trim ($_POST['program_studi']);
                        $x4 = trim ($_POST['dosen_pembimbing']);
                        $x5 = date('Y-m-d', strtotime($_POST['tgl_input']));
                        $x6 = trim ($_POST['aktivitas']);
                        $x7 = trim ($_POST['jenis_laporan']);
                        $x8 = trim ($_POST['file']);
                        $x9 = trim ($_POST['status']);
                        $x10 = date('Y-m-d', strtotime($_POST['tgl_koreksi']));
                        $x11 = trim ($_POST['uraian']);

                        // $lokasi_file    = $_FILES['fupload']['tmp_name'];
                        // $nama_file      = $_FILES['fupload']['name'];
                        // $ukuran_file    = $_FILES['fupload']['size'];
                        // if($pass==NULL)
                            
                        // query for update data
                        if (isset($_POST[simpan])) {
                            $q = mysql_query("UPDATE bimbinganskripsi SET nim='$x1',nama_lengkap='$x2',program_studi='$x3',dosen_pembimbing='$x4',tgl_input='$x5',
                            aktivitas='$x6',jenis_laporan='$x7',file='$x8',status='$x9',tgl_koreksi='$x10',uraian='$x11' WHERE id_bimbingan=$ID ");
                                if($q){
                                    echo "<script language='javascript'>alert('Data Berhasil Diubah');document.location='homepage.php?p=bimbingan_skripsi';</script>";
                                } else {
                                    echo "<script language='javascript'>alert('Data Gagal Diubah');document.location='homepage.php?p=bimbingan_skripsi';</script>"; 
                                }
                        }
                        // if ($_POST[simpan]) {    
                        //         $q = mysql_query("UPDATE bimbinganskripsi set nim='$x1',nama_lengkap='$x2',program_studi='$x3',dosen_pembimbing='$x4',tgl_input='$x5',
                        //         aktivitas='$x6',jenis_laporan='$x7',nama_file='$x8',status='$x9',tgl_koreksi='$x10',uraian='$x11' WHERE id_bimbingan='$ID' ");
                        //         if($q)
                        //             {
                        //                 echo "<script language='javascript'>alert('Data Berhasil Diubah');document.location='homepage.php?p=bimbingan_skripsi';</script>";
                        //             }
                        //         else
                        //             {
                        //                 echo "<script language='javascript'>alert('Data Gagal Diubah');document.location='homepage.php?p=bimbingan_skripsi';</script>"; 
                        //             }
                        // }
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
// $('.datepicker').datepicker();
// $('.datepicker').on('changeDate', function(ev){
//     $(this).datepicker('hide');
// });
// $( ".datepicker" ).datepicker( "option", "dateFormat", 'Y-M-d' );
$('.datepicker').datepicker({ format: 'dd-mm-yyyy' });
</script>