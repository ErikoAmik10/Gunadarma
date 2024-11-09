<section class="content-header">      
    <h1> Dashboard </h1>
    <ol class="breadcrumb">
        <li><a href="homepage.php?p=dashboard"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Dashboard</li>
    </ol>
</section>
<!-- Main content -->
<section class="content">
    <div class="alert alert-warning alert-dismissible">
            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
            <strong>Selamat Datang <span class="username"><?php echo $_SESSION['nama_adm'] ?></span>,
            <br>Anda Berhasil Login sebagai admin</strong>
        </div>
    
        <!-- Sistem-->
        <div class="box box-info">
            <div class="box-header">
                <h3><center><b><font color="blue" face="comic sans ms"> MONITORING BIMBINGAN SKRIPSI</font></b></center></h3>
                <center><img src="foto/ug.png" /></center>
                
                
                <center><h4>Universitas Gunadarma| <font color="blue"><?php echo date ('d-M-Y') ?></font> </h4></center>
                <center></center>
            </div>
        </div>
    <!-- /.row (main row) -->
</section> 