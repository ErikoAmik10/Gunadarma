-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 31 Agu 2024 pada 07.08
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `skripsiug`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `foto` varchar(30) NOT NULL,
  `email` varchar(20) NOT NULL,
  `level` enum('d','k','a','m','do') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`username`, `password`, `nama_lengkap`, `jenis_kelamin`, `foto`, `email`, `level`) VALUES
('admin', '$2y$10$e8OTa9CxFK9LV2i9pQS4f./yQ0HX6mfQSekXGd/Qzg.M7Ujr.tXy2', 'admin', '', 'man.png', 'admin@admin.com', 'a');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bimbinganskripsi`
--

CREATE TABLE `bimbinganskripsi` (
  `id_bimbingan` int(4) NOT NULL,
  `nim` varchar(9) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `program_studi` varchar(30) NOT NULL,
  `dosen_pembimbing` varchar(50) NOT NULL,
  `tgl_input` date DEFAULT NULL,
  `aktivitas` varchar(50) NOT NULL,
  `jenis_laporan` varchar(13) NOT NULL,
  `file` varchar(100) NOT NULL,
  `status` enum('New','ACC','Revisi') NOT NULL,
  `tgl_koreksi` date DEFAULT NULL,
  `uraian` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bimbinganskripsi`
--

INSERT INTO `bimbinganskripsi` (`id_bimbingan`, `nim`, `nama_lengkap`, `program_studi`, `dosen_pembimbing`, `tgl_input`, `aktivitas`, `jenis_laporan`, `file`, `status`, `tgl_koreksi`, `uraian`) VALUES
(67, '12345678', 'Rayahana Sophiani', 'Sistem Informasi -S1', 'Dr. Koko Bachrudin,Skom.MMSI', '2023-10-25', 'Berikut hasil revisi CHAPTER II', '', 'TASK2-SITASI-MENDELEY FRENGKI BUTAR.docx', 'Revisi', '2023-10-25', 'perbaiki dikit lagi'),
(76, '10120763', 'Muhammad Nagip', 'Informatika -S1', 'Dr. Koko Bachrudin,Skom.MMSI', '2024-08-28', 'bab 2', '', 'struktur navigasi.drawio.pdf', 'New', '2024-08-28', ''),
(77, '50420418', 'Eriko Amik Suwanto', 'Informatika -S1', 'Dr. Koko Bachrudin,Skom.MMSI', '2024-08-28', 'bab 2', '', 'skripsi eriko 28 agustuss.pdf', 'New', '2024-08-28', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

CREATE TABLE `dosen` (
  `nidn` varchar(12) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `email` varchar(30) NOT NULL,
  `jabatan_fungsional` varchar(100) NOT NULL,
  `jabatan_struktural` varchar(100) NOT NULL,
  `foto` varchar(30) NOT NULL,
  `username` varchar(12) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` enum('d','k','a','m','do') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dosen`
--

INSERT INTO `dosen` (`nidn`, `nama_lengkap`, `jenis_kelamin`, `email`, `jabatan_fungsional`, `jabatan_struktural`, `foto`, `username`, `password`, `level`) VALUES
('001828201080', 'Dr. DINI SUNDANI, ST., MMSI.', 'P', 'dinisundani.gunadarma.ac.id', 'Dosen', 'Dosen', '', '001828201080', '$2y$10$RUfm2h5xXtJdlwu7O9g1OOc/FRbFhilcFoAphyynSmdVYrcC1Xbrq', ''),
('0301010103', 'Irma Fahrihma, M.Hum', 'P', 'irma@gmail.com', 'Lektor Kepala', 'Ketua LPPM', 'Ramziya Amjad Bakhitah.jpg', '0301010103', '$2y$10$dhjV/s2FudFIo8zCw7fn1.m8KhkDWvNY0Hqaip7/ipfrICr0fAbzK', 'do'),
('0301010104', 'Dr. Koko Bachrudin,Skom.MMSI', 'L', 'KokoBachrudin@uter.com', 'Tetap', 'Tetap', 'man.png', '0301010104', '$2y$10$RrqlYxh2.NfuxtRhkS8cf.Kop3QByNDdmQ1eewOZMn9coREpb12Fa', ''),
('0301010105', 'Diana Naory, M.Sc', 'P', 'diana@gmail.com', 'Lektor Kepala', 'Dosen Tetap', 'peluang2.jpg', '0301010105', 'feb548ea68cc241afd74fa95464a9c54', 'do'),
('0301010106', 'Dr. Iqbal Lorenzo, M.Hum.', 'L', 'bisnisku220971@gmail.com', 'Lektor Kepala', 'Dosen Tetap', 'own.jpg', '0301010106', '$2y$10$hqE90lG81gFguKPgOCJ.eeeuJj9JtrqRLtZ/RjD83bVewG0EYyo5i', 'do'),
('0422097103', 'Sutrisno', 'L', 'drbejo2020@gmail.com', 'Lektor Kepala', 'Dosen Tetap', 'own.jpg', '0422097103', '$2y$10$RNmQPaBA.Z1HgLez3qFG1u6JFrXvQo1XpiIABTPAfPZAFWiJDL0Ma', 'do');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal`
--

CREATE TABLE `jadwal` (
  `id_jadwal` int(50) NOT NULL,
  `nidn` varchar(100) NOT NULL,
  `semester` varchar(50) NOT NULL,
  `thn_ajaran` varchar(50) NOT NULL,
  `hari_1` varchar(50) NOT NULL,
  `jam_1` varchar(50) NOT NULL,
  `hari_2` varchar(50) NOT NULL,
  `jam_2` varchar(50) NOT NULL,
  `hari_3` varchar(50) NOT NULL,
  `jam_3` varchar(50) NOT NULL,
  `tgl_input` varchar(100) NOT NULL,
  `status` int(50) NOT NULL,
  `status1` int(50) NOT NULL,
  `statuskirim` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jadwal`
--

INSERT INTO `jadwal` (`id_jadwal`, `nidn`, `semester`, `thn_ajaran`, `hari_1`, `jam_1`, `hari_2`, `jam_2`, `hari_3`, `jam_3`, `tgl_input`, `status`, `status1`, `statuskirim`) VALUES
(33, '0422097103', 'genap', '2022/2023', 'Senin', '08.00', 'Senin', '09.00', 'Rabu', '10.00', '2023-04-20', 1, 1, 0),
(34, '0365432103', 'genap', '2022/2023', 'Kamis', '09.00 - 12.00', 'Kamis', '09.00 - 12.00', 'Rabu', '09.00 - 12.00', '2023-05-02', 1, 1, 1),
(35, '0301010103', 'ganjil', '2023/2024', 'Senin', '09.00 - 12.00', 'Rabu', '09.00 - 12.00', 'Kamis', '09.00 - 12.00', '2023-07-11', 1, 1, 1),
(36, '0301010103', 'ganjil', '2023/2024', 'Senin', '13.00 - 15.00', 'Selasa', '13.00 - 15.00', 'Jumat', '14.00 - 16.00', '2023-10-27', 1, 0, 1),
(37, '0301010103', 'ganjil', '2023/2024', 'Selasa', '09.00 - 11.00', 'Kamis', '09.00 - 11.00', '', '', '2023-10-27', 0, 0, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kaprodi`
--

CREATE TABLE `kaprodi` (
  `nidn` varchar(12) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `email` varchar(30) NOT NULL,
  `jabatan_fungsional` varchar(100) NOT NULL,
  `jabatan_struktural` varchar(100) NOT NULL,
  `foto` varchar(30) NOT NULL,
  `username` varchar(12) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` enum('d','k','a','m','do') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kaprodi`
--

INSERT INTO `kaprodi` (`nidn`, `nama_lengkap`, `jenis_kelamin`, `email`, `jabatan_fungsional`, `jabatan_struktural`, `foto`, `username`, `password`, `level`) VALUES
('0301010104', 'Dr. Sutrisno, M.Pd.', 'L', 'sutrisno@gmail.com', 'Lektor Kepala', 'Kaprodi', 'man.png', '0301010104', '$2y$10$0erfSxNBpuGySc3NkPVEaetGxLQLb5dOCrNs3nsG5dV9SBLjbN6eO', 'k'),
('0301010105', 'Lintang Yanuar', 'P', 'admin24@gmail.com', 'Dosen', 'Dosen', '', '0301010105', '$2y$10$B.7CqQTQmDLN3B2DJ9H3VuesF6XFDSyipvs/dI6OV0oZPWkGs4RQC', 'k');

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentar`
--

CREATE TABLE `komentar` (
  `id_komentar` int(11) NOT NULL,
  `komentar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `komentar`
--

INSERT INTO `komentar` (`id_komentar`, `komentar`) VALUES
(1, 'sudah dipreiksa '),
(3, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `konsultasi`
--

CREATE TABLE `konsultasi` (
  `id_konsultasi` int(10) NOT NULL,
  `nim` varchar(9) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `program_studi` varchar(30) NOT NULL,
  `dosen` varchar(50) NOT NULL,
  `tgl_input` date DEFAULT NULL,
  `aktivitas` varchar(100) NOT NULL,
  `jenis_laporan` varchar(13) NOT NULL,
  `file` varchar(100) NOT NULL,
  `status` enum('New','ACC','Revisi') NOT NULL,
  `tgl_koreksi` date DEFAULT NULL,
  `Uraian` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` varchar(9) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `email` varchar(30) NOT NULL,
  `program_studi` varchar(30) NOT NULL,
  `foto` varchar(30) NOT NULL,
  `username` varchar(9) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` enum('d','k','a','m','do') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama_lengkap`, `jenis_kelamin`, `email`, `program_studi`, `foto`, `username`, `password`, `level`) VALUES
('10120216', 'Azriel Chaerul Alburhanudin', 'L', 'azriel@gmail.com', 'Sistem Informasi -S1', '', '10120216', '$2y$10$kuUGVwim7IKCLI91nbRZeezOSGCQZ4gQNsxocvi1vmiRhfBXsM3F6', 'm'),
('10120763', 'Muhammad Nagip', 'L', 'nagipmuhammad31@gmail.com', 'Sistem Informasi -S1', '', '10120763', '$2y$10$OxoBCIXOhfcQPknE.fAfYe98BdgI4uC3b6hYe2/8HLfbTG9VBfQ86', 'm'),
('50420418', 'Eriko Amik Suwanto', 'L', 'eriko@uter.com', 'Informatika -S1', 'man.png', '50420418', '$2y$10$NHKWLDaLrGO9tnjnfyQqxu5FjJUENbsyf/7al2QI.OM3K8RZYEFyy', 'm'),
('50420419', 'Nagip', 'L', 'nagip@uter.com', 'Sistem Informasi -S1', '', '50420419', '$2y$10$nmPV2ybPNN4gUklyLSpED.1BRRSFo/eYzXqG6mGC20AzoZmX8rz2G', 'm'),
('50420420', 'ale', 'L', 'ale@gmail.com', 'Informatika -S1', '', '50420420', '$2y$10$CEudYA7PzPdDT.dpIfae1eCvpnjl5HvvkWoBTbAXjk93QMpjegMNi', 'm'),
('50420422', 'haha', '', 'haha@gmail.com', 'Pilih Program Studi', '', '50420422', '$2y$10$0GMKj7jAhWU.Mbnf/iix6uK8yG.EttlfN/PQHvalKkhr7g041Rhrq', 'm'),
('51420001', 'Paul Henry Greemaldy Soselisa', 'L', 'paul@gmail.com', 'Informatika -S1', '', '51420001', '$2y$10$q9hkGMoRWu0Z1GpZjVAdqeN1BHFCCBmA3/ws671HaxO32pblKSzB.', 'm');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengajuan`
--

CREATE TABLE `pengajuan` (
  `id_pengajuan` int(10) NOT NULL,
  `nim` varchar(9) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `program_studi` varchar(30) NOT NULL,
  `judul` varchar(500) NOT NULL,
  `file` varchar(100) NOT NULL,
  `semester` enum('ganjil','genap') NOT NULL,
  `thn_ajaran` varchar(30) NOT NULL,
  `jenis_laporan` enum('kp','skripsi') NOT NULL,
  `pembimbing1` varchar(100) NOT NULL,
  `pembimbing2` varchar(100) NOT NULL,
  `status` enum('0','1','2') NOT NULL,
  `status_dkn` enum('0','1','2') NOT NULL DEFAULT '0',
  `status_kirim` enum('0','1') NOT NULL DEFAULT '0',
  `tanggal` date NOT NULL,
  `Komentar` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengajuan`
--

INSERT INTO `pengajuan` (`id_pengajuan`, `nim`, `nama_lengkap`, `program_studi`, `judul`, `file`, `semester`, `thn_ajaran`, `jenis_laporan`, `pembimbing1`, `pembimbing2`, `status`, `status_dkn`, `status_kirim`, `tanggal`, `Komentar`) VALUES
(7, '12345678', 'Rayahana Sophiani', 'Sastra Inggris - S1', 'Pengajuan Ke 3', 'TASK2-SITASI-MENDELEY FRENGKI BUTAR (1).docx', 'ganjil', '2023/2024', 'skripsi', '', '', '0', '0', '0', '2023-10-27', ''),
(8, '50420418', 'Eriko Amik Suwanto', 'Informatika -S1', 'PEMBUATAN WEBSITE MONITORING BIMBINGAN SKRIPSI MENGGUNAKAN PHP DAN MYSQL', 'Eriko Amik Suwanto_4IA19_50420418_ M11_Pengolahan Paralel.pdf', 'genap', '2023/2024', 'skripsi', 'Koko Bachrudin,Skom.MMSI', '', '1', '0', '0', '2024-07-11', ''),
(9, '10120763', 'Muhammad Nagip', 'Sistem Informasi -S1', 'Bab 2', 'eriko.pdf', 'genap', '2024/2025', 'skripsi', '', '', '0', '0', '0', '2024-08-25', ''),
(10, '50420418', 'Eriko Amik Suwanto', 'Informatika -S1', 'Requirement Analysis Sistem Informasi Bimbingan Menggunakan Metode Delphi', 'skripsi_eriko.pdf', 'genap', '2024/2025', 'skripsi', 'Dr. Koko Bachrudin,Skom.MMSI', '', '1', '0', '0', '2024-08-28', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `prodi`
--

CREATE TABLE `prodi` (
  `id_prodi` varchar(5) NOT NULL,
  `pnama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `prodi`
--

INSERT INTO `prodi` (`id_prodi`, `pnama`) VALUES
('IA', 'Informatika -S1'),
('IB', 'Teknik Elektro -S1'),
('ID', 'Teknik Industri -S1'),
('KA', 'Sistem Informasi -S1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tahunajaran`
--

CREATE TABLE `tahunajaran` (
  `id` int(10) NOT NULL,
  `tahunajaran` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tahunajaran`
--

INSERT INTO `tahunajaran` (`id`, `tahunajaran`) VALUES
(26, 'SEMESTER GENAP 2020/2021'),
(27, 'SEMESTER GANJIL 2021/2022'),
(28, 'SEMESTER GENAP 2021/2022'),
(29, 'SEMESTER GANJIL 2022/2023'),
(30, 'SEMESTER GENAP 2022/2023'),
(31, 'SEMESTER GANJIL 2023/2024'),
(32, 'SEMESTER GENAP 2023/2024'),
(33, 'SEMESTER GANJIL 2024/2025'),
(34, 'SEMESTER GENAP  2024/2025'),
(35, 'SEMESTER GANJIL 2025/2026'),
(36, 'SEMESTER GENAP 2025/2026');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblskripsi`
--

CREATE TABLE `tblskripsi` (
  `NIM` varchar(9) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `judul` varchar(500) NOT NULL,
  `pembimbing_1` varchar(100) NOT NULL,
  `pembimbing_2` varchar(100) NOT NULL,
  `program_studi` varchar(30) NOT NULL,
  `angkatan_wisuda` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tblskripsi`
--

INSERT INTO `tblskripsi` (`NIM`, `nama`, `judul`, `pembimbing_1`, `pembimbing_2`, `program_studi`, `angkatan_wisuda`) VALUES
('50420418', 'Eriko Amik Suwanto', 'PEMBUATAN WEBSITE MONITORING BIMBINGAN SKRIPSI MENGGUNAKAN PHP DAN MYSQL', 'Dr. Koko Bachrudin,Skom.MMSI', '', 'Informatika -S1', '2020'),
('87654321', 'Jessica Diaz', 'Kreasi Pembuatan Puisi Digital Melalui Media Artificial Intellegence', 'Irma Fahrihma, M.Hum', '', 'Sistem Informasi -S1', '2020');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `bimbinganskripsi`
--
ALTER TABLE `bimbinganskripsi`
  ADD PRIMARY KEY (`id_bimbingan`);

--
-- Indeks untuk tabel `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`nidn`);

--
-- Indeks untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id_jadwal`);

--
-- Indeks untuk tabel `kaprodi`
--
ALTER TABLE `kaprodi`
  ADD PRIMARY KEY (`nidn`);

--
-- Indeks untuk tabel `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indeks untuk tabel `konsultasi`
--
ALTER TABLE `konsultasi`
  ADD PRIMARY KEY (`id_konsultasi`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indeks untuk tabel `pengajuan`
--
ALTER TABLE `pengajuan`
  ADD PRIMARY KEY (`id_pengajuan`);

--
-- Indeks untuk tabel `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`id_prodi`);

--
-- Indeks untuk tabel `tahunajaran`
--
ALTER TABLE `tahunajaran`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tblskripsi`
--
ALTER TABLE `tblskripsi`
  ADD PRIMARY KEY (`NIM`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `bimbinganskripsi`
--
ALTER TABLE `bimbinganskripsi`
  MODIFY `id_bimbingan` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id_jadwal` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komentar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `konsultasi`
--
ALTER TABLE `konsultasi`
  MODIFY `id_konsultasi` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pengajuan`
--
ALTER TABLE `pengajuan`
  MODIFY `id_pengajuan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tahunajaran`
--
ALTER TABLE `tahunajaran`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
