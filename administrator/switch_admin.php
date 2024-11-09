<?php
session_start();
error_reporting(0);
	switch ($_GET['p']) {
		case'';
			include 'modular/dashboard.php';
			break;
		case 'dashboard':
			include 'modular/dashboard.php';
			break;
		case 'ubah_password':
			include 'modular/ubah_password.php';
			break;
		case 'data_pengajuankp':
			include 'modular/data_pengajuankp.php';
			break;
		case 'data_pengajuanskripsi':
			include 'modular/data_pengajuanskripsi.php';
			break;
		case 'form_dbmahasiswa':
			include 'modular/form_dbmahasiswa.php';
			break;
			
		case 'jalan':
			include 'modular/jalan.php';
			break;
		case 'prodi':
			include 'modular/data_prodi.php';
			break;
		case 'add_prodi':
			include 'modular/add_prodi.php';
			break;
		case 'edit_prodi':
			include 'modular/edit_prodi.php';
			break;
		case 'hapus_prodi':
			include 'modular/hapus_prodi.php';
			break;

		case 'pengumuman':
			include 'modular/pengumuman.php';
			break;
		case 'add_pengumuman':
			include 'modular/add_pengumuman.php';
			break;
		case 'edit_pengumuman':
			include 'modular/edit_pengumuman.php';
			break;
		case 'hapus_pengumuman':
			include 'modular/hapus_pengumuman.php';
			break;
		
		case 'cetak':
			include 'modular/cetak.php';
			break;
		case 'cetak_laporan':
			include 'modular/cetak_laporan.php';
			break;
		case 'add_surat':
			include 'modular/add_surat.php';
			break;
		case 'edit_surat':
			include 'modular/edit_surat.php';
			break;
		case 'hapus_surat':
			include 'modular/hapus_surat.php';
			break;

		case 'data_admin':
			include 'modular/data_admin.php';
			break;
		case "add_admin";
			include 'modular/add_admin.php';
			break;
		case "edit_admin";
			include 'modular/edit_admin.php';
			break;
		case "hapus_admin";
			include 'modular/hapus_admin.php';
			break;

		case 'data_dosen':
			include 'modular/data_dosen.php';
			break;
		case 'add_dosen':
			include 'modular/add_dosen.php';
			break;
		case 'edit_dosen':
			include 'modular/edit_dosen.php';
			break;
		case 'hapus_dosen':
			include 'modular/hapus_dosen.php';
			break;

		case 'data_dekan':
			include 'modular/data_dekan.php';
			break;
		case 'add_dekan':
			include 'modular/add_dekan.php';
			break;
		case 'edit_dekan':
			include 'modular/edit_dekan.php';
			break;
		case 'hapus_dekan':
			include 'modular/hapus_dekan.php';
			break;

		case 'data_kaprodi':
			include 'modular/data_kaprodi.php';
			break;
		case 'add_kaprodi':
			include 'modular/add_kaprodi.php';
			break;
		case 'edit_kaprodi':
			include 'modular/edit_kaprodi.php';
			break;
		case 'hapus_kaprodi':
			include 'modular/hapus_kaprodi.php';
			break;

		case 'data_mahasiswa':
			include 'modular/data_mahasiswa.php';
			break;
		case 'add_mahasiswa':
			include 'modular/add_mahasiswa.php';
			break;
		case 'edit_mahasiswa':
			include 'modular/edit_mahasiswa.php';
			break;
		case 'hapus_mahasiswa':
			include 'modular/hapus_mahasiswa.php';
			break;

		case 'data_kp':
			include 'modular/data_kp.php';
			break;
		case 'add_kp':
			include 'modular/add_kp.php';
			break;
		case 'edit_kp':
			include 'modular/edit_kp.php';
			break;
		case 'hapus_kp':
			include 'modular/hapus_kp.php';
			break;
		case 'bimbingan_kp':
			include 'modular/bimbingan_kp.php';
			break;
		case 'add_bimbingan_kp':
			include 'modular/add_bimbingan_kp.php';
			break;
		case 'hapus_bimbingan_kp':
			include 'modular/hapus_bimbingan_kp.php';
			break;
		case 'edit_bimbingan_kp':
			include 'modular/edit_bimbingan_kp.php';
			break;

		case 'data_skripsi':
			include 'modular/data_skripsi.php';
			break;
		case 'add_skripsi':
			include 'modular/add_skripsi.php';
			break;
		case 'edit_skripsi':
			include 'modular/edit_skripsi.php';
			break;
		case 'hapus_skripsi':
			include 'modular/hapus_skripsi.php';
			break;
		case 'bimbingan_skripsi':
			include 'modular/bimbingan_skripsi.php';
			break;
		case 'add_bimbingan_skripsi':
			include 'modular/add_bimbingan_skripsi.php';
			break;
		case 'hapus_bimbingan_skripsi':
			include 'modular/hapus_bimbingan_skripsi.php';
			break;
		case 'edit_bimbingan_skripsi':
			include 'modular/edit_bimbingan_skripsi.php';
			break;
		
		case "backup_data";
			include 'modular/backup_data.php';
			break;
		case "restore_data";
			include 'modular/restore_data.php';
			break;

		case 'admjadwal':
			include 'modular/admjadwal.php';
			break;
		case 'hapus_pengumuman':
			include 'modular/hapus_pengumuman.php';
			break;

		case 'tahun_ajaran':
			include 'modular/tahun_ajaran.php';
			break;
		case 'add_tahun_ajaran':
			include 'modular/add_tahun_ajaran.php';
			break;
		case 'ubah_tahun_ajaran':
			include 'modular/ubah_tahun_ajaran.php';
			break;
		case 'hapus_tahun_ajaran':
			include 'modular/hapus_tahun_ajaran.php';
			break;
	}

?>