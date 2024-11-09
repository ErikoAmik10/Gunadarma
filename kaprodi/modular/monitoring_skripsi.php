<section class="content-header">      
    <h1>Mahasiswa
    </h1>
    <ol class="breadcrumb">
        <li><a href="homepage.php?p=dashboard"><i class="fa fa-dashboard"></i>Home</a></li>
        <li class="active">Monitoring Mahasiswa</li>
    </ol>
</section>

<!-- Main content -->
<section class="content">
    <!-- quick email widget -->
    <div class="box box-info">            
        <div class="box-header">
            <div class="row-fluid" style="overflow:auto">
                <div class="col-md-8"></div>

                <!-- Tabel untuk Bimbingan Skripsi Mahasiswa -->
                <?php
                    include 

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
                            while ($data = mysqli_fetch_assoc($result)) {
                        ?>    
                        <tr>
                            <td align="center"><?php echo $no_urut; ?>.</td>
                            <td><?php echo $data['nim']; ?></td>
                            <td><?php echo $data['nama_lengkap']; ?></td>
                            <td><?php echo $data['program_studi']; ?></td>
                            <td><?php echo $data['dosen_pembimbing']; ?></td>
                            <td><?php echo $data['tgl_input']; ?></td>
                            <td><?php echo $data['aktivitas']; ?></td>
                            <td><?php echo $data['status']; ?></td>
                            <td><?php echo $data['tgl_koreksi']; ?></td>
                            <td><?php echo $data['uraian']; ?></td>
                            <td>
                                <a href='homepage.php?p=view_data&view=<?php echo $data['id_bimbingan']; ?>' >
                                    <button id='btn_create' class='btn btn-xs btn-primary' data-toggle='tooltip' data-container='body' title='Lihat Data'>
                                        <span class='glyphicon glyphicon-eye-open' aria-hidden='true'></span>
                                    </button>
                                </a>                                
                            </td>	     
                        </tr>
                        <?php
                            $no_urut++;
                            }
                        ?>  
                    </tbody>
                </table>

                <section class="content-header">      
    <h2>Dosen</h2>
    <ol class="breadcrumb">
        <li><a href="homepage.php?p=dashboard"><i class="fa fa-dashboard"></i>Home</a></li>
        <li class="active">Monitoring Dosen</li>
    </ol>
</section>
                <!-- Tabel untuk Monitoring Bimbingan Dosen -->
                <?php
                    // Query untuk menghitung jumlah bimbingan yang dilakukan oleh dosen
                    $sql_dosen = "SELECT dosen.nidn, dosen.nama_lengkap, COUNT(bimbinganskripsi.id_bimbingan) AS total_bimbingan
                                  FROM dosen
                                  LEFT JOIN bimbinganskripsi ON dosen.nama_lengkap = bimbinganskripsi.dosen_pembimbing
                                  GROUP BY dosen.nidn";
                    $result_dosen = mysql_query($sql_dosen);
                    $no_urut_dosen = 1;
                ?>

                <table id="myTable" class="table table-striped table-bordered table-hover">
                    <thead>
                        <tr>
                            <td align="center"><b>No.</b></td>
                            <th>Dosen Pembimbing</th>
                            <th>Total Bimbingan</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                            while ($data_dosen = mysqli_fetch_assoc($result_dosen)) {
                        ?>    
                        <tr>
                            <td align="center"><?php echo $no_urut_dosen; ?>.</td>
                            <td><?php echo $data_dosen['nama_lengkap']; ?></td>
                            <td><?php echo $data_dosen['total_bimbingan']; ?></td>
                        </tr>
                        <?php
                            $no_urut_dosen++;
                            }
                        ?>  
                    </tbody>
                </table>
                
            </div>
        </div>
    </div>
</section>
