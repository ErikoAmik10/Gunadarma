<?php include '../config/koneksi.php'; ?>


<section class="content-header">      
    <h1> Monitoring Skripsi
        <!-- <a href="homepage.php?p=tambah"
            id='btn_add_new_data' class="btn btn-sm btn-success" title="Add Data">
                <i class="fa fa-plus-circle"></i> Add Data
        </a> -->
    </h1>
    <ol class="breadcrumb">
        <li><a href="homepage.php?p=dashboard"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Monitoring Skripsi</li>
    </ol>
</section>

<!-- Main content -->
<section class="content">
    <!-- quick email widget -->
    <div class="box box-info">            
        <div class="box-header">
            <div class="row-fluid" style="overflow:auto">
                <div class="col-md-8">
                <a href="homepage.php?p=add_bimbingan_skripsi"
            id='btn_add_new_data' class="btn btn-sm btn-success" title="Add Data">
                <i class="fa fa-plus-circle"></i> Tambah</a>
                
                </div><br/><br/><br/>

                <?php
                    $sql =  "SELECT * FROM bimbinganskripsi";
                    $result = mysql_query($sql);
                    $no_urut=1;
                ?>

                <table id="myTable" class="table table-striped table-bordered table-hover">
                    <thead>
                        <tr>
                            <th>No.</th>
                            <th>NPM</th>
                            <th>Nama Mahasiswa</th>
                            <th>Program Studi</th>
                            <th>Dosen Pembimbing</th>
                            <th>Tanggal Input</th>
                            <th>Aktivitas</th>
                            <th>Status</th>
                            <th>Tanggal Koreksi</th>
                            <th>Uraian</th>
                            <th>Opsi</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                            while ($data = mysql_fetch_array($result)) {
                        ?>    
                        <tr>
                            <td align="center"><?php echo $no_urut; ?>.</td>
                            <td><?php echo $data ['nim']; ?></td>
                            <td><?php echo $data ['nama_lengkap']; ?></td>
                            <td><?php echo $data ['program_studi']; ?></td>
                            <td><?php echo $data ['dosen_pembimbing']; ?></td>
                            <td><?php echo $data ['tgl_input']; ?></td>
                            <td><?php echo $data ['aktivitas']; ?></td>

                            <?php
								$arSt = array(
                                    "New" => "<span class='label label-warning'>New</span>",
                                    "ACC" => "<span class='label label-success'>ACC</span>",
                                    "Revisi" => "<span class='label label-danger'>Revisi</span>"
                                );
                                    $st = $data['status'];
                                    $status = $arSt[$st];
                            ?>
                            <td><?php echo $status ?></td>

                            <td><?php echo $data ['tgl_koreksi']; ?></td>
                            <td><?php echo $data ['uraian']; ?></td>
                            <td>
                                
                                <a href='homepage.php?p=hapus_bimbingan_skripsi&hapus=<?php echo $data['id_bimbingan'] ?>' >
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