<?php
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
		
		case 'persetujuan_kp':
			include 'modular/persetujuan_kp.php';
			break;
		case 'persetujuan_kpterima':
			include 'modular/persetujuan_kpterima.php';
			break;
		case 'persetujuan_kptolak':
			include 'modular/persetujuan_kptolak.php';
			break;
		
		case 'persetujuan_skripsi':
			include 'modular/persetujuan_skripsi.php';
			break;
		case 'persetujuan_skripsiterima':
			include 'modular/persetujuan_skripsiterima.php';
			break;
		case 'persetujuan_skripsitolak':
			include 'modular/persetujuan_skripsitolak.php';
			break;
		
		case 'distribusi_dosbingskripsi':
			include 'modular/distribusi_dosbingskripsi.php';
			break;
		case 'dosbing_skripsi':
			include 'modular/dosbing_skripsi.php';
			break;
			
		case 'kp':
			include 'modular/kp.php';
			break;
		case 'pengajuan_kp':
			include 'modular/pengajuan_kp.php';
			break;
		
		case 'skripsi':
			include 'modular/skripsi.php';
			break;
		case 'pengajuan_skripsi':
			include 'modular/pengajuan_skripsi.php';
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

		case 'monitoring_kp':
			include 'modular/monitoring_kp.php';
			break;
		case 'view_data_kp':
		include 'modular/view_data_kp.php';
		    break;
		case 'monitoring_skripsi':
			include 'modular/monitoring_skripsi.php';
			break;
		case 'view_data':
			include 'modular/view_data.php';
			break;

		case 'distribusi_dosbingkp':
			include 'modular/distribusi_dosbingkp.php';
			break;
		case 'dosbing_kp':
			include 'modular/dosbing_kp.php';
			break;
			
		case 'cek_jadwal':
			include 'modular/cek_jadwal.php';
			break;
		case 'jadwal_disetujui':
			include 'modular/jadwal_disetujui.php';
			break;
		case 'hapus_jadwal':
			include 'modular/hapus_jadwal.php';
			break;
		case 'hapus_cek':
			include 'modular/hapus_cek.php';
			break;
		
		case 'dist_kp':
			include 'modular/dist_kp.php';
			break;
		case 'dist_skripsi':
			include 'modular/dist_skripsi.php';
			break;
		case 'data_kp':
			include 'modular/data_kp.php';
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

		case 'edit_distribusi':
			include 'modular/edit_distribusi.php';
			break;
		case 'edit_distribusitolak':
			include 'modular/edit_distribusitolak.php';
			break;	


		case 'hapus_komen':
			include 'modular/hapus_komen.php';
			break;
		case 'hapus_komentolak':
			include 'modular/hapus_komentolak.php';
			break;

			case 'pengumuman2':
			include 'modular/pengumuman2.php';
			break;
		case 'add_pengumuman':
			include 'modular/add_pengumuman2.php';
			break;
		case 'edit_pengumuman':
			include 'modular/edit_pengumuman2.php';
			break;
		case 'hapus_pengumuman':
			include 'modular/hapus_pengumuman2.php';
			break;

		case 'ganjil18':
			include 'modular/ganjil18.php';
			break;
		case 'genap18':
			include 'modular/genap18.php';
			break;
		case 'ganjil19':
			include 'modular/ganjil19.php';
			break;
		case 'genap19':
			include 'modular/genap19.php';
			break;
		case 'ganjil20':
			include 'modular/ganjil20.php';
			break;
		case 'genap20':
			include 'modular/genap20.php';
			break;
		case 'ganjil21':
			include 'modular/ganjil21.php';
			break;
		case 'genap21':
			include 'modular/genap21.php';
			break;
		case 'eksport':
			include 'modular/eksport.php';
			break;	
	}
