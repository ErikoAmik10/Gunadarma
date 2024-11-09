DROP TABLE admin;

CREATE TABLE `admin` (
  `id_admin` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `email` varchar(20) NOT NULL,
  `level` varchar(15) NOT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

INSERT INTO admin VALUES("2","admin1","c3284d0f94606de1fd2af172aba15bf3","Akhmad Nashfan","akhmad@gmail.com","admin");
INSERT INTO admin VALUES("3","admin2","21232f297a57a5a743894a0e4a801fc3","sofwatul","admin@gmail.com","admin");
INSERT INTO admin VALUES("4","admin3","21232f297a57a5a743894a0e4a801fc3","sulaiman","sul@gmail.com","admin");
INSERT INTO admin VALUES("5","admin4","fc1ebc848e31e0a68e868432225e3c82","Siti","siti@gmail.com","admin");



DROP TABLE dekan;

CREATE TABLE `dekan` (
  `id_dekan` int(5) NOT NULL AUTO_INCREMENT,
  `nidn` varchar(12) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `no_telp` varchar(13) NOT NULL,
  `email` varchar(30) NOT NULL,
  `fakultas` varchar(30) NOT NULL,
  `foto` varchar(30) NOT NULL,
  `username` varchar(12) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` varchar(100) NOT NULL,
  PRIMARY KEY (`id_dekan`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO dekan VALUES("2","32435","Harries Arizonia Ismail","semarang","semarang","1997-07-02","0897746574","dosen@gmail.com","Teknik dan Informatika","logounaki.png","110","3da2f457ad7c0edf1c94e1ea87b0818d","dekan");



DROP TABLE dosen;

CREATE TABLE `dosen` (
  `id_dosen` int(5) NOT NULL AUTO_INCREMENT,
  `NIDN` int(12) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `no_telp` int(13) NOT NULL,
  `email` varchar(30) NOT NULL,
  `fakultas` varchar(30) NOT NULL,
  `foto` varchar(30) NOT NULL,
  `username_login` int(12) NOT NULL,
  `password_login` varchar(100) NOT NULL,
  PRIMARY KEY (`id_dosen`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO dosen VALUES("1","606037001","Suwarno, S.Si., M.Kom.","","","0000-00-00","0","","Teknik dan Informatika","","0","");
INSERT INTO dosen VALUES("2","615107201","Alexander Dharmawan, S.T., M.Kom.","","","0000-00-00","0","","Teknik dan Informatika","","0","");



DROP TABLE kaprodi;

CREATE TABLE `kaprodi` (
  `id_kaprodi` int(5) NOT NULL AUTO_INCREMENT,
  `nidn` varchar(12) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `no_telp` varchar(13) NOT NULL,
  `email` varchar(30) NOT NULL,
  `fakultas` varchar(30) NOT NULL,
  `prodi` varchar(30) NOT NULL,
  `foto` varchar(30) NOT NULL,
  `username` varchar(12) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` varchar(100) NOT NULL,
  PRIMARY KEY (`id_kaprodi`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO kaprodi VALUES("1","606037001","Satrio Agung Prakoso","jalan","Kudus","2019-08-23","9089","satrio@gmail.com","Teknik dan Informatika","1","fanart.jpg","3001","3c13922905d2bc454cc35e665335e2fd","kaprodi");
INSERT INTO kaprodi VALUES("2","6754553","Sinta Tridian","semarang","semarang","1778-08-05","08976567754","as@gmail.com","Teknik dan Informatika","2","20180510_065807.jpg","3002","3c13922905d2bc454cc35e665335e2fd","kaprodi");



DROP TABLE mahasiswa;

CREATE TABLE `mahasiswa` (
  `id_mahasiswa` int(5) NOT NULL AUTO_INCREMENT,
  `NIM` varchar(12) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `no_telp` varchar(13) NOT NULL,
  `email` varchar(30) NOT NULL,
  `fakultas` varchar(30) NOT NULL,
  `program_studi` varchar(30) NOT NULL,
  `foto` varchar(20) NOT NULL,
  `username_login` varchar(9) NOT NULL,
  `password_login` varchar(100) NOT NULL,
  `level` varchar(100) NOT NULL,
  PRIMARY KEY (`id_mahasiswa`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

INSERT INTO mahasiswa VALUES("22","2.23.15.0007","Akhmad Nashfan Sabani","jalan","Semarang","2019-08-10","908","baniakhmad80@gmail.com","Teknik dan Informatika","2","nawa.jpg","100001","5787be38ee03a9ae5360f54d9026465f","mahasiswa");
INSERT INTO mahasiswa VALUES("25","2.23.15.0001","Daniel Kurniawan","jalan","Semarang","2019-08-31","9089","baniakhmad80@gmail.com","Teknik dan Informatika","1","mysweet.jpg","100001","74be16979710d4c4e7c6647856088456","mahasiswa");
INSERT INTO mahasiswa VALUES("26","2.23.15.0010","Sofwatul Choiriyah","jalan bulung kulon","Kudus","2019-08-06","908","sofwatulch@gmail.com","Teknik dan Informatika","1","FOTO.jpg","223150010","5787be38ee03a9ae5360f54d9026465f","mahasiswa");
INSERT INTO mahasiswa VALUES("27","2.22.15.0001","sulaiman","jalan","Semarang","2019-08-10","908","baniakhmad80@gmail.com","Teknik dan Informatika","1","collab.jpg","2019","5787be38ee03a9ae5360f54d9026465f","mahasiswa");



DROP TABLE pengajuan_kp;

CREATE TABLE `pengajuan_kp` (
  `id_pengajuan` int(10) NOT NULL AUTO_INCREMENT,
  `id_mahasiswa` int(50) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `file` varchar(100) NOT NULL,
  `status` int(10) NOT NULL DEFAULT '0',
  `approv` int(10) NOT NULL DEFAULT '0',
  `tanggal` date NOT NULL,
  PRIMARY KEY (`id_pengajuan`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

INSERT INTO pengajuan_kp VALUES("1","26","Sistem Informasi Desa","sistem.pdf","2","0","2019-08-07");
INSERT INTO pengajuan_kp VALUES("2","26","Sistem Informasi Desa berbasis Web","sistem1.pdf","2","0","0000-00-00");
INSERT INTO pengajuan_kp VALUES("3","26","Monitoring Tugas","monitor.pdf","0","0","2019-08-15");
INSERT INTO pengajuan_kp VALUES("4","27","Sistem Informasi Sekolah","sekolah.pdf","2","0","2019-08-08");
INSERT INTO pengajuan_kp VALUES("5","22","sistem informasi akademik ","CV_SOFWATUL.pdf","1","1","2019-08-16");
INSERT INTO pengajuan_kp VALUES("6","27","sistem administrasi","BAB1.pdf","1","1","2019-08-16");
INSERT INTO pengajuan_kp VALUES("7","22","sistem aplikasi data karyawan","CV_SOFWATUL.pdf","2","0","2019-08-20");



DROP TABLE pengumuman;

CREATE TABLE `pengumuman` (
  `id_pengumuman` int(30) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) NOT NULL,
  `file` varchar(100) NOT NULL,
  `tgl_pengumuman` date NOT NULL,
  PRIMARY KEY (`id_pengumuman`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO pengumuman VALUES("1","Mahasiswa berhak KP                                                              ","115-182-1-PB.pdf","2019-08-21");
INSERT INTO pengumuman VALUES("2","Mahasiswa Berhak Skripsi                                               ","118-343-3-PB.pdf","2019-08-21");



DROP TABLE prodi;

CREATE TABLE `prodi` (
  `pid` int(5) NOT NULL AUTO_INCREMENT,
  `pnama` varchar(50) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO prodi VALUES("1","Teknik Informatika - S1");
INSERT INTO prodi VALUES("2","Sistem Informasi - S1");



DROP TABLE tblkp;

CREATE TABLE `tblkp` (
  `no` int(5) NOT NULL AUTO_INCREMENT,
  `NIM` varchar(12) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `judul` varchar(250) NOT NULL,
  `dosbing_1` varchar(50) NOT NULL,
  `fakultas` varchar(30) NOT NULL,
  `program_studi` varchar(30) NOT NULL,
  `tahun_ajaran` varchar(16) NOT NULL,
  `jenis_laporan` varchar(15) NOT NULL,
  `keterangan` varchar(20) NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=latin1;

INSERT INTO tblkp VALUES("1","2.23.16.0008","Ferry Lexander","Aplikasi Pengolahan Data Stok Barang Dengan Java Pada CV. Pelita Mas","Yani Prihati, S.Si., M.Kom.","Teknik dan Informatika","Teknik Informatika - S1","Gasal 2018/2019","Kerja Praktek","Baru");
INSERT INTO tblkp VALUES("2","2.23.16.0027","Natalia Kurnia Hapsari","Perancangan Sistem Informasi Absensi Manggunakan PHP di PT. British Gardens Semarang","Jutono Gondohanindijo, M.Kom.","Teknik dan Informatika","Teknik Informatika - S1","Gasal 2018/2019","Kerja Praktek","Baru");
INSERT INTO tblkp VALUES("3","2.23.16.0028","Rico Sugiarto D","Sistem Informasi Inventory Stok Barang Berbasis WEB pada CV. Kartika Sari","Alexander Dharmawan, S.T. M.Kom.","Teknik dan Informatika","Teknik Informatika - S1","Gasal 2018/2019","Kerja Praktek","Baru");
INSERT INTO tblkp VALUES("4","2.23.17.0006","Adhi Mulyanto Kawengian","Aplikasi Desktop Inventory Dengan Java pada CV. Cempaka Semarang","Sinta Tridian Galih, S.T., M.Kom.","Teknik dan Informatika","Teknik Informatika - S1","Gasal 2018/2019","Kerja Praktek","Baru");
INSERT INTO tblkp VALUES("5","2.23.15.0002","Ken Julio A","Perancangan Aplikasi Penjualan Mebel Berbasis Web Pada PT. LIGNA FURNITURE","Alexander Dharmawan, S.T., M.Kom.","Teknik dan Informatika","Teknik Informatika - S1","Gasal 2018/2019","Kerja Praktek","Baru");
INSERT INTO tblkp VALUES("6","2.23.15.0004","Rendis Arfendo","Perancangan Aplikasi Sistem Informasi Monitoring Siswa Berbasis Web Server Dan Android Client (Studi Kasus : SMK Yayasan Pharmasi Semarang)","Yusup, S.Si., M.Kom.","Teknik dan Informatika","Teknik Informatika - S1","Gasal 2018/2019","Kerja Praktek","Baru");
INSERT INTO tblkp VALUES("7","2.23.15.0006","Safki Nurul Huda","Perancangan Sistem Penggajian Karyawan Toko PIH FF JAYA Berbasis Visual Basic","Sinta Tridian Galih, S.T., M.Kom.","Teknik dan Informatika","Teknik Informatika - S1","Gasal 2018/2019","Kerja Praktek","Baru");
INSERT INTO tblkp VALUES("8","2.23.15.0011","Roy Lando Batuara","Perancangan Sistem Informasi Penjualan Jam Tangan  Berbasis Web Pada Toko Panen Watch","Jutono Gondohanindijo, M.Kom.","Teknik dan Informatika","Teknik Informatika - S1","Gasal 2018/2019","Kerja Praktek","Baru");
INSERT INTO tblkp VALUES("9","2.23.15.0013","Rizka Miladyna Yunash","Perancangan Website Akademik Berbasis Web Dinamis Menggunakan Framework Bootstrap Pada SMA Negeri 1 Kota Mungkid","Satrio Agung Prakoso, S.T.","Teknik dan Informatika","Teknik Informatika - S1","Gasal 2018/2019","Kerja Praktek","Baru");
INSERT INTO tblkp VALUES("10","2.23.15.0017","Ade Kristianto","Perancangan Aplikasi Customer Relationship Management (CRM) Berbasis Mobile Dengan Framework Flutter Di Yayasan Anugrah Pressindo Indonesia (Anugrah Ministries)","Satrio Agung Prakoso, S.T.","Teknik dan Informatika","Teknik Informatika - S1","Gasal 2018/2019","Kerja Praktek","Baru");
INSERT INTO tblkp VALUES("11","2.23.15.0018","Daniel Bezaliel Aholiad Welang","Aplikasi Dekstop Dokumentasi Arsip Menggunakan Bahasa Pemrograman Java Dan Database Mysql Pada SMP Kristen Gergaji Semarang","Yohana Tri Widayati, S.E., M.Kom.","Teknik dan Informatika","Teknik Informatika - S1","Gasal 2018/2019","Kerja Praktek","Baru");
INSERT INTO tblkp VALUES("12","2.23.15.0021","Yupin Enumbi","Sistem Perpustakaan Barbasis Web di PT Perkantas Semarang Selatan","Yani Prihati, S.Si., M.Kom.","Teknik dan Informatika","Teknik Informatika - S1","Gasal 2018/2019","Kerja Praktek","Baru");
INSERT INTO tblkp VALUES("13","2.23.11.0072","Aris Syaifudin","Membangun Toko Online (Online Shop) Produk Baja Ringan CV. Karya Usaha Mandiri Semarang","Satrio Agung Prakoso, S.T.","Teknik dan Informatika","Teknik Informatika - S1","Genap 2017/2018","Kerja Praktek","Angkatan 40");
INSERT INTO tblkp VALUES("14","2.23.99.0162","Indriawan Prastomo","Analisis Desain Sistem Pakar Konsultasi Pembuatan Surat Ijin Usaha Perdagangan Pada Dinas Penanaman Modal dan Pelayanan Terpadu Satu Pintu","Yani Prihati, S.Si., M.Kom.","Teknik dan Informatika","Teknik Informatika - S1","Genap 2017/2018","Kerja Praktek","Skripsi");
INSERT INTO tblkp VALUES("15","2.23.12.0013","Merlipson Tarinate","Sistem Informasi Absensi Pegawai PT. Asuransi Jiwasraya (PERSERO), Semarang Barat Berbasis WEB","Suwarno, S.Si., M.Kom.","Teknik dan Informatika","Teknik Informatika - S1","Genap 2017/2018","Kerja Praktek","Skripsi");
INSERT INTO tblkp VALUES("16","2.23.14.0016","Andreas Adinata","Perancangan Aplikasi Media Pembelajaran Penggolongan Binatang Menggunakan Adobe Flash CS 6 Pada Sekolah Dasar Terang Bagi Bangsa","Yani Prihati, S.Si., M.Kom.","Teknik dan Informatika ","Teknik Informatika - S1","Genap 2017/2018","Kerja Praktek","Skripsi");
INSERT INTO tblkp VALUES("17","2.23.15.0001","Daniel Kurniawan","Perancangan Aplikasi Penjualan Meubel Berbasis Web Pada PT Alam Kayu Sakti Semarang","Alexander Dharmawan, S.T., M.Kom.","Teknik dan Informatika","Teknik Informatika - S1","Genap 2017/2018","Kerja Praktek","");
INSERT INTO tblkp VALUES("18","2.23.15.0003","Imam Lilik Setiaji","Perancangan Sistem E-Learning Berbasis Web Pada SMK Bina Nusantara Semarang","Sinta Tridian Galih, S.T., M.Kom.","Teknik dan Informatika","Teknik Informatika - S1","Genap 2017/2018","Kerja Praktek","Skripsi");
INSERT INTO tblkp VALUES("19","2.23.15.0005","Agastya Pradhama W","Perancangan Sistem Pengolahan Data Surat Masuk dan Keluar Pada PT. Alfa Komputer Semarang","Jutono Gondohanindijo, M.Kom.","Teknik dan Informatika","Teknik Informatika - S1","Genap 2017/2018","Kerja Praktek","");
INSERT INTO tblkp VALUES("20","2.23.15.0007","Akhmad Nashfan Sa\'bani","Perancangan Sistem Informasi Pengolahan Data Nilai Siswa Pada SMK Pelita Nusantara 2 Semarang","Yohana Tri Widayati, S.E., M.Kom.","Teknik dan Informatika","Teknik Informatika - S1","Genap 2017/2018","Kerja Praktek","Skripsi");
INSERT INTO tblkp VALUES("21","2.23.15.0008","Michael Soni Susanto","Perancangan Sistem Rekrutmen Berbasis Web Pada PT. Karya Zirang Semarang","Satrio Agung Prakoso, S.T.","Teknik dan Informatika","Teknik Informatika - S1","Genap 2017/2018","Kerja Praktek","");
INSERT INTO tblkp VALUES("22","2.23.15.0009","Angeline Renita Notobudojo","Perancangan Aplikasi Logistik Pada PT Alam Kayu Sakti Semarang Menggunakan Visual Basic 6.0","Yusup, S.Si., M.Kom.","Teknik dan Informatika","Teknik Informatika - S1","Genap 2017/2018","Kerja Praktek","");
INSERT INTO tblkp VALUES("23","2.23.15.0010","Sofwatul Choiriyah","Perancangan Sistem Absensi Guru Berbasis Web Menggunakan Bahasa PHP dan Database MySQL Pada SMK Pelita Nusantara 2 Semarang","Satrio Agung Prakoso, S.T.","Teknik dan Informatika","Teknik Informatika - S1","Genap 2017/2018","Kerja Praktek","Skripsi");
INSERT INTO tblkp VALUES("24","2.23.15.0014","Stefanus Jordan","Perancangan Aplikasi Penggajian karyawan Pada PT. Mayora Indah TBK Dengan Menggunakan Visual Basic 6.0","Jutono Gondohanindijo, M.Kom.","Teknik dan Informatika","Teknik Informatika - S1","Genap 2017/2018","Kerja Praktek","");
INSERT INTO tblkp VALUES("25","2.23.13.0003","Jeri Warisman","Perancangan Jasa Delivery Pemesanan Makanan Berbasis Mobile Study Kasus di Swike Asli Purwaodadi Semarang","Satrio Agung Prakoso, S.T.","Teknik dan Informatika","Teknik Informatika - S1","Gasal 2017/2018","Kerja Praktek","Angkatan 39");
INSERT INTO tblkp VALUES("26","2.23.14.0001","Tan Akira Richardo Darmawan","Perancangan Web Sebagai Media Komunikasi Tugas dan Informasi Pada Siswa TK","Jutono Gondohanindijo, M.Kom.","Teknik dan Informatika","Teknik Informatika - S1","Gasal 2017/2018","Kerja Praktek","Skripsi");
INSERT INTO tblkp VALUES("27","2.23.14.0002","Samuel Dwi Prasetyo S","Perancangan Aplikasi Transaksi Pada Robotic Education Semarang ","Yani Prihati, S.Si., M.Kom.","Teknik dan Informatika","Teknik Informatika - S1","Gasal 2017/2018","Kerja Praktek","Skripsi");
INSERT INTO tblkp VALUES("28","2.23.14.0003","Ezra Yoga Irawan","Perancangan Sistem Pemesanan Jasa Berbasis Web di CV. Dwitra Yaka Group","Alexander Dharmawan, S.T., M.Kom.","Teknik dan Informatika","Teknik Informatika - S1","Gasal 2017/2018","Kerja Praktek","Angkatan 40");
INSERT INTO tblkp VALUES("29","2.23.14.0008","Nurchamim","Perancangan Aplikasi Helpdesk Berbasis Web di CV. Dwitra Yaka Group Semarang","Yusup, S.Si., M.Kom.","Teknik dan Informatika","Teknik Informatika - S1","Gasal 2017/2018","Kerja Praktek","Skripsi");
INSERT INTO tblkp VALUES("30","2.23.14.0010","Eka Nur Siswanti","Perancangan Sistem Pendukung Keputusan Kelayakan Pendonoh Darah di UTD PMI Kota Semarang","Ana Wahyuni, S.Si., M.Kom.","Teknik dan Informatika","Teknik Informatika - S1","Gasal 2017/2018","Kerja Praktek","Angkatan 40");
INSERT INTO tblkp VALUES("31","2.23.14.0013","Stephani Sari Tanaka","Perancangan Aplikasi Pemantauan Inventori Pada Robotic Education Semarang","Sinta Tridian Galih, S.T., M.Kom.","Teknik dan Informatika","Teknik Informatika - S1","Gasal 2017/2018","Kerja Praktek","Angkatan 40");
INSERT INTO tblkp VALUES("32","2.23.14.0017","Ferra Oky Netasa","Sistem Pendataan dan Pembaptisan Anggota GITS Puring Berbasis Web","Suwarno, S.Si., M.Kom.","Teknik dan Informatika","Teknik Informatika - S1","Gasal 2017/2018","Kerja Praktek"," Angkatan 40");
INSERT INTO tblkp VALUES("33","2.23.14.0019","Rocky Marciano Hendico Sianturi","Media Informasi Digital Menggunakan Adobe Director 11.5 di Universitas AKI","Satrio Agung Prakoso, S.T.","Teknik dan Informatika","Teknik Informatika - S1","Gasal 2017/2018","Kerja Praktek","Angkatan 40");
INSERT INTO tblkp VALUES("34","2.23.14.0020","Ardwi Jaya Nowama","Informasi Pengurusan Peijinan Trayek dan Rute Angkutan Umum Berbasi Mobile di Kabupaten Demak","Satrio Agung Prakoso, S.T.","Teknik dan Informatika","Teknik Informatika - S1","Gasal 2017/2018","Kerja Praktek","Angkatan 40");
INSERT INTO tblkp VALUES("35","2.23.16.0014","Frida Vivi Rosalina","Perancangan Sistem Informasi Manajemen Pengelolaan Dana Donatur Berbasis Web Pada Lembaga Kesejahteraab Sosial Anak Putera Betlehem Semarang","Sinta Tridian Galih, S.T., M.Kom.","Teknik dan Informatika","Teknik Informatika - S1","Gasal 2017/2018","Kerja Praktek","Angkatan 40");
INSERT INTO tblkp VALUES("36","2.23.13.0007","Desta Masitoch","Sistem Registrasi Undangan Pernikahan Dengan Teknologi Barcode","Yani Prihati, S.Si., M.Kom.","Teknik dan Informatika","Teknik Informatika - S1","Genap 2016/2017","Kerja Praktek","");
INSERT INTO tblkp VALUES("37","2.23.14.0004","Jannatun Naim","Perancangan Sistem Informasi Pengolahan Data Pembayaran Sumbangan Pembinaan Pendidikan (SPP) Pada SMK PGRI 1 Mejobo Kudus","Sinta Tridian Galih, S.T., M.Kom.","Teknik dan Informatika","Teknik Informatika - S1","Genap 2016/2017","Kerja Praktek","Angkatan 39");
INSERT INTO tblkp VALUES("38","2.23.14.0005","Linda Purwasih","Sistem Pengambilan Keputusan Penilaian Kinerja Karyawan Fuzzy Logic Pada SMK PGRI 1 Mejobo Kudus Berbasis Web","Suwarno, S.Si., M.Kom.","Teknik dan Informatika","Teknik Informatika - S1","Genap 2016/2017","Kerja Praktek","Angkatan 39");
INSERT INTO tblkp VALUES("39","2.23.14.0006","Eko Amirul Sofik","Pemeliharaan Jaringan Komputer Pada SMK PGRI 1 Mejobo Kudus","Satrio Agung Prakoso, S.T.","Teknik dan Informatika","Teknik Informatika - S1","Genap 2016/2017","Kerja Praktek","Skripsi");
INSERT INTO tblkp VALUES("40","2.23.14.0007","Zulia Puji Lestari","Perancangan Aplikasi Penyewaan Lapangan United Futsal Kudus","Yusup, S.Si., M.Kom.","Teknik dan Informatika","Teknik Informatika - S1","Genap 2016/2017","Kerja Praktek","Angkatan 40");
INSERT INTO tblkp VALUES("41","2.23.14.0009","Eli Tias Tutuik","Comporation Algoritma C4.5 Dan Naive Bayes Untuk Klasifikasi Kelulusan Mahasiswa Tepat Waktu di Universitas AKI Semarang","Satrio Agung Prakoso, S.T.","Teknik dan Informatika","Teknik Informatika - S1","Genap 2016/2017","Kerja Praktek","Angkatan 40");
INSERT INTO tblkp VALUES("42","2.23.13.0014","Surya Jaya Putra","Perancancangan Media Pembelajaran Matematika Kelas 3 Pada SD Terang Bangsa Berbasis Adobe Flash","Sinta Tridian Galih, S.T., M.Kom.","Teknik dan Informatika","Teknik Informatika - S1","Gasal 2016/2017","Kerja Praktek","Angkatan 38");
INSERT INTO tblkp VALUES("43","2.23.13.0009","Sadi Wantoro Pane","Perancangan Pembuatan Aplikasi Pemesanan Tiket Travel Berbasis Android di Joglo Semar","Suwarno, S.Si., M.Kom.","Teknik dan Informatika","Teknik Informatika - S1","Gasal 2016/2017","Kerja Praktek","");
INSERT INTO tblkp VALUES("44","2.23.13.0011","Yan Mansavi Maniani","Perancangan Bangun Pembelajaran Bahasa Mandarin Untuk Anak-Anak Kelas V - VI Pada SD Petra School","Yani Prihati, S.Si., M.Kom.","Teknik dan Informatika","Teknik Informatika - S1","Gasal 2016/2017","Kerja Praktek","Angkatan 39");
INSERT INTO tblkp VALUES("45","2.23.13.0012","Jonius Daniel","Rancang Bangun Game Edukasi Untuk Pengajaran Berhitung Pada Anak-Anak Kelas I di SD Terang Bagi Bangsa","Ana Wahyuni, S.Si., M.Kom.","Teknik dan Informatika","Teknik Informatika - S1","Gasal 2016/2017","Kerja Praktek","Angkatan 38");
INSERT INTO tblkp VALUES("46","2.23.13.0016","Natan Oktavian Iwan P","Billboard TV Online Berbasis Web Sebagai Media Info dan Promosi Pada Lembaga Pendidikan Kota Semarang","Satrio Agung Prakoso, S.T.","Teknik dan Informatika","Teknik Informatika - S1","Gasal 2016/2017","Kerja Praktek","Angkatan 38");
INSERT INTO tblkp VALUES("47","2.23.13.0001","Willy Andrianto Halim","Pembuatan Website Rental Mobil Menggunakan Macromedia Dreamweaver dan PHP MySQL","Sinta Tridian Galih, S.T., M.Kom.","Teknik dan Informatika","Teknik Informatika - S1","Genap 2015/2016","Kerja Praktek","");
INSERT INTO tblkp VALUES("48","2.23.13.0010","Priskila Eka Kurniawati","Perancangan Aplikasi Penghubung Orangtua atau Wali Mahasiswa ke Lembaga Pendidikan di Universitas AKI Berbasis Android","Alexander Dharmawan, S.T., M.Kom.","Teknik dan Informatika","Teknik Informatika - S1","Genap 2015/2016","Kerja Praktek","Angkatan 37");
INSERT INTO tblkp VALUES("49","2.23.13.0002","Michelle Margaretha Singgih","Perancangan Website Sebagai Sarana Promosi dan Jasa Angkutan pada CV. Tarent Utama","Yusup, S.Si., M.Kom.","Teknik dan Informatika","Teknik Informatika - S1","Genap 2015/2016","Kerja Praktek","Skripsi");
INSERT INTO tblkp VALUES("50","2.23.13.0008","Esda Hosea Rido Harianto","\"Billboard TV Online Berbasis Web\" sebagai Media Informasi pada Lemabaga Pendidikan Kota Semarang","Satrio Agung Prakoso, S.T.","Teknik dan Informatika","Teknik Informatika - S1","Genap 2015/2016","Kerja Praktek","Angkatan 38");
INSERT INTO tblkp VALUES("51","2.23.13.0005","Charolina Br. Sinukaban","Perancangan Sistem Informasi Perpustakaan SMKN 4 Semarang Berbasis Multiuser","Yohana Tri Widayati, S.E., M.Kom.","Teknik dan Informatika","Teknik Informatika - S1","Genap 2015/2016","Kerja Praktek","Angkatan 37");
INSERT INTO tblkp VALUES("52","2.23.13.0004","Alfatkhah Mu\'arifah","Perancangan Sistem Informasi Penjualan Pada Distro Oldman Store Berbasis Web","Yani Prihati, S.Si., M.Kom.","Teknik dan Informatika","Teknik Informatika - S1","Genap 2015/2016","Kerja Praktek","Skripsi");
INSERT INTO tblkp VALUES("53","2.23.13.0050","Haris Sastro Barneo","Perancangan Sistem Informasi Penjualan Semesta Raya Motor","Suwarno, S.Si., M.Kom.","Teknik dan Informatika","Teknik Informatika - S1","Genap 2015/2016","Kerja Praktek","Angkatan 37");
INSERT INTO tblkp VALUES("54","2.23.13.0019","Frantonian Ahitofel","Perancangan Web Promosi Pada SD Kristen Terang Bagi Bangsa Pati ","Jutono Gondohanindijo, M.Kom.","Teknik dan Informatika","Teknik Informatika - S1","Genap 2015/2016","Kerja Praktek","Angkatan 38");
INSERT INTO tblkp VALUES("55","2.23.13.0015","Wisnu Prabowo","Perancangan Media Pembelajaran Bahasa Jawa Kelas 1 SD Terang Bagi Bangsa dengan Adobe Flash","Dra. Tri Karyanti, M.Hum.","Teknik dan Informatika","Teknik Informatika - S1","Genap 2015/2016","Kerja Praktek","Angkatan 38");
INSERT INTO tblkp VALUES("56","2.22.15.0001","Muhammad Sulaiman","Perancangan Sistem Informasi Sekolah Secara Online Pada SD Al-Irsyad Islamiyah","Suwarno, S.Si., M.Kom.","Teknik dan Informatika","Sistem Informasi - S1","Gasal 2018/2019","Kerja Praktek","");
INSERT INTO tblkp VALUES("57","2.22.15.0003","Apfia Pransiski","Perancangan Sistem Informasi Perpustakaan di SD Negeri Kuningan 04 Semarang","Dra. Tri Karyanti, M.Hum.","Teknik dan Informatika","Sistem Informasi - S1","Gasal 2018/2019","Kerja Praktek","");
INSERT INTO tblkp VALUES("58","2.22.15.0004","Feibe Veronika Sipota","Perancangan Sistem Informasi Penjualan Online","Suprapto, S.SE., M.Kom.","Teknik dan Informatika","SIstem Informasi - S1","Gasal 2018/2019","Kerja Praktek","");
INSERT INTO tblkp VALUES("59","2.22.15.0007","Hold Deo Charunia","Perancangan Sistem Informasi Inventaris Pada Hotel Mess In Semarang","Yusup, S.Si., M.Kom","Teknik dan Informatika","Sistem Informasi - S1","Gasal 2018/2019","Kerja Praktek","");
INSERT INTO tblkp VALUES("60","2.22.15.0008","Rimba Agustina","Analisa Sistem Penyewaan Kamar Hotel (Room Accomodation) Pada Hotel Mess In Semarang","Ana Wahyuni, S.Si., M.Kom.","Teknik dan Informatika","Sistem Informasi - S1","Gasal 2018/2019","Kerja Praktek","");
INSERT INTO tblkp VALUES("61","2.22.15.0009","Malfin Maniani","Analisis Sistem Informasi Perpustakaan di SD Petra School","Dra. Tri Karyanti, M.Hum.","Teknik dan Informatika","Sistem Informasi - S1","Gasal 2018/2019","Kerja Praktek","");
INSERT INTO tblkp VALUES("62","2.22.15.0010","Aliong Saputra","Perancangan Sistem Informasi Penjualan Barang Pada Toko Jam Tangan Panen Watch","Suprapto, S.SE., M.Kom.","Teknik dan Informatika","Sistem Informasi - S1","Gasal 2018/2019","Kerja Praktek","");
INSERT INTO tblkp VALUES("63","2.22.15.0005","Oei, Vertasia Nugraheni","Perancangan Aplikasi Sistem Informasi Penjualan Barang Karyawan Di Amor Semarang","Ana Wahyuni, S.Si., M.Kom.","Teknik dan Informatika","Sistem Informasi - S1","Genap 2017/2018","Kerja Praktek","Skripsi");
INSERT INTO tblkp VALUES("64","2.22.12.0033","Yesaya Primadianto Sutrisno","Perancangan Sistem Informasi Penjualan dan Pemesanan Alat Musik Di Toko Surya Putra Music Semarang","Suprapto, S.SE., M.Kom.","Teknik dan Informatika","Sistem Informasi - S1","Gasal 2017/2018","Kerja Praktek","Skripsi");
INSERT INTO tblkp VALUES("65","2.22.14.0003","Ivan Rowandi Budiman","Company Profile Pada CV. Maju Jaya Berbasis Web","Suprapto, S.SE., M.Kom.","Teknik dan Informatika","Sistem Informasi - S1","Gasal 2017/2018","Kerja Praktek","");
INSERT INTO tblkp VALUES("66","2.22.11.0012","Zacharia Christyansen","Sistem Informasi Penjualan Pada CV. Kurnia Jaya Berbasis Visual Basic","Suwarno, S.Si., M.Kom.","Teknik dan Informatika","Sistem Informasi - S1","Gasal 2017/2018","Kerja Praktek","Skripsi");
INSERT INTO tblkp VALUES("67","2.22.14.0007","Eliazer Paul Samuel Sitohang","Sistem Informasi Pengolahan Data Nilai Siswa Pada SMP Masehi 1 PSAK Semarang","Dra. Tri Karyanti, M.Hum.","Teknik dan Informatika","Sistem Informasi - S1","Gasal 2017/2018","Kerja Praktek","Angkatan 40");
INSERT INTO tblkp VALUES("68","2.22.14.0002","Rezha Aditya Gunawan","Analisa Kebutuhan dan Estimasi Biaya Konsumen IT Talk Semarang Berbasis Web","Yusup, S.Si., M.Kom","Teknik dan Informatika","Sistem Informasi - S1","Gasal 2017/2018","Kerja Praktek","Skripsi");
INSERT INTO tblkp VALUES("69","2.22.14.0008","Yan Fredrik Tarigan ","Perancangan Sistem Informasi Perpustakaan Pada SMP Masehi 1 PSAK Semarang Berbasis Multiuser","Suprapto, S.SE., M.Kom.","Teknik dan Informatika","Sistem Informasi - S1","Gasal 2017/2018","Kerja Praktek","Skripsi");
INSERT INTO tblkp VALUES("70","2.22.13.0002","Christian Davidson Runaweri","Sistem Informasi Penjualan Alat Musik Di Surya Putra Music Semarang","Dra. Tri Karyanti, M.Hum.","Teknik dan Informatika","Sistem Informasi - S1","Genap 2016/2017","Kerja Praktek","");
INSERT INTO tblkp VALUES("71","2.22.14.0001","Angga Pratama","Sistem Informasi Penjualan Obat Pada Apotek Triwira Semarang Berbasis Multiuser","Suprapto, S.SE., M.Kom.","Teknik dan Informatika","Sistem Informasi - S1","Genap 2016/2017","Kerja Praktek","Angkatan 39");
INSERT INTO tblkp VALUES("72","2.22.16.0009","Adi Sulistia","Sistem Informasi Pengolahan Data Stok Kayu PT. Kayu Lapis Indonesia","Suprapto, S.SE., M.Kom.","Teknik dan Informatika","Sistem Informasi - S1","Gasal 2016/2017","Kerja Praktek","");
INSERT INTO tblkp VALUES("73","2.22.13.0008","Yosua Christian","Sistem Informasi Penjualan Obat Pada Apotek Griya Husada Semarang Utara Berbasis Multiuser","Suprapto, S.SE., M.Kom.","Teknik dan Informatika","Sistem Informasi - S1","Genap 2015/2016","Kerja Praktek","Angkatan 38");
INSERT INTO tblkp VALUES("74","2.22.12.0006","Topan Sahara Putra","Perancangan Sistem Informasi Pengelolaan Skripsi dan Kerja Praktek di Universitas AKI Berbasis Web Studi Kasus Pada Fakultas Ilmu Komputer","Satrio Agung Prakoso, S.T.","Teknik dan Informatika","Sistem Informasi - S1","Genap 2015/2016","Kerja Praktek","Angkatan 37");
INSERT INTO tblkp VALUES("75","2.22.12.0010","Cindy Mananti","Perancangan Sistem Informasi Sekolah Berbasis Web Di SMP Maria Goretti Semarang","Yohana Tri Widayati, S.SE., M.Kom.","Teknik dan Informatika","Sistem Informasi - S1","Gasal 2015/2016","Kerja Praktek","Angkatan 37");
INSERT INTO tblkp VALUES("76","2.22.12.0011","Andra Raines Sagita","Sistem Informasi Analisis Dan Sistem Penggajian Karyawan CV. Centra Media Utama Semarang Menggunakan Netbeans","Suprapto, S.SE., M.Kom.","Teknik dan Informatika","Sistem Informasi - S1","Gasal 2015/2016","Kerja Praktek","Angkatan 37");
INSERT INTO tblkp VALUES("77","2.22.12.0014","Ajeng Tria Amanda Putri","Analisa Dan Perancangan Sistem Informasi Penggajian Terhadap Instansi Pemerintah DPPAD Provinsi Jawa Tengah","Ana Wahyuni, S.Si., M.Kom.","Teknik dan Informatika","Sistem Informasi - S1","Gasal 2015/2016","Kerja Praktek","Angkatan 37");
INSERT INTO tblkp VALUES("78","2.22.12.0020","Timious Kardia Yosel Suwarno","Perancangan Sistem Informasi Game Edukasi Berhitung Berbasis Android Untuk Sekolah Dasar Pada Perusahaan Kanaan Mobile","Ana Wahyuni, S.Si., M.Kom.","Teknik dan Informatika","Sistem Informasi - S1","Genap 2015/2016","Kerja Praktek","Angkatan 37");
INSERT INTO tblkp VALUES("79","2.22.12.0022","Kristiani","Perancangan Aplikasi Penggajian Guru dan Staf Berbasis Komputerisasi Pada SMP Maria Goretti Semarang","Suprapto, S.SE., M.Kom.","Teknik dan Informatika","Sistem Informasi - S1","Gasal 2015/2016","Kerja Praktek","Angkatan 37");
INSERT INTO tblkp VALUES("80","2.22.12.0026","David Decvrianus","Perancangan Sistem Informasi Pengolahan Data Penerimaan Siswa Baru di SMP Hasanuddin 2 Semarang ","Yusup, S.Si., M.Kom","Teknik dan Informatika","Sistem Informasi - S1","Gasal 2015/2016","Kerja Praktek","Angkatan 37");
INSERT INTO tblkp VALUES("81","2.22.12.0029","Stevanus Andinata Ginting","Perancangan Sistem Informasi  Promosi Berbasis Web Pada Perusahaan PT. Triangel Motorindo","Alexander Dharmawan, S.T., M.Kom.","Teknik dan Informatika","Sistem Informasi - S1","Gasal 2015/2016","Kerja Praktek","Angkatan 37");
INSERT INTO tblkp VALUES("82","2.22.12.0036","Otniel Chandra Bale","Perancangan Sistem Informasi Perpustakaan Pada SMPN 40 Semarang","Dra. Tri Karyanti, M.Hum.","Teknik dan Informatika","Sistem Informasi - S1","Gasal 2015/2016","Kerja Praktek","Angkatan 37");
INSERT INTO tblkp VALUES("83","2.22.12.0032","Indra Sugara","Perancangan Aplikasi U - Note Pada Universitas AKI Semarang Berbasis Android","Yohana Tri Widayati, S.SE., M.Kom.","Teknik dan Informatika","Sistem Informasi - S1","Gasal 2015/2016","Kerja Praktek","Skripsi");
INSERT INTO tblkp VALUES("84","2.22.12.0001","Oky Jayadi","Sistem Informasi Penjualan Kaos Distro Dominic DMC Semarang","Yohana Tri Widayati, S.SE., M.Kom.","Teknik dan Informatika","Sistem Informasi - S1","Gasal 2015/2016","Kerja Praktek","Angkatan 36");
INSERT INTO tblkp VALUES("85","2.22.11.0023","Johan Putra Perdana","Sistem Informasi Penjualan Smartphone Pada Super Cellular","Suprapto, S.SE., M.Kom.","Teknik dan Informatika","Sistem Informasi - S1","Genap 2014/2015","Kerja Praktek","Angkatan 36");
INSERT INTO tblkp VALUES("86","2.22.12.0007","Agnesia Andriyani","Perancangan Sistem Informasi Sales Order Berbasis Web","Yohana Tri Widayati, S.SE., M.Kom.","Teknik dan Informatika","Sistem Informasi - S1","Genap 2014/2015","Kerja Praktek","Angkatan 36");
INSERT INTO tblkp VALUES("87","2.22.11.0005","Rico Santosa","Perancangan Sistem Informasi Penjualan Mobil Bekas Berbasis Web pada Showroom Santoso Motor ","Yohana Tri Widayati, S.SE., M.Kom.","Teknik dan Informatika","Sistem Informasi - S1","Gasal 2014/2015","Kerja Praktek","Angkatan 36");
INSERT INTO tblkp VALUES("88","2.22.12.0035","Hendra Stefanus","Perancangan Aplikasi Administrasi Pada Asrama Unaki Semarang Berbasis Visual Basic","Alexander Dharmawan, S.T., M.Kom.","Teknik dan Informatika","Sistem Informasi - S1","Gasal 2014/2015","Kerja Praktek","Skripsi");



DROP TABLE tblskripsi;

CREATE TABLE `tblskripsi` (
  `no` int(5) NOT NULL AUTO_INCREMENT,
  `NIM` varchar(12) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `judul` varchar(250) NOT NULL,
  `dosbing_1` varchar(50) NOT NULL,
  `dosbing_2` varchar(50) NOT NULL,
  `fakultas` varchar(30) NOT NULL,
  `program_studi` varchar(30) NOT NULL,
  `tahun_ajaran` varchar(16) NOT NULL,
  `jenis_laporan` varchar(15) NOT NULL,
  `keterangan` varchar(20) NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=latin1;

INSERT INTO tblskripsi VALUES("1","2.23.12.0013","Merlipson Terinate","Sistem Informasi Pendataan Umat Gereja Kristen Jawa (GKJ) Jatingaleh Berbasis Web","Yani Prihati, S.Si., M.Kom.","Dr. Harries Arizonia Ismail, S.E., M.M., M.Kom.","Teknik dan Informatika","Teknik Informatika - S1","Gasal 2018/2019","Skripsi","Baru");
INSERT INTO tblskripsi VALUES("2","2.23.14.0016","Andreas Adinata Purba","Aplikasi E-Nota Rental Motor di Oke Rental Semarang Berbasis E-Commerce","Alexander Dharmawan, S.T., M.Kom.","Sinta Tridian Galih, S.T., M.Kom.","Teknik dan Informatika","Teknik Informatika - S1","Gasal 2018/2019","Skripsi","Baru");
INSERT INTO tblskripsi VALUES("3","2.23.15.0003","Imam Lilik Setiaji","Pembangunan Website Informasi Akademik Berbasis Web Dinamis Menggunakan Framework Twitter Bootstrap Pada MI Islamiyah Podorejo Semarang","Suwarno, S.Si., M.Kom.","Satrio Agung Prakoso, S.T.","Teknik dan Informatika","Teknik Informatika - S1","Gasal 2018/2019","Skripsi","Baru");
INSERT INTO tblskripsi VALUES("4","2.23.15.0007","Akhmad Nasfhan Sa\'bani","Aplikasi Monitoring Bimbingan Kerja Praktek Pada Universitas AKI","Yani Prihati, S.Si., M.Kom.","Satrio Agung Prakoso, S.T.","Teknik dan Informatika","Teknik Informatika - S1","Gasal 2018/2019","Skripsi","Baru");
INSERT INTO tblskripsi VALUES("5","2.23.15.0010","Sofwatul Choiriyah","Aplikasi Pengajuan Proposal Kerja Praktek Secara Online Pada Universitas AKI Semarang (Studi Kasus Fakultas Tenik dan Informatika)","Alexander Dharmawan, S.T., M.Kom.","Satrio Agung Prakoso, S.T.","Teknik dan Informatika","Teknik Informatika - S1","Gasal 2018/2019","Skripsi","Baru");
INSERT INTO tblskripsi VALUES("6","2.23.15.0072","Aris Syarifudin","Sistem Informasi Pengendalian Persediaan Berbasis Web pada CV. Karya Usaha Mandiri Semarang","Alexander Dharmawan, S.T., M.Kom.","Dr. Harries Arizonia Ismail, S.E., M.M., M.Kom.","Teknik dan Informatika","Teknik Informatika - S1","Genap 2017/2018","Skripsi","Angkatan 40");
INSERT INTO tblskripsi VALUES("7","2.23.99.0162","Indriawan Prastono","Pembangunan Sistem Pakar Konsultasi Pembuatan Surat Ijin Usaha Perdagangan Berbasis Online Pada Dinas Penanaman Modal dan Pelayanan Terpadu Satu Pintu","Yani Prihati, S.Si., M.Kom.","Sinta Tridian Galih, S.T., M.Kom.","Teknik dan Informatika","Teknik Informatika - S1","Genap 2017/2018","Skripsi","");
INSERT INTO tblskripsi VALUES("8","2.23.16.0014","Frida Vivi Rosalina","Penatalayan Gereja Bala Keselamatan Korps 3 Surakarta Berbasis Web Telegram Bot","Suwarno, S.Si., M.Kom.","Satrio Agung Prakoso, S.T.","Teknik dan Informatika","Teknik Informatika - S1","Genap 2017/2018","Skripsi","Angkatan 40");
INSERT INTO tblskripsi VALUES("9","2.23.14.0001","Tan Akira Richardo Darmawan","Pengenalan Tata Surya Planet Dengan Augmented Reality","Yohana Tri Widayati, S.E., M.Kom.","Jutono Gondohanindijo, M.Kom.","Teknik dan Informatika","Teknik Informatika - S1","Genap 2017/2018","Skripsi","");
INSERT INTO tblskripsi VALUES("10","2.23.14.0002","Samuel Dwi Orasetyo S.","Sistem Pendataan Anggota di GBI Wanareja Berbasis Dekstop","Sinta Tridian Galih, S.T., M.Kom.","Satrio Agung Prakoso, S.T.","Teknik dan Informatika","Teknik Informatika - S1","Genap 2017/2018","Skripsi","");
INSERT INTO tblskripsi VALUES("11","2.23.14.0003","Ezra Yoga Irawan","Aplikasi Sistem Informasi Gereja Berbasis Web","Suwarno, S.Si., M.Kom.","Yusup, S.Si., M.Kom.","Teknik dan Informatika","Teknik Informatika - S1","Genap 2017/2018","Skripsi","Angkatan 40");
INSERT INTO tblskripsi VALUES("12","2.23.14.0008","Nurchamim","Sistem Informasi Pengolahan Data Nilai Siswa Berbasis Web Pada SMK Hidayah Semarang","Alexander Dharmawan, S.T., M.Kom.","Dr. Harries Arizonia Ismail, S.E., M.M., M.Kom.","Teknik dan Informatika","Teknik Informatika - S1","Genap 2017/2018","Skripsi","");
INSERT INTO tblskripsi VALUES("13","2.23.14.0010","Eka Nur Siswanti","Implementasi Algoritma C4.5 untuk Evaluasi Kinerja Karyawan Pada CV. Soeya Com","Yani Prihati, S.Si., M.Kom.","Satrio Agung Prakoso, S.T.","Teknik dan Informatika","Teknik Informatika - S1","Genap 2017/2018","Skripsi","Angkatan 40");
INSERT INTO tblskripsi VALUES("14","2.23.14.0013","Stephani Sari Tanaka","Aplikasi Pemantauan Inventori Berbasis Android Pada PT. Wahana Cipta Multigraha","Alexander Dharmawan, S.T., M.Kom.","Dra. Tri Karyanti, M.Hum.","Teknik dan Informatika","Teknik Informatika - S1","Genap 2017/2018","Skripsi","Angkatan 40");
INSERT INTO tblskripsi VALUES("15","2.23.14.0017","Ferra Oky Netasa","Aplikasi Pendataan Jemaat Pada Gereja Injil di Tanah Jawa (GITJ) Puring Jepara Berbasis Web","Yani Prihati, S.Si., M.Kom.","Yusup, S.Si., M.Kom.","Teknik dan Informatika","Teknik Informatika - S1","Genap 2017/2018","Skripsi","Angkatan 40");
INSERT INTO tblskripsi VALUES("16","2.23.14.0019","Rocky Marciano Hendico Sianturi","Aplikasi Mapping Ruang Gedung Kampus Universitas AKI di Jl. Imam Bonjol No. 15-17 Semarang","Alexander Dharmawan, S.T., M.Kom.","Yusup, S.Si., M.Kom.","Teknik dan Informatika","Teknik Informatika - S1","Genap 2017/2018","Skripsi","Angkatan 40");
INSERT INTO tblskripsi VALUES("17","2.23.14.0020","Ardwi Jaya Nowama","Klasifikasi Pengujian Kendaraan Bermotor Tipe Angkutan Barang dan Orang di Dinas Perhubungan Kabupaten Demak Menggunakan Algoritma C4.5","Yani Prihati, S.Si., M.Kom.","Ana Wahyuni, S.Si., M.Kom.","Teknik dan Informatika","Teknik Informatika - S1","Genap 2017/2018","Skripsi","Angkatan 40");
INSERT INTO tblskripsi VALUES("18","2.23.13.0003","Jeri Warisman","Pemesanan Makanan Jasa Delivery Berbasis Mobile Di Lombok Idjo Semarang","Dra. Tri Karyanti, M.Hum.","Satrio Agung Prakoso, S.T.","Teknik dan Informatika","Teknik Informatika-S1","Gasal 2017/2018","Skripsi","Angkatan 39");
INSERT INTO tblskripsi VALUES("19","2.23.13.0011","Yan Masafi Maniani","Aplikasi Distribusi Barang Berbasis Web Pada CV. Restu Perkasa Kabupaten Kudus","Yohana Tri Widayati, S.E., M.Kom.","Satrio Agung Prakoso, S.T.","Teknik dan Informatika","Teknik Informatika-S1","Gasal 2017/2018","Skripsi","Angkatan 39");
INSERT INTO tblskripsi VALUES("20","2.23.13.0001","Willy Andrianto Halim","Perancangan Game Edukasi Puzzle Dalam Pengenalan Rumah Adat Untuk Anak-Anak Menggunakan Computer Based Instruction","Alexander Dharmawan, S.T., M.Kom.","Satrio Agung Prakoso, S.T.","Teknik dan Informatika","Teknik Informatika","Gasal 2017/2018","Skripsi","");
INSERT INTO tblskripsi VALUES("21","2.23.14.0004","Jannatun Naim","Aplikasi Pembayaran Seumbangan Pembinaan Pendidikan (SPP) Berbasis Web dan SMS Gateway Pada SMK PGRI 1 Mejobo Kudus","Yani Prihati, S.Si., M.Kom.","Yusup, S.Si., M.Kom.","Teknik dan Informatika","Teknik Informatika - S1","Gasal 2017/2018","Skripsi","Angkatan 39");
INSERT INTO tblskripsi VALUES("22","2.23.14.0005","Linda Purwasih","Sistem Penilaian Kinerja Staf TU dan Penilaian Kinerja Guru Pada SMK PGRI 1 Mejobo Kudus","Yohana Tri Widayati, S.E., M.Kom.","Satrio Agung Prakoso, S.T.","Teknik dan Informatika","Teknik Informatika - S1","Gasal 2017/2018","Skripsi","Angkatan 39");
INSERT INTO tblskripsi VALUES("23","2.23.14.0006","Eko Amirul Sofik","Implementasi Clonning untuk Instalasi Jaringan PC Pada Universitas AKI Semarang","Suwarno, S.Si., M.Kom.","Sinta Tridian Galih, S.T., M.Kom.","Teknik dan Informatika","Teknik Informatika-S1","Gasal 2017/2018","Skripsi","");
INSERT INTO tblskripsi VALUES("24","2.23.14.0007","Zulia Puji Lestari","Penerapan Data Mining dalam Proses Analisis Efisiensi Jasa Service Printer Pada CV. Soerya Com Kudus Berbasis Web","Alexander Dharmawan, S.T., M.Kom.","Sinta Tridian Galih, S.T., M.Kom.","Teknik dan Informatika","Teknik Informatika-S1","Gasal 2017/2018","Skripsi","Angkatan 40");
INSERT INTO tblskripsi VALUES("25","2.23.14.0009","Eli Tias Tutik","Analisa Loyalitas Pelanggan CV. Soerya Com Kudus Berbasis Metode Data Mining dengan Algoritma C4.5","Yani Prihati, S.Si., M.Kom.","Dr. Harries Arizonia Ismail, S.E., M.M., M.Kom.","Teknik dan Informatika","Teknik Informatika-S1","Gasal 2017/2018","Skripsi","Angkatan 40");
INSERT INTO tblskripsi VALUES("26","2.23.13.0002","Michelle Margaretha Singgih","Aplikasi Pemesanan Makanan Berbasis Android","Yani Prihati, S.Si., M.Kom.","Satrio Agung Prakoso, S.T.","Teknik dan Informatika","Teknik Informatika - S1","Genap 2016/2017","Skripsi","");
INSERT INTO tblskripsi VALUES("27","2.23.13.0004","Alfatkhah Mu\'arifah","Aplikasi Promosi Pada Distro Oldman Store Berbasis Android","Sinta Tridian Galih, S.T., M.Kom.","Satrio Agung Prakoso, S.T.","Teknik dan Informatika","Teknik Informatika - S1","Genap 2016/2017","Skripsi","");
INSERT INTO tblskripsi VALUES("28","2.23.13.0012","Jonius Daniel","Aplikasi Multimedia Kumpulan Budaya dan Cerita Daerah Di Indonesia","Yohana Tri Widayati, S.E., M.Kom.","Yusup, S.Si., M.Kom.","Teknik dan Informatika","Teknik Informatika-S1","Genap 2016/2017","Skripsi","Angkatan 38");
INSERT INTO tblskripsi VALUES("29","2.23.13.0014","Surya Jaya Putra","Media Pembelajaran Matematika Kelas 3 Pada SD Terang Bangsa Pati Berbasis Multimedia","Alexander Dharmawan, S.T., M.Kom.","Ana Wahyuni, S.Si., M.Kom.","Teknik dan Informatika","Teknik Informatika-S1","Genap 2016/2017","Skripsi","Angkatan 38");
INSERT INTO tblskripsi VALUES("30","2.23.13.0015","Wisnu Prabowo","Media Pembelajarab Bahasa Jawa Kelas 3 SD Terang Bagi Bangsa Dengan Adobe Flash","Yani Prihati, S.Si., M.Kom.","Dr. Harries Arizonia Ismail, S.E., M.M., M.Kom.","Teknik dan Informatika","Teknik Informatika - S1","Genap 2016/2017","Skripsi","Angkatan 38");
INSERT INTO tblskripsi VALUES("31","2.23.13.0016","Natan Oktavian Iwan Putra","Aplikasi Sistem Informasi Pengolahan Data di Asrama The Great Commision Semarang Berbasis Web","Alexander Dharmawan, S.T., M.Kom.","Jutono Gondohanindijo, M.Kom.","Ilmu Komputer","Teknik Informatika - S1","Genap 2016/2017","Skripsi","Angkatan 38");
INSERT INTO tblskripsi VALUES("32","2.23.13.0019","Franstorian Ahitofel","Aplikasi WEB Promosi Pada SD Kristen Terang Bagi Bangsa Pati","Suwarno, S.Si., M.Kom.","Dra. Tri Karyanti, M.Hum.","Ilmu Komputer","Teknik Informatika - S1","Genap 2016/2017","Skripsi","Angkatan 38");
INSERT INTO tblskripsi VALUES("33","2.23.12.0034","Kaspa Yobel Batubara","Aplikasi Kamus Kebidanan Berbasis Android Akademi Kebidanan Soko Tunggal","Yani Prihati, S.Si., M.Kom.","Dr. Harries Arizonia Ismail, S.E., M.M., M.Kom.","Ilmu Komputer","Teknik Informatika-S1","Gasal 2016/2017","Skripsi","Angkatan 37");
INSERT INTO tblskripsi VALUES("34","2.23.13.0005","Charolina Br. Sinukaban","Aplikasi Media Rental Mobil Berbasis Android Pada Raja Tiket Semarang","Alexander Dharmawan, S.T., M.Kom.","Ana Wahyuni, S.Si., M.Kom.","Ilmu Komputer","Teknik Informatika-S1","Gasal 2016/2017","Skripsi","Angkatan 37");
INSERT INTO tblskripsi VALUES("35","2.23.13.0006","Joko Subandono","Aplikasi Player Music Di Studio Radio Kumbaya FM Menggunakan Visual Basic 2010","Yani Prihati, S.Si., M.Kom.","Sinta Tridian Galih, S.T., M.Kom.","Ilmu Komputer","Teknik Informatika - S1","Gasal 2016/2017","Skripsi","Angkatan 37");
INSERT INTO tblskripsi VALUES("36","2.23.13.0008","Esda Hosea Rido Harinanto","Aplikasi Perizinan Online Bidang Pembinaan Pendidikan Anak Usia Dini dan Pendidikan Non Formal Pada Dinas Pendidikan Kota Semarang","Suwarno, S.Si., M.Kom.","Satrio Agung Prakoso, S.T.","Ilmu Komputer","Teknik Informatika - S1","Gasal 2016/2017","Skripsi","Angkatan 38");
INSERT INTO tblskripsi VALUES("37","2.23.13.0010","Priskila Eka Kurniawati","Sistem Digitalisasi Arsip Berbasis Web (Studi Kasus Universitas AKI)","Alexander Dharmawan, S.T., M.Kom.","Yusup, S.Si., M.Kom.","Ilmu Komputer","Teknik Informatika - S1","Gasal 2016/2017","Skripsi","Angkatan 38");
INSERT INTO tblskripsi VALUES("38","2.23.13.0050","Haris Sastro Barneo","Aplikasi Pemesanan Makanan Jasa Delivery Berbasis Android Di Idola Food Semarang","Yohana Tri Widayati, S.E., M.Kom.","Jutono Gondohanindijo, M.Kom.","Ilmu Komputer","Teknik Informatika - S1","Gasal 2016/2017","Skripsi","Angkatan 37");
INSERT INTO tblskripsi VALUES("39","2.23.13.0040","Sofater Yonesky Simamora","Aplikasi Flash Card Kids EE Menggunakan Phonegap Berbasis Multi Platform di GBAP","Sinta Tridian Galih, S.T., M.Kom.","Satrio Agung Prakoso, S.T.","Ilmu Komputer","Teknik Informatika - S1","Gasal 2016/2017","Skripsi","Angkatan 38");
INSERT INTO tblskripsi VALUES("40","2.23.12.0014","Temasetia Zebua","Media Pembelajaran IPA untuk Sekolah Dasar Negeri 01 Lerep Ungaran Barat Kelas VI Menggunakan Adobe Flash CS3","Yani Prihati, S.Si., M.Kom.","Dr. Harries Arizonia Ismail, S.E., M.M., M.Kom.","Ilmu Komputer","Teknik Informatika - S1","Genap 2016/2017","Skripsi","Angkatan 36");
INSERT INTO tblskripsi VALUES("41","2.23.12.0046","Devi Kurnia","Identifikasi Alumni Universitas AKI dengan Kartu Alumni Menggunakan QR Code","Sinta Tridian Galih, S.T., M.Kom.","Satrio Agung Prakoso, S.T.","Ilmu Komputer","Teknik Informatika - S1","Genap 2016/2017","Skripsi","Angkatan 37");
INSERT INTO tblskripsi VALUES("42","2.23.12.0048","Ameng Selvanus","Aplikasi Pemesanan Tiket Travel Online Pada Raja Tiket Travel","Alexander Dharmawan, S.T., M.Kom.","Yusup, S.Si., M.Kom.","Ilmu Komputer","Teknik Informatika - S1","Genap 2016/2017","Skripsi","Angkatan 37");
INSERT INTO tblskripsi VALUES("43","2.23.12.0002","Yonathan Aditya Purnama","Pembuatan Aplikasi Animasi Media Pembelajaran Cerita Daniel di Petra Kids Semarang","Yani Prihati, S.Si., M.Kom.","Ana Wahyuni, S.Si., M.Kom.","Ilmu Komputer","Teknik Informatika - S1","Gasal 2015/2016","Skripsi","Angkatan 37");
INSERT INTO tblskripsi VALUES("44","2.23.12.0053","Imam Mardani","Aplikasi Penjualan Berbasis Web Pada Toko Bangunan Purnama Semarang Menggunakan PHP","Yohana Tri Widayati, S.E., M.Kom.","Satrio Agung Prakoso, S.T.","Ilmu Komputer","Teknik Informatika - S1","Gasal 2016/2017","Skripsi","Angkatan 37");
INSERT INTO tblskripsi VALUES("45","2.23.11.0090","Tri Wahyuni","Aplikasi Web Untuk Penilaian Tugas Siswa Pada SMK 17 Agustus 1945 Semarang","Yohana Tri Widayati, S.E., M.Kom.","Satrio Agung Prakoso, S.T.","Ilmu Komputer","Teknik Informatika - S1","Genap 2016/2017","Skripsi","Angkatan 38");
INSERT INTO tblskripsi VALUES("46","2.23.11.0022","Tiara Kartikasari","Pembuatan Sistem Informasi Pengelolaan Data PKK (Pemberdayaan dan Kesejahteraan Keluarga) di Kecamatan Gunung Pati Kota Semarang","Yusup, S.Si., M.Kom.","Satrio Agung Prakoso, S.T.","Ilmu Komputer","Teknik Informatika - S1","Gasal 2014/2015","Skripsi","Angkatan 39");
INSERT INTO tblskripsi VALUES("47","2.23.15.0020","Demas Ardi Wicaksono","Implementasi POM-QM Untuk Optimalisasi Antrian Nasabah (Studi Pada Bank Central Asia KCU Semarang)","Yani Prihati, S.Si., M.Kom.","Jutono Gondohanindijo, M.Kom.","Ilmu Komputer","Teknik Informatika - S1","Gasal 2017/2018","Skripsi","Angkatan 39");
INSERT INTO tblskripsi VALUES("48","2.23.12.0031","Ruth Nesya Adelweis Sumule","Alat Bantu Pembelajaran Anak Retardasi Mental Berbasis Android","Yusup, S.Si., M.Kom.","Dr. Harries Arizonia Ismail, S.E., M.M., M.Kom.","Ilmu Komputer","Teknik Informatika - S1","Gasal 2015/2016","Skripsi","Angkatan 37");
INSERT INTO tblskripsi VALUES("49","2.23.11.0018","Novisto Pratama Putra","Pembuatan Website Interaktif Untuk Gereja Pimpinan Roh Kudus (GPR) Mojokerto","Sinta Tridian Galih, S.T., M.Kom.","Dra. Tri Karyanti, M.Hum.","Ilmu Komputer","Teknik Informatika - S1","Genap 2014/2015","Skripsi","Angkatan 38");
INSERT INTO tblskripsi VALUES("50","2.23.11.0047","Michael Ahadi Husodo Lenggono","Implementasi Algoritma Koloni Semut Untuk Penyelesaian Kasus Pencarian Jalan Yang Tepat Pada Game Labirin","Suwarno, S.Si., M.Kom.","Yusup, S.Si., M.Kom.","Ilmu Komputer","Teknik Informatika - S1","Genap 2017/2018","Skripsi","Angkatan 40");
INSERT INTO tblskripsi VALUES("51","2.22.14.0002","Rezha Aditya Gunawan","Aplikasi Transaksi Pembelian dan Penjualan Makanan Pada Rumah Makan Mie Jempol Semarang","Yohana Tri Widayati, S.E., M.Kom.","Ana Wahyuni, S.Si., M.Kom.","Teknik dan Informatika","Sistem Informasi - S1","Gasal 2018/2019","Skripsi","Baru");
INSERT INTO tblskripsi VALUES("52","2.22.15.0005","Oei, Vertasia Nugraheni","Sistem Informasi Pemasaran di Amor Event And Wedding Organizer Semarang","Yohana Tri Widayati, S.E., M.Kom.","Sinta Tridian Galih, S.T., M.Kom.","Teknik dan Informatika","Sistem Informasi - S1","Gasal 2018/2019","Skripsi","Baru");
INSERT INTO tblskripsi VALUES("53","2.22.14.0007","Eliazer Paul Samuel Sitohang","Sistem Informasi Akademik Nilai di SMP Masehi 1 PSAK Semarang Berbasis Web","Yohana Tri Widayati, S.E., M.Kom.","Sinta Tridian Galih, S.T., M.Kom.","Teknik dan Informatika","Sistem Informasi - S1","Genap 2017/2018","Skripsi","Angkatan 40");
INSERT INTO tblskripsi VALUES("54","2.22.14.0008","Yan Fredrik Tarigan","Perancangan Sistem Informasi Perpustakaan Pada SMP Masehi 1 PSAK Semarang Berbasis Multiuser","Yusup, S.Si., M.Kom.","Suwarno, S.Si., M.Kom.","Teknik dan Informatika","Sistem Informasi - S1","Genap 2017/2018","Skripsi","");
INSERT INTO tblskripsi VALUES("55","2.22.12.0033","Yesaya Primadianto Sutrisno","Sistem Informasi Penjualan dan Pemasaran Alat Musik Berbasis WEB Di Toko Surya Putra Music Semarang","Yusup, S.Si., M.Kom.","Suwarno, S.Si., M.Kom.","Teknik dan Informatika","Sistem Informasi - S1","Gasal 2017/2018","Skripsi","");
INSERT INTO tblskripsi VALUES("56","2.22.12.0012","Zacharia Christyansen","Sistem Informasi Penjualan Pada CV. Kurnia Jaya Berbasis Visual Basic","Yohana Tri Widayati, S.E., M.Kom.","Ana Wahyuni, S.Si., M.Kom.","Ilmu Komputer","Sistem Informasi - S1","Gasal 2017/2018","Skripsi","");
INSERT INTO tblskripsi VALUES("57","2.22.14.0001","Angga Pratama","Analisis dan Komparasi Algoritma  Naive Bayes Dan C4.5 Untuk Klasifikasi Loyalitas Pelanggan MNC Play Kota Semarang","Yohana Tri Widayati, S.E., M.Kom.","Sinta Tridian Galih, S.T., M.Kom.","Teknik dan Informatika","Sistem Informasi - S1","Gasal 2017/2018","Skripsi","Angkatan 39");
INSERT INTO tblskripsi VALUES("58","2.22.13.0008","Yosua Christian","Sistem Informasi Penjualan Obat Pada Apotek Griya Husada Semarang","Yohana Tri Widayati, S.E., M.Kom.","Sinta Tridian Galih, S.T., M.Kom.","Ilmu Komputer","Sistem Informasi - S1","Genap 2016/2017","Skripsi","Angkatan 38");
INSERT INTO tblskripsi VALUES("59","2.22.12.0036","Otniel Chandra Bale","Pengenalan Golongan Hewan Berdasarkan Jenis Makanan Menggunakan Macromedia Flash Pada Murid Kelas 4 di Sekolah Dasar Daniel Creative School Semarang","Yohana Tri Widayati, S.E., M.Kom.","Dra. Tri Karyanti, M.Hum.","Ilmu Komputer","Sistem Informasi - S1","Gasal 2016/2017","Skripsi","Angkatan 37");
INSERT INTO tblskripsi VALUES("60","2.22.11.0023","Johan Putra Perdana","Sistem Informasi Pembelian dan Penjualan Handphone Pada Gallery Sell","Yohana Tri Widayati, S.E., M.Kom.","Ana Wahyuni, S.Si., M.Kom.","Ilmu Komputer","Sistem Informasi - S1","Genap 2015/2016","Skripsi","Angkatan 36");
INSERT INTO tblskripsi VALUES("61","2.22.11.0005","Rico Santoso","Sistem Informasi Promosi dan Pemasaran Mobil Bekas Pada Showroom Santosa Motor Berbasis Web","Alexander Dharmawan, S.T., M.Kom.","Dra. Tri Karyanti, M.Hum.","Ilmu Komputer","Sistem Informasi - S1","Genap 2015/2016","Skripsi","Angkatan 36");
INSERT INTO tblskripsi VALUES("62","2.22.12.0006","Topan Sahara Putra","Pembuatan Sistem Informasi Penjualan Komputer Berbasis Web Pada Toko DNA Komputer","Yani Prihati, S.Si., M.Kom.","Dr. Harries Arizonia Ismail, S.E., M.M., M.Kom","Ilmu Komputer","Sistem Informasi - S1","Genap 2015/2016","Skripsi","Angkatan 37");
INSERT INTO tblskripsi VALUES("63","2.22.12.0001","Oky Jayadi","Penjualan Online Pada Shine Like Stars Semarang Berbasis Web","Alexander Dharmawan, S.T., M.Kom.","Suprapto, S.E., M.Kom.","Ilmu Komputer","Sistem Informasi - S1","Genap 2015/2016","Skripsi","Angkatan 36");
INSERT INTO tblskripsi VALUES("64","2.22.12.0007","Agnesia Andriyani","Sistem Informasi Pemesanan Barang Pada PT. Pintu Mas Mulia Kimia Semarang Berbasis Web","Sinta Tridian Galih, S.T., M.Kom.","Dra. Tri Karyanti, M.Hum.","Ilmu Komputer","Sistem Informasi - S1","Genap 2015/2016","Skripsi","Angkatan 36");
INSERT INTO tblskripsi VALUES("65","2.22.12.0011","Andra Raines Sagita","Sistem Informasi Pesewaan Alat Event Pada CV, Media Centre Utama Berbasis Web","Yusup, S.Si., M.Kom.","Ana Wahyuni, S.Si., M.Kom.","Ilmu Komputer","Sistem Informasi","Genap 2015/2016","Skripsi","Angkatan 37");
INSERT INTO tblskripsi VALUES("66","2.22.12.0029","Stevanus Andinata Ginting","Sistem Informasi Pendapatan Member dan Program Fitness Pada Rajawali Barbel Club Semarang Berbasis Web","Yani Prihati, S.Si., M.Kom.","Dra. Tri Karyanti, M.Hum.","Ilmu Komputer","Sistem Informasi - S1","Genap 2015/2016","Skripsi","Angkatan 37");
INSERT INTO tblskripsi VALUES("67","2.22.12.0035","Hendra Stefanus","Aplikasi Administrasi pada Asrama UNAKI Berbasis Visual Basic","Alexander Dharmawan, S.T., M.Kom.","Yusup, S.Si., M.Kom","Teknik dan Informatika","Sistem Informasi - S1","Genap 2015/2016","Skripsi","");
INSERT INTO tblskripsi VALUES("68","2.22.12.0026","David Decvrianus","Sistem Informasi Pengolahan Penerimaan Siswa Baru di SMP Hasanuddin 2 Semarang Berbasis Web","Yohana Tri Widayati, S.E., M.Kom.","Suwarno, S.Si., M.Kom.","Ilmu Komputer","Sistem Informasi - S1","Genap 2015/2016","Skripsi","Angkatan 37");
INSERT INTO tblskripsi VALUES("69","2.22.12.0022","Kristiani","Sistem Informasi Persewaan Motor Pada Nejla Rental Dengan Visual Basic 6.0","Yani Prihati, S.Si., M.Kom.","Sinta Tridian Galih, S.T., M.Kom.","Ilmu Komputer","Sistem Informasi - S1","Genap 2015/2016","Skripsi","Angkatan 37");
INSERT INTO tblskripsi VALUES("70","2.22.12.0014","Ajeng Tria Amanda","Sistem Informasi Penggajian Pada Dinas Pendapatan Aset Daerah (DPPAD) Provinsi Jawa Tengah Menggunakan Visual Basic 6.0","Yohana Tri Widayati, S.E., M.Kom.","Dr. Harries Arizonia Ismail, S.E., M.M., M.Kom","Ilmu Komputer","Sistem Informasi - S1","Genap 2015/2016","Skripsi","Angkatan 37");
INSERT INTO tblskripsi VALUES("71","2.22.12.0010","Cindy Mananti","Sistem Informasi Pengarsipan Surat Berbasis Website Pada SMP Negeri 36 Semarang","Suwarno, S.Si., M.Kom.","Yusup, S.Si., M.Kom","Ilmu Komputer","Sistem Informasi - S1","Genap 2015/2016","Skripsi","Angkatan 37");
INSERT INTO tblskripsi VALUES("72","2.22.12.0032","Indra Sugara","Sistem Informasi pada Hotel Sahabat Baru Semarang","Yohana Tri Widayati, S.E., M.Kom.","Yusup, S.Si., M.Kom","Teknik dan Informatika","Sistem Informasi - S1","Genap 2015/2016","Skripsi","");
INSERT INTO tblskripsi VALUES("73","2.22.12.0022","Timious Kardia Yosel Suwarno","Sistem Informasi Penjualan Barang Pada Apotek Griya Husada Semarang","Ana Wahyuni, S.Si., M.Kom","Suprapto, S.E., M.Kom.","Ilmu Komputer","Sistem Informasi - S1","Gasal 2015/2016","Skripsi","Angkatan 37");
INSERT INTO tblskripsi VALUES("74","2.22.12.0042","Johan Amriyahya","Pembuatan Aplikasi Pemesanan Tiket Travel Berbasis Android Pada Travel Citra","Yohana Tri Widayati, S.E., M.Kom.","Sinta Tridian Galih, S.T., M.Kom.","Ilmu Komputer","Sistem Informasi - S1","Genap 2016/2017","Skripsi","Angkatan 38");
INSERT INTO tblskripsi VALUES("75","2.22.12.0024","Megasari Alaasta","Sistem Informasi Hotel Sleep And Sleep Semarang Berbasis Web","Suwarno, S.Si., M.Kom.","Ana Wahyuni, S.Si., M.Kom.","Ilmu Komputer","Sistem Informasi - S1","Gasal 2017/2018","Skripsi","Angkatan 40");



