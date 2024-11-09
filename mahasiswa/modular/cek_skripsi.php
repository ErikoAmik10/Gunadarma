<?php include '../config/koneksi.php'; ?>
<?php session_start(); ?>

<section class="content-header">      
    <h1> Cek Duplikasi Skripsi</h1>
    <ol class="breadcrumb">
        <li><a href="homepage.php?p=dashboard"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Cek Duplikasi Skripsi</li>
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
							<!-- form Plagiasi Skripsi-->
							<div class="form-group">
								<label>Judul yang akan di cek dengan data skripsi</label>
								<div>
									<textarea name="kal2" placeholder="masukkan judul yang diuji..." style="width: 100%; height: 50px;"></textarea>
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
							<tr><td colspan=2 align=center><font size="3"> judul yang diajukan  "<?=$k1?>"<br></tr>
							<tr><td colspan=2 align=center><font size="3"> kemiripan kalimat = <?=$persen?> % <br> <span style="color:<?=$warna?>">
							<?=$ket?></span></font></td></tr>
							<?php } ?>
							<div class="box-footer">
								<button type="submit" class="btn btn-primary" name="Cek Plagiasi"><i class="fa fa-check"></i>Cek</button>
								<a class="btn btn-primary" href="homepage.php?p=dashboard"><i class="fa fa-mail-reply"></i> Batal</a>
							</div>
						</div>
					</form>
				</div>
			</div>
        </div>
    </div>
<!-- /.row (main row) -->
</section>    