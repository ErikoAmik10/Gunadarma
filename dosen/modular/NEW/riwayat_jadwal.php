<section class="content-header">      
    <h1> Riwayat Jadwal
        <!-- <a href="homepage.php?p=tambah"
            id='btn_add_new_data' class="btn btn-sm btn-success" title="Add Data">
                <i class="fa fa-plus-circle"></i> Add Data
        </a> -->
    </h1>
    <ol class="breadcrumb">
        <li><a href="homepage.php?p=dashboard"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Riwayat Jadwal</li>
    </ol>
</section>

<!-- Main content -->
<section class="content">
    <!-- quick email widget -->
    <div class="box box-info">            
        <div class="box-header">
            <div class="row-fluid" style="overflow:auto">
                <div class="col-md-8">
                
                </div>

                <?php
                    $sql =  mysql_query("SELECT * FROM jadwal WHERE nidn='$nidn'");
                    $no_urut=1;
                    $add_jadwal = $data['add_jadwal'];
                ?>

                <table id="myTable" class="table table-striped table-bordered table-hover">
                    <thead>
                        <tr>
                            <th>No.</th>
                            <th>NIDN</th>
                            <th>Semester</th>
                            <th>Tahun Ajaran</th>
                            <th>Jadwal</th>
                            <th>Tanggal Input</th>
                            <th>Status Kaprodi</th>
                            <th>Status Dekan</th>
                            <th>Add Jadwal</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                            while ($data = mysql_fetch_array($sql)) {
                        ?>    
                        <tr>
                            <td align="center"><?php echo $no_urut; ?></td>
                            <td><?php echo $data ['nidn']; ?></td>
                            <td><?php echo $data ['semester']; ?></td>
                            <td><?php echo $data ['thn_ajaran']; ?></td>
                            <td><?php echo $data ['hari_1']; ?>  <?php echo ":" ;?> <?php echo $data ['jam_1']; ?><?php echo "</br>" ; ?>
                                <?php echo $data ['hari_2']; ?>  <?php echo ":" ;?> <?php echo $data ['jam_2']; ?><?php echo "</br>" ; ?>
                                <?php echo $data ['hari_3']; ?>  <?php echo ":" ;?> <?php echo $data ['jam_3']; ?>
                            </td>
                            <?php $jtgl = tgl_indo($data['tgl_input']);?>
                            <td><?php echo $jtgl ?></td>
                           
                            <?php
								$arSt = array(
                                    "0" => "<span class='label label-warning'>Dalam Proses</span>",
                                    "1" => "<span class='label label-success'>Disetujui</span>",
                                    "2" => "<span class='label label-danger'>Tidak Disetujui</span>"
                                );
                                    $st = $data['status'];
                                    $status = $arSt[$st];

                                $arSt1 = array(
                                    "0" => "<span class='label label-warning'>Dalam Proses</span>",
                                    "1" => "<span class='label label-success'>Disetujui</span>",
                                    "2" => "<span class='label label-danger'>Tidak Disetujui</span>"
                                );
                                    $st1 = $data['status1'];
                                    $status1 = $arSt1[$st1];
                            ?>
                            <td><?php echo $status ?></td>
                            <td><?php echo $status1 ?></td>
                            
                            <td>
                                <a href='homepage.php?p=add_jadwal&ubah=<?php echo $data['id_jadwal'] ?>' >
                                <button id='btn_create' class='btn btn-xs btn-primary' data-toggle='tooltip' data-container='body' title='Add Jadwal'><span class='glyphicon glyphicon-eye-open' aria-hidden='true'></span></button></a>                                
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