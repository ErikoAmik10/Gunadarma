<?php
session_start();
error_reporting(E_ALL ^ (E_NOTICE | E_WARNING));
date_default_timezone_set("Asia/Jakarta");
$prodi = $_SESSION['prodi'];

include "../config/koneksi.php";
include "../config/fungsi_indotgl.php";
include "../config/fungsi.php";
include '../config/konfigurasi.php';

if (empty($_SESSION['sesId'])){
	echo "<script>window.close();</script>";
}

else{
	require ("html2pdf/html2pdf.class.php");
	
	$content = ob_get_clean();
	$year = date('Y');
	$month = date('m');
	$date = date('d');
	$now = date('Y-m-d');
	$date_now = tgl_indo($now);

	$jthn = (($_GET['thn']=="ALL")||(empty($_GET['thn'])) ? "" : "TAHUN $_GET[thn]");
	$jjur = getValue("pnama","prodi","pid='$prodi'");

	$tthn = (($_GET['thn']=="ALL")||(empty($_GET['thn'])) ? "" : "AND year(a.tanggal)='$_GET[thn]'");

	$filename="Laporan Data Admin.pdf";

	$content = "
				<small>Tanggal Print : $date_now</small>
				<hr>
				<table border='0' style='margin:10px 50px 50px 50px;'>
					<tr valign='middle'>
						<td width='50'></td>
						<td><img src='$_CONFIG[syskop]' height='$_CONFIG[tinggikop]'></td>
						<td width='20'></td>
						<td align='center'>
							SISTEM ONLINE KERJA PRAKTEK DAN SKRIPSI FAKULTAS TEKNIK DAN INFORMATIKA<br>
							                   <h1>UNIVERSITAS AKI</h1>
							Alamat : $_CONFIG[owneraddress] - $_CONFIG[ownercity] $_CONFIG[ownerpostalcode]<br>
							Telp. $_CONFIG[ownertelp] | Fax. $_CONFIG[ownerfax]	| Email : $_CONFIG[owneremail]
						</td>
					</tr>
				</table>
				<hr><p align='center'><b>LAPORAN DATA DOSEN<br>$jthn</b></p>
				<table cellpadding='0' border='0' cellspacing='0' align='center'>
					<tr>
						<th align='center' style='border:1px solid #000; background-color: $_CONFIG[syscolor]; padding: 4px;'>No.</th>
						<th align='center' style='border:1px solid #000; background-color: $_CONFIG[syscolor]; padding: 4px;'>NIDN</th>
						<th align='center' style='border:1px solid #000; background-color: $_CONFIG[syscolor]; padding: 4px;' width='100'>Nama Lengkap</th>
						<th align='center' style='border:1px solid #000; background-color: $_CONFIG[syscolor]; padding: 4px;' width='40'>Jenis Kelamin</th>
						<th align='center' style='border:1px solid #000; background-color: $_CONFIG[syscolor]; padding: 4px;' width='70'>Email</th>
						<th align='center' style='border:1px solid #000; background-color: $_CONFIG[syscolor]; padding: 4px;' width='100'>Jabatan Fungsional</th>
						<th align='center' style='border:1px solid #000; background-color: $_CONFIG[syscolor]; padding: 4px;'>Jabatan Struktural</th>
						<th align='center' style='border:1px solid #000; background-color: $_CONFIG[syscolor]; padding: 4px;'>Username</th>
						<th align='center' style='border:1px solid #000; background-color: $_CONFIG[syscolor]; padding: 4px;'>Password</th>
						<th align='center' style='border:1px solid #000; background-color: $_CONFIG[syscolor]; padding: 4px;'>Foto</th>
						<th align='center' style='border:1px solid #000; background-color: $_CONFIG[syscolor]; padding: 4px;'>Level</th>
					</tr>
			";
			$no = 0;
			$query = mysql_query("SELECT * FROM dosen");
			while ($d = mysql_fetch_array($query)){
				$no++;
				$tgl = tgl_indo($d[tanggal]);
	      		$thn = $d[p_tahun];

				$content .= "<tr>
									<td style='border:1px solid #000; padding: 4px;' align='center'>$no.</td>
									<td style='border:1px solid #000; padding: 4px;'>$d[nidn]</td>
									<td style='border:1px solid #000; padding: 4px;' width='100'>$d[nama_lengkap]</td>
									<td style='border:1px solid #000; padding: 4px;'>$d[jenis_kelamin]</td>
									<td style='border:1px solid #000; padding: 4px;' width='70'>$d[email]</td>
									<td style='border:1px solid #000; padding: 4px;' width='100'>$d[jabatan_fungsional]</td>
									<td style='border:1px solid #000; padding: 4px;' width='120'>$d[jabatan_struktural]</td>
									<td style='border:1px solid #000; padding: 4px;'>$d[username]</td>
									<td style='border:1px solid #000; padding: 4px;' width='120'>$d[password]</td>
									<td style='border:1px solid #000; padding: 4px;'>$d[foto]</td>
									<td style='border:1px solid #000; padding: 4px;'>$d[level]</td>
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
		$html2pdf->setDefaultFont('Arial');
		$html2pdf->writeHTML($content, isset($_GET['vuehtml']));
		$html2pdf->Output($filename);
	}
	catch(HTML2PDF_exception $e) { echo $e; }
}
?>