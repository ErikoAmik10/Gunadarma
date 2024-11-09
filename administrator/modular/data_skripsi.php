<?php include '../config/koneksi.php'; ?>


<section class="content-header">      
    <h1> Data Skripsi </h1>
    <ol class="breadcrumb">
        <li><a href="homepage.php?p=dashboard"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Data Skripsi</li>
    </ol>
</section>

<!-- Main content -->
<section class="content">
    <!-- quick email widget -->
    <div class="box box-info">            
        <div class="box-header">
            <div class="row-fluid" style="overflow:auto">
                <div class="col-md-8">
                    <div class="col-md-8">
                        <a href="homepage.php?p=add_skripsi" id="btn_create" class='btn btn-success'><span class='glyphicon glyphicon-plus'></span> Tambah </a>
                    </div> <br/><br/><br/>
                </div>

                <?php
                    $sql =  "SELECT * FROM tblskripsi";
                    $result = mysql_query($sql);
                    $no_urut=1;
                ?>

                <table id="myTable" class="table table-striped table-bordered table-hover">
                    <thead>
                        <tr>
                            <th>No.</th>
                            <th>NPM</th>
                            <th>Nama Lengkap</th>
                            <th>Judul Laporan</th>
                            <th>Dosen Pembimbing </th>
                            <th>Program Studi</th>
                            <th>Angkatan</th>
                            <th>Opsi</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                            while ($data = mysql_fetch_array($result)) {
                        ?>    
                        <tr>
                            <td align="center"><?php echo $no_urut; ?>.</td>
                            <td><?php echo $data ['NIM']; ?></td>
                            <td><?php echo $data ['nama']; ?></td>
                            <td><?php echo $data ['judul']; ?></td>	
                            <td>
                            <?php
                                $qsp = mysql_query("SELECT * FROM dosen");
                                while ($s=mysql_fetch_array($qsp)) {
                                    if ($s[nama_lengkap]==$data[pembimbing_1]){
                                        echo "<option value='$s[nama_lengkap]' <selected>$s[nama_lengkap]</option>";
                                    }
                                }
                            ?>
                            </td>
                            <td>
                            <?php
                                $qsp = mysql_query("SELECT * FROM prodi");
                                while ($s=mysql_fetch_array($qsp)) {
                                    if ($s[pnama]==$data[program_studi]){
                                        echo "<option value='$s[pnama]' <selected>$s[pnama]</option>";
                                    }
                                }
                            ?>
                            </td>
                            <td><?php echo $data ['angkatan_wisuda']; ?></td>
                            <td>
                                <a href='homepage.php?p=edit_skripsi&ubah=<?php echo $data[NIM] ?>' >
                                <button id='btn_create' class='btn btn-xs btn-primary' data-toggle='tooltip' data-container='body' title='Ubah'><span class='glyphicon glyphicon-pencil' aria-hidden='true'></span></button></a>
                                
                                <a href='homepage.php?p=hapus_skripsi&hapus=<?php echo $data[NIM] ?>' >
                                <button id='btn_create' class='btn btn-xs btn-danger' data-toggle='tooltip' data-container='body' title='Hapus'><span class='glyphicon glyphicon-trash' aria-hidden='true'></span></button></a>
                            </td>	     
                        </tr>
                        <?php
                            $no_urut++;
                            }
                        ?>  
                    </tbody>
                </table>
                
            </div>
        </div>
    </div>
<!-- /.row (main row) -->
</section>    