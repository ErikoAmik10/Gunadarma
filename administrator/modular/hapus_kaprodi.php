<?php 
include "../config/koneksi.php";

$ID =$_GET['hapus'];
$sql = "DELETE FROM kaprodi WHERE nidn = '$ID'";

$qry = mysql_query($sql);
if($qry){
	//echo "Data berhasil dihapus";
	echo "<script>document.location='?p=data_kaprodi'</script>";
	}
	else 
	echo "Gagal Menghapus";
?>