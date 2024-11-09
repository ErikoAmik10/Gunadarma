<?php 
include "../config/koneksi.php";

$ID =$_GET['hapus'];
$sql = "DELETE FROM bimbinganskripsi WHERE id_bimbingan = '$ID'";

$qry = mysql_query($sql);
if($qry){
	//echo "Data berhasil dihapus";
	echo "<script>document.location='?p=bimbingan_skripsi'</script>";
	}
	else 
	echo "Gagal Menghapus";
?>