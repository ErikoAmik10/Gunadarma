<?php include 'config/koneksi.php'; ?>
<?php include 'modular/pagination1.php'; ?>

<section class="content-header">      
    <h1> Riwayat Judul </h1>
    <ol class="breadcrumb">
        <li><a href="homepage.php?p=dashboard"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Riwayat Judul</li>
    </ol>
</section>

<section class="content">
        <!-- quick email widget -->
        <div class="box box-info">
            <div class="box-header">
            </div>
    <!-- quick email widget -->
            <div class="row-fluid">

                <?php

                    $sql =  "SELECT * FROM pengajuan";
                    $result = mysql_query($sql);

                    ///pagination config start
                    $rpp = 10; // jumlah record per halaman
                    $reload = "data_admin.php?pagination=true";
                    $page = intval($_GET["page"]);
                    if($page<=0) $page = 1;  
                    $tcount = mysql_num_rows($result);
                    $tpages = ($tcount) ? ceil($tcount/$rpp) : 1; // total pages, last page number
                    $count = 0;
                    $i = ($page-1)*$rpp;
                    $no_urut = ($page-1)*$rpp;
                    //pagination config end
                ?>

                <table id="myTable" class="table table-striped table-bordered table-hover">
                    <thead>
                        <tr>
                            <th class="center" width="5px">No</th>
                            <th class="center" width="10px">Tanggal</th>
                            <th class="center" width="150px">Judul</th>
                            <th class="center" width="150px">Status</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                            while(($count<$rpp) && ($i<$tcount)) {
                            mysql_data_seek($result,$i);
                            $data = mysql_fetch_array($result);
                        ?>    
                        <tr>
                            <td><?php echo ++$no_urut; ?></td>
                            <td><?php echo '10 Oktober 2015' ?></td>
                            <td><?php echo 'Sistem Informasi Nilai'; ?></td>
                            <td><span class="label label-success">Diterima</span>
                                <span class="label label-danger">Ditolak</span></td>        
                        </tr>
                        <?php
                            $i++; 
                            $count++;
                            }
                        ?>  
                    </tbody>
                </table>
            </div>
<!-- /.row (main row) -->
            </div>
    <!-- /.row (main row) -->
</section>