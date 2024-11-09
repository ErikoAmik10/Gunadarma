<?php
	$id =$_GET['pengajuan'];
	$sql = mysql_query("SELECT * FROM pengajuan WHERE id_pengajuan = '$id'");
	$data=mysql_fetch_array($sql);
    
    $id=$data['id_pengajuan'];
	$judul=$data['judul'];
	$nim=$data['nim'];
	$nama=$data['nama_lengkap'];
    $jl=$data['jenis_laporan'];
?>

<section class="content-header">      
    <h1>Pengajuan Skripsi</h1>
    <ol class="breadcrumb">
        <li><a href="homepage.php?p=dashboard"><i class="fa fa-dashboard"></i>Home</a></li>
        <li class="active">Pengajuan Skripsi</li>
    </ol>
</section>


<section class="content">
    <!-- quick email widget -->
    <div class="box box-info">            
        <div class="box-header">
            <div class="row-fluid">
                <div class="col-md-8">
					<form  method="post">
						<div class="box-body">
							<!-- form NIM-->
                            <div class="form-group">
                                <label>NPM</label>
                                <input type="text" class="form-control" id="nim" placeholder="222120004" name="nim" value="<?php echo "$nim";?>" readonly>
							</div>
							<!-- form nama lengkap-->
                            <div class="form-group">
                                <label>Nama Mahasiswa</label>
                                <input type="text" class="form-control" id="nama" placeholder="nama lengkap" name="nama" value="<?php echo "$nama";?>" readonly>
                            </div>
							<!-- form jenis laporan-->
                            <div class="form-group">
                                <label>Jenis Laporan</label>
                                <input type="text" class="form-control" id="jl" placeholder="masukkan jenis laporan" name="jl" value="<?php echo "$jl";?>" readonly>
                            </div>
							<!-- form Plagiasi Skripsi-->
							<div class="form-group">
								<label>Judul yang di uji dengan data skripsi</label>
								<div>
									<textarea name="kal2" placeholder="masukkan judul yang diuji..." style="width: 100%; height: 50px;" required><?php echo "$judul";?></textarea>
								</div>
							</div>
							<!-- untuk selanjutnya kita buat action jika  tombol submit di klik -->
							<?php
								if (isset($_POST['kal2'])) {
									$k1 = $_POST['kal2'];
									$k2 = mysql_fetch_array(mysql_query("SELECT judul FROM tblskripsi"));
									
									foreach ($k2 as $judul) {
										similar_text($k1,$judul,$persen);
									}
									
									$persen=round($persen, 2);
									if ($persen>40){$ket="TERDETEKSI PLAGIASI"; $warna="#fc3804";} else {$ket="TIDAK TERDETEKSI PLAGIASI"; $warna="#33b823";}
							?> 
							<!--dan terakhir kita tutup form dan tabel yang telah dibuat -->
							<tr><td colspan=2 align=center><font size="3"> kemiripan kalimat = <?=$persen?> % <br> <span style="color:<?=$warna?>">
							<?=$ket?></span></font></td></tr>
							<?php } ?>
							<!-- form status-->
                            <div class="form-group">
                                <label>Status Laporan</label>
                                <select class="form-control" name="status">
                                    <option selected>Pilih Status</option>
                                    <option value="1">Diterima</option>
                                    <option value="2">Ditolak</option>
                                </select>
                            </div>
                            <!-- form Pembimbing 1-->
                            <div class="form-group">
                                <label>Dosen Pembimbing </label>
                                <select class="form-control" name="pembimbing1" id="pembimbing1" required>
                                    <option selected>Pilih Dosen Pembimbing </option>
                                    <?php
                                        $qsp = mysql_query("SELECT * FROM dosen");
                                        while ($s=mysql_fetch_array($qsp)) {
                                            if ($s['nama_lengkap']==$data['pembimbing1']){
                                                echo "<option value='$s[nama_lengkap]' selected>$s[nama_lengkap]</option>";
                                            }
                                            else {
                                                echo "<option value='$s[nama_lengkap]'>$s[nama_lengkap]</option>";
                                            }
                                        }
                                    ?>
                                </select>
                            </div>
							<div class="box-footer">
								<button type="submit" class="btn btn-primary" name="Cek Plagiasi"><i class="fa fa-check"></i>Cek</button>
								<button type="submit" name="simpan" class="btn btn-primary"><i class="fa fa-check"></i> Simpan Status</button>
								<a class="btn btn-primary" href="homepage.php?p=skripsi"><i class="fa fa-mail-reply"></i> Batal</a>
							</div>
						</div>
					</form>
					<?php
                        $x1 = trim ($_POST['nim']);
                        $x2 = trim ($_POST['nama']);
                        $x3 = trim ($_POST['jl']);
                        $x4 = trim ($_POST['kal2']);
                        $x5 = trim ($_POST['status']);
                        $x6 = trim ($_POST['pembimbing1']);
                        $x7 = trim ($_POST['pembimbing2']);
                            
                        if (isset($_POST['simpan'])) {
                            {
                                $q = mysql_query("UPDATE pengajuan set nim='$x1',nama_lengkap='$x2',judul='$x4',jenis_laporan='$x3',status='$x5',pembimbing1='$x6',pembimbing2='$x7' WHERE id_pengajuan='$id'");
                                    if($q){
                                    echo "<script language='javascript'>alert('Data Berhasil Diubah');document.location='homepage.php?p=skripsi';</script>";
                                    }
                                    else{
                                    echo "<script language='javascript'>alert('Data Gagal Diubah');document.location='homepage.php?p=skripsi';</script>"; 
                                    }
                            }
                        }
                    ?>
				</div>
			</div>
        </div>
    </div>
<!-- /.row (main row) -->
</section>    