<?php
session_start();
error_reporting(E_ALL ^ (E_NOTICE | E_WARNING));
date_default_timezone_set("Asia/Jakarta");

include "../config/koneksi.php";
include "../config/fungsi_indotgl.php";
include "../config/surat.php";
include "../config/fungsi.php";
include '../config/konfigurasi.php';

if (empty($_SESSION['username'])){
	echo "<script>window.close();</script>";
}

else{
	require ("html2pdf/html2pdf.class.php");
	$filename="Laporan Fakultas.pdf";
	$content = ob_get_clean();
	$year = date('Y');
	$month = date('m');
	$date = date('d');
	$now = date('Y-m-d');
	$date_now = tgl_indo($now);

	$semester = $_POST['semester'];
	$ajaran = $_POST['thn_ajaran'];

	$content = "
				<table border='0' style='margin:0px 0px 0px 0px;'>
					<tr valign='middle'>
						<td width='40'></td>
						<td><img src='$_CONFIG[syskop]' height='$_CONFIG[tinggikop]'></td>
						<td width='20'></td>
						<td align='center'>
							<p><h2>UNIVERSITAS AKI<br>
							FAKULTAS TEKNIK DAN INFORMATIKA
							</h2>
							$_CONFIG[owneraddress] - $_CONFIG[ownercity] $_CONFIG[ownerpostalcode]<br>
							Telp. $_CONFIG[ownertelp], Fax. $_CONFIG[ownerfax]<br>
							Email : $_CONFIG[owneremail], website: $_CONFIG[ownerweb]</p>
						</td>
						<td width='20'></td>
						<td align='top-left'>
							Lampiran B<br>
							FSOP-UNAKI-$kode
						</td>
					</tr>
				</table>
				<hr>
				<p align='left'><b><i>Lampiran Surat Keputusan
				<br>No : $sk </i></b></p>

				<br><p align='center'><b>DISTRIBUSI DOSEN PEMBIMBING TUGAS AKHIR
				<br>SEMESTER GENAP 2018/2019</b></p>
				
				<table cellpadding='0' border='0' cellspacing='0' align='center'>
					<tr>
						<th align='center' style='border:1px solid #000; background-color: $_CONFIG[syscolor]; padding: 4px;'>No.</th>
						<th align='center' style='border:1px solid #000; background-color: $_CONFIG[syscolor]; padding: 4px;'>NIM</th>
						<th align='center' style='border:1px solid #000; background-color: $_CONFIG[syscolor]; padding: 4px;'>Nama</th>
						<th align='center' style='border:1px solid #000; background-color: $_CONFIG[syscolor]; padding: 4px;'>Status</th>
						<th align='center' style='border:1px solid #000; background-color: $_CONFIG[syscolor]; padding: 4px;'>Judul</th>
						<th align='center' style='border:1px solid #000; background-color: $_CONFIG[syscolor]; padding: 4px;'>Dosen Pembimbing </th>
						
					</tr>
			";
			$no = 0;
			
			$query = mysql_query("SELECT * FROM pengajuan");
			
			while ($d = mysql_fetch_array($query)){
				$no++;
				$tgl = tgl_indo($d[tanggal]);
	      		$thn = $d[sTahun];
				$content .= "<tr>
									<td style='border:1px solid #000; padding: 4px;' align='center'>$no</td>
									<td style='border:1px solid #000; padding: 4px;' align='center'>$d[nim]</td>
									<td style='border:1px solid #000; padding: 4px;' width='120'>$d[nama_lengkap]</td>
									<td style='border:1px solid #000; padding: 4px;'>Baru</td>
									<td style='border:1px solid #000; padding: 4px;' width='250'>$d[judul]</td>
									<td style='border:1px solid #000; padding: 4px;' width='120'>$d[pembimbing1]</td>
									<td style='border:1px solid #000; padding: 4px;' width='120'>$d[pembimbing2]</td>
								</tr>";
			}			
			$content .= "
					</table>
					<br>
					<table>
						<tr>
							<td width='700'></td>
							<td align='left'>
								Pada Tanggal : $date_now<br>
								<b>DEKAN,</b>
								<br><br><br><br><br><br><br><br>								
								<b><u>Dr. Harries Arizonia Ismail, S.E, M.M, M.Kom </u></b><br>
								NIDN. 000919191
							</td>
						</tr>
					</table>
					";	
			
	// conversion HTML => PDF
	try
	{
		$html2pdf = new HTML2PDF('L','A4','fr', false, 'ISO-8859-15',array(10, 10, 10, 10)); //setting ukuran kertas dan margin pada dokumen anda
		// $html2pdf->setModeDebug();
		$html2pdf->setDefaultFont('Times');
		$html2pdf->writeHTML($content, isset($_GET['vuehtml']));
		$html2pdf->Output($filename);
	}
	catch(HTML2PDF_exception $e) { echo $e; }
}
?>