<?php session_start(); ?>
<?php include '../config/koneksi.php'; ?>
<?php include '../config/fungsi_indotgl.php'; ?>
<?php include 'modular/pagination1.php'; ?>


<?php
$ID = $_SESSION['nim'];
$sql = mysql_query("SELECT * FROM mahasiswa WHERE nim='$ID'");
$data = mysql_fetch_array($sql);
?>

<section class="content-header">
    <h1> Dashboard </h1>
    <ol class="breadcrumb">
        <li><a href="homepage.php?p=dashboard"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Dashboard</li>
    </ol>
</section>
<!-- Main content -->
<section class="content">
    <div class="alert alert-info alert-dismissible">
        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
        <strong>Selamat Datang <span class="username"><?php echo $_SESSION['nama_mhs'] ?></span>,
            <br>Anda Berhasil Login sebagai mahasiswa</strong>
    </div>

    <div class="row">
        <div class="col-md-3">
            <!-- Profile Image -->
            <div class="box box-primary">
                <div class="box-body box-profile">
                    <img src="../administrator/foto/<?php echo $_SESSION['foto_mhs']; ?>" class="profile-user-img img-responsive img-circle" alt="User image">
                    <h3 class="profile-username text-center"><?php echo $_SESSION['nama_mhs'] ?></h3>
                    <p class="text-muted text-center">
                        <?php
                        $qsp = mysql_query("SELECT * FROM prodi");
                        while ($s = mysql_fetch_array($qsp)) {
                            if ($s[pnama] == $data[program_studi]) {
                                echo "<option value='$s[pnama]' <selected>$s[pnama]</option>";
                            }
                        }
                        ?>
                    </p>
                </div>
            </div>
        </div>
        <?php
        $q = mysql_num_rows(mysql_query("SELECT id_pengajuan FROM pengajuan WHERE nim ='$ID' AND (status='0' or status='1')"));
        if ($q > 0) {
            $jditerima = mysql_query("SELECT * FROM pengajuan WHERE nim='$ID' AND status ='1' ");
            $data = mysql_fetch_array($jditerima);
            $judul = $data['judul'];
            if (isset($data['id_pengajuan'])) {
        ?>
                <div class='col-md-9'>
                    <div class='callout callout-warning'>
                        <h4>Selamat !! Judul yang anda ajukan "<?php echo $data['judul']; ?>" telah diterima</h4>
                        <p>
                            <?php
                            $qsp = 'mysql_query'("SELECT * FROM dosen");
                            while ($s = 'mysql_fetch_array'($qsp)) {
                                if ($s['nama_lengkap'] == $data['pembimbing1']) {
                                    echo "<option value='$s[nama_lengkap]' <selected>$s[nama_lengkap]</option>";
                                }
                            }
                            ?>
                        </p>                                      
                    </div>
                </div>
            <?php
            } else {
            ?>
                <div class='col-md-9'>
                    <div class='callout callout-warning'>
                        <h4>Judul yang anda ajukan masih dalam proses verifikasi</h4>
                        <p>Jika judul anda <b>diterima</b>, maka akan tampil notifikasi diterima, namun jika judul <b>ditolak</b>, maka silahkan ajukan judul kembali.</p>
                    </div>
                </div>
            <?php
            }
            ?>
        <?php
        } else {
        ?>
            <div class='col-md-9'>
                <div class='callout callout-danger'>
                    <h4>Silahkan Ajukan Judul Anda</h4>
                </div>
            </div>
        <?php
        }
        ?>
    </div>
</section>

<section class="content">
    <div class="box box-info">
        <div class="box-header">
            <h4>Riwayat Judul yang pernah diajukan</h4>
        </div>
        <div class="row-fluid">
            <?php
            $sql =  "SELECT * FROM pengajuan WHERE nim='$ID' ORDER BY status ASC";
            $result = mysql_query($sql);

            ///pagination config start
            $rpp = 10; // jumlah record per halaman
            $reload = "data_admin.php?pagination=true";
            $page = intval($_GET["page"]);
            if ($page <= 0) $page = 1;
            $tcount = mysql_num_rows($result);
            $tpages = ($tcount) ? ceil($tcount / $rpp) : 1; // total pages, last page number
            $count = 0;
            $i = ($page - 1) * $rpp;
            $no_urut = ($page - 1) * $rpp;
            //pagination config end
            ?>

            <table class="table table-striped table-bordered table-hover">
                <thead>
                    <tr bgcolor="6495ed">
                        <th>
                            <font color="white">No.</font>
                        </th>
                        <th>
                            <font color="white">Tanggal</font>
                        </th>
                        <th>
                            <font color="white">Judul Penulisan</font>
                        </th>
                        <th>
                            <font color="white">Semester</font>
                        </th>
                        <th>
                            <font color="white">Tahun Ajaran</font>
                        </th>
                        <th>
                            <font color="white">Jenis Penulisan</font>
                        </th>
                        <th>
                            <font color="white">Status</font>
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    while (($count < $rpp) && ($i < $tcount)) {
                        mysql_data_seek($result, $i);
                        $data = mysql_fetch_array($result);
                        $jtgl = tgl_indo($data['tanggal']);
                        $arSt = array(
                            "0" => "<span class='label label-warning'>Dalam proses</span>",
                            "1" => "<span class='label label-success'>Diterima</span>",
                            "2" => "<span class='label label-danger'>Ditolak</span>"
                        );
                        $st = $data['status'];
                        $status = $arSt[$st];
                    ?>
                        <tr>
                            <td align="center"><?php echo ++$nomor; ?>.</td>
                            <td><?php echo $jtgl; ?></td>
                            <td><?php echo $data['judul']; ?></td>
                            <td>
                                <?php
                                if ($data["semester"] == "ganjil") {
                                    echo "Ganjil";
                                } else {
                                    echo "Genap";
                                }
                                ?>
                            </td>
                            <td><?php echo $data['thn_ajaran']; ?></td>
                            <td>
                                <?php
                                if ($data["jenis_laporan"] == "kp") {
                                    echo "Kerja Praktek";
                                } else {
                                    echo "Skripsi";
                                }
                                ?>
                            </td>
                            <td><?php echo $status ?></td>
                        </tr>
                    <?php
                        $i++;
                        $count++;
                    }
                    ?>
                </tbody>
            </table>
            <div><?php echo paginate_one($reload, $page, $tpages); ?></div>
        </div>
    </div>
</section>