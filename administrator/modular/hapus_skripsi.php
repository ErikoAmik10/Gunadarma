<?php 
include "../config/koneksi.php";

$ID =$_GET['hapus'];
$sql = "DELETE FROM tblskripsi WHERE NIM = '$ID'";

$qry = mysql_query($sql);
if($qry){
	//echo "Data berhasil dihapus";
	echo "<script>document.location='?p=data_skripsi'</script>";
	}
	else 
	echo "Gagal Menghapus";
?>