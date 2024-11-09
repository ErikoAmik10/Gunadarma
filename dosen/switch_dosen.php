<?php
error_reporting(0);
switch ($_GET['p']) {
	case '';
		include 'modular/dashboard.php';
		break;

	case 'dashboard':
		include 'modular/dashboard.php';
		break;

	case 'data_admin':
		include 'modular/data_admin.php';
		break;

	case 'data_mahasiswa':
		include 'modular/data_mahasiswa.php';
		break;

	case 'data_dosen':
		include 'modular/data_dosen.php';
		break;

	case 'ubah_password':
		include 'modular/ubah_password.php';
		break;

	case 'data_kp':
		include 'modular/data_kp.php';
		break;
	case 'bimbingan_kp':
		include 'modular/bimbingan_kp.php';
		break;
	case 'selesai_kp':
		include 'modular/selesai_kp.php';
		break;
	case 'edit_bimbingan_kp':
		include 'modular/edit_bimbingan_kp.php';
		break;

	case 'data_skripsi':
		include 'modular/data_skripsi.php';
		break;
	case 'bimbingan_skripsi':
		include 'modular/bimbingan_skripsi.php';
		break;
	case 'edit_bimbingan_skripsi':
		include 'modular/edit_bimbingan_skripsi.php';
		break;
	case 'input_jadwal':
		include 'modular/input_jadwal.php';
		break;
	case 'riwayat_jadwal':
		include 'modular/riwayat_jadwal.php';
		break;
	case 'jumlah_mhs':
		include 'modular/jumlah_mhs.php';
		break;
	case 'distr_skripsi':
		include 'modular/distr_skripsi.php';
		break;
	case 'edit_jadwal':
		include 'modular/edit_jadwal.php';
		break;
	case 'hapus_jadwal':
		include 'modular/hapus_jadwal.php';
		break;
	case 'eksport';
		include 'modular/eksport.php';
		break;
	case 'pdf';
		include 'modular/pdf.php';
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
				case 'persetujuan_skripsi':
					include 'modular/persetujuan_skripsi.php';
					break;
				case 'persetujuan_skripsiterima':
					include 'modular/persetujuan_skripsiterima.php';
					break;
				case 'persetujuan_skripsitolak':
					include 'modular/persetujuan_skripsitolak.php';
					break;
}
