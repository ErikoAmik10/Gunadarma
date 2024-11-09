DROP TABLE admin;

CREATE TABLE `admin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `foto` varchar(30) NOT NULL,
  `email` varchar(20) NOT NULL,
  `level` enum('d','k','a','m','do') NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO admin VALUES("admin1","e00cf25ad42683b3df678c61f42c6bda","Akhmad Nashfan S.","L","man.png","admin1@gmail.com","a");
INSERT INTO admin VALUES("admin2","0f3ed355bf2bfee885e3a9f017347223","Sofwatul Choiriyah","P","female.png","admin2@gmail.com","a");
INSERT INTO admin VALUES("admin3","32cacb2f994f6b42183a1300d9a3e8d6","Rendis Arfendo","L","man.png","admin3@gmail.com","a");
INSERT INTO admin VALUES("admin4","fc1ebc848e31e0a68e868432225e3c82","Ade Kristianto","L","man.png","admin4@gmail.com","a");
INSERT INTO admin VALUES("admin5","26a91342190d515231d7238b0c5438e1","M. Sulaiman","L","man.png","admin5@gmail.com","a");
INSERT INTO admin VALUES("penguji1","0a075e20898150c94b6a07c875a2d13e","Penguji 1","L","man.png","penguji1@gmail.com","a");
INSERT INTO admin VALUES("penguji2","8b79b882c4eb820416908c79818d119f","Penguji 2","L","man.png","penguji2@gmail.com","a");
INSERT INTO admin VALUES("penguji3","01d5ece8f15466291277036b4d4208cb","Penguji 3","L","man.png","penguji3@gmail.com","a");
INSERT INTO admin VALUES("penguji4","f09bf110f1648b3136408285fa379bed","Penguji 4","L","man.png","penguji4@gmail.com","a");
INSERT INTO admin VALUES("penguji5","2f8512bdf4315f9a1e19df9f89f597d4","Penguji 5","L","man.png","penguji5@gmail.com","a");



DROP TABLE dekan;

CREATE TABLE `dekan` (
  `nidn` varchar(12) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `email` varchar(30) NOT NULL,
  `jabatan_fungsional` varchar(100) NOT NULL,
  `jabatan_struktural` varchar(100) NOT NULL,
  `foto` varchar(30) NOT NULL,
  `username` varchar(12) NOT NULL,
  `password` varchar(32) NOT NULL,
  `level` enum('d','k','a','m','do') NOT NULL,
  PRIMARY KEY (`nidn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO dekan VALUES("0618127802","Dr. Harries Arizonia Ismail, S.E., M.M., M.Kom.","L","harries@gmail.com","Dekan Fakultas Teknik dan Informatika","Asisten Ahli","female.png","0618127802","c20ff5e0e45d499edd1388874d153dc3","d");



DROP TABLE dosen;

CREATE TABLE `dosen` (
  `nidn` varchar(12) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `email` varchar(30) NOT NULL,
  `jabatan_fungsional` varchar(100) NOT NULL,
  `jabatan_struktural` varchar(100) NOT NULL,
  `foto` varchar(30) NOT NULL,
  `username` varchar(12) NOT NULL,
  `password` varchar(32) NOT NULL,
  `level` enum('d','k','a','m','do') NOT NULL,
  PRIMARY KEY (`nidn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO dosen VALUES("0601067503","Ana Wahyuni, S.Si., M.Kom.","P","ana@gmail.com","Lektor","Ketua LPPM","female.png","0601067503","276b6c4692e78d4799c12ada515bc3e4","do");
INSERT INTO dosen VALUES("0602017001","Yani Prihati, S.Si., M.Kom.","P","yani@gmail.com","Lektor Kepala","Wakil Rektor 1 Bidang Akademik dan Kemahasiswaan","female.png","0602017001","080840925a7e2087673145d83918c658","do");
INSERT INTO dosen VALUES("0606037001","Suwarno, S.Si., M.Kom.","L","suwarno@gmail.com","Lektor","Wakil Rektor 3 Bidang Teknologi Informasi","man.png","0606037001","36a8b597c250d37ef7ccfac9d724f233","do");
INSERT INTO dosen VALUES("0606046401","Dra. Tri Karyanti, M.Hum.","P","tri@gmail.com","Lektor","Kepala Perpustakaan","female.png","0606046401","d2cfe69af2d64330670e08efb2c86df7","do");
INSERT INTO dosen VALUES("0609056102","Drs. Suhartoyo","L","suhartoyo@gmail.com","","Dosen Teknik Informatika","man.png","0609056102","c5421a1595a93f49acd37a1ea90de7f5","do");
INSERT INTO dosen VALUES("0610029301","Adityo Putro Wicaksono, M.Kom.","L","adityo@gmail.com","","Dosen Teknik Informatika","man.png","0610029301","d92877035603f2a859bb49332cd200fa","do");
INSERT INTO dosen VALUES("0613016603","Jutono Gondohanindijo, M.Kom.","L","jutono@gmail.com","Asisten Ahli","Dosen Teknik Informatika","man.png","0613016603","f7e247be552602e0db602a9677d5b179","do");
INSERT INTO dosen VALUES("0613037101","Yusup, S.Si., M.Kom.","L","yusup@gmail.com","Lektor Kepala","Dosen Sistem Informasi","man.png","0613037101","f2ec4b1440f6f15e1a6a5dca0bb704b3","do");
INSERT INTO dosen VALUES("0613046804","Yohana Tri Widayati, S.E., M.Kom.","P","yohana@gmail.com","Lektor Kepala","Kepala BPM atau LP2MP","female.png","0613046804","d1ff1c32fb0a45cdc418abe85908aba2","do");
INSERT INTO dosen VALUES("0615057002","Satrio Agung Prakoso, S.T.","L","satrio@gmail.com","","Kaprodi Teknik Informatika","man.png","0615057002","4519fcb0c08b20d77ff462a66fba8b78","k");
INSERT INTO dosen VALUES("0615107201","Alexander Dharmawan, S.T., M.Kom.","L","alexander@gmail.com","Lektor Kepala","Wakil Rektor 2 Bidang Sumber Daya dan Administrasi","man.png","0615107201","dd22141acb5ea065acd5ed773729c98f","do");
INSERT INTO dosen VALUES("0618127802","Dr. Harries Arizonia Ismail, S.E., M.M., M.Kom.","L","harries@gmail.com","Asisten Ahli","Dekan Fakultas Teknik dan Informatika","man.png","0618127802","73b8fe9fa7a20b8f60f566841d7c62f2","d");
INSERT INTO dosen VALUES("0621066901","Suprapto, S.E., M.Kom.","L","suprapto@gmail.com","Lektor","Dosen Sistem Informasi","man.png","0621066901","beb204ded84ba984ee5b74f4f4bcf9f2","do");
INSERT INTO dosen VALUES("0625098502","Albert Santoso, M.Kom.","L","albert@gmai.com","Asisten Ahli","Dosen Teknik Informatika","man.png","0625098502","6c5bc43b443975b806740d8e41146479","do");
INSERT INTO dosen VALUES("0630107301","Sinta Tridian Galih, S.T., M.Kom.","P","sinta@gmail.com","Lektor","Kaprodi Sistem Informasi dan Kaprodi Teknik Multimedia dan Jaringan","female.png","0630107301","08ca451b5ef1a7c86763d31e7711a522","k");
INSERT INTO dosen VALUES("0631038901","Stefanus Widjaja, M.Kom.","L","stefanus@gmail.com","Asisten Ahli","Kepala Pustik","man.png","0631038901","8dd2cdcec15a6f3a4ef80d18c27ed2c2","do");
INSERT INTO dosen VALUES("0631087902","Mohammad Fajarianditya Nugroho, M.Kom.","L","mohammad@gmail.com","","Koordinator Kemahasiswaan","man.png","0631087902","a219deb20f118754a4280a77f842bdbf","do");



DROP TABLE kaprodi;

CREATE TABLE `kaprodi` (
  `nidn` varchar(12) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `email` varchar(30) NOT NULL,
  `jabatan_fungsional` varchar(100) NOT NULL,
  `jabatan_struktural` varchar(100) NOT NULL,
  `foto` varchar(30) NOT NULL,
  `username` varchar(12) NOT NULL,
  `password` varchar(32) NOT NULL,
  `level` enum('d','k','a','m','do') NOT NULL,
  PRIMARY KEY (`nidn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO kaprodi VALUES("0615057002","Satrio Agung Prakoso, S.T.","L","satrio@gmail.com","Ketua Program Studi Teknik Informatika","","man.png","0615057002","4519fcb0c08b20d77ff462a66fba8b78","k");
INSERT INTO kaprodi VALUES("0630107301","Sinta Tridian Galih, S.T., M.Kom.","P","sinta@gmail.com","Lektor","Ketua Program Studi Sistem Informasi dan Teknik Multimedia dan Jaringan","female.png","0630107301","1e8ec5f4aa47d4407c8574fd9e2cb421","k");



DROP TABLE mahasiswa;

CREATE TABLE `mahasiswa` (
  `nim` varchar(9) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `email` varchar(30) NOT NULL,
  `program_studi` varchar(30) NOT NULL,
  `foto` varchar(30) NOT NULL,
  `username` varchar(9) NOT NULL,
  `password` varchar(32) NOT NULL,
  `level` enum('d','k','a','m','do') NOT NULL,
  PRIMARY KEY (`nim`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO mahasiswa VALUES("222110005","Rico Santoso","L","222110005@student.unaki.ac.id","Sistem Informasi - S1","man.png","222110005","be89e250d8388c5e7ded2f1630e5daa4","m");
INSERT INTO mahasiswa VALUES("222110023","Johan Putra Perdana","L","222110023@student.unaki.ac.id","Sistem Informasi - S1","man.png","222110023","7fedcb034ecf9df4be8c1ea13362053b","m");
INSERT INTO mahasiswa VALUES("222120001","Oky Jayadi","L","222120001@student.unaki.ac.id","Sistem Informasi - S1","man.png","222120001","c4771c088a4c9f0ef9560dadf0cbc500","m");
INSERT INTO mahasiswa VALUES("222120006","Tohan Sahara Putra","L","222120006@student.unaki.ac.id","Sistem Informasi - S1","man.png","222120006","567ebac4b73f9d014e2d20a1172b21cd","m");
INSERT INTO mahasiswa VALUES("222120007","Agnesia Andriyani","","222120007@student.unaki.ac.id","Sistem Informasi - S1","female.png","222120007","ff134f9ccacc1e3820e7ccb20e54d702","m");
INSERT INTO mahasiswa VALUES("222120010","Cindy Mananti","P","222120010@student.unaki.ac.id","Sistem Informasi - S1","female.png","222120010","cc4b2066cfef89f2475de1d4da4b29c7","m");
INSERT INTO mahasiswa VALUES("222120011","Andra Raines Sagita","P","222120011@student.unaki.ac.id","Sistem Informasi - S1","female.png","222120011","14180f38f11db420937b98aa24fad581","m");
INSERT INTO mahasiswa VALUES("222120012","Zacharia Christyansen","L","222120012@student.unaki.ac.id","Sistem Informasi - S1","man.png","222120012","93ae9dd0dd986fccf90742eea7b54fd6","m");
INSERT INTO mahasiswa VALUES("222120014","Ajeng Tria Amanda","P","222120014@student.unaki.ac.id","Sistem Informasi - S1","female.png","222120014","43317d3fd0d3344a7152250b9fd0dc2f","m");
INSERT INTO mahasiswa VALUES("222120020","Timious Kardia Yosel Suwarno","L","222120020@student.unaki.ac.id","Sistem Informasi - S1","man.png","222120020","e3759ed30939d0678940f576ef125b60","m");
INSERT INTO mahasiswa VALUES("222120022","Kristiani","P","222120022@student.unaki.ac.id","Sistem Informasi - S1","female.png","222120022","3330c219883cc66985db9473f9f0c6e6","m");
INSERT INTO mahasiswa VALUES("222120024","Megasari Alasta","P","222120024@student.unaki.ac.id","Sistem Informasi - S1","female.png","222120024","c9473b72be382f77b054ed1a0a0ce897","m");
INSERT INTO mahasiswa VALUES("222120026","David Decvrianus","L","222120026@student.unaki.ac.id","Sistem Informasi - S1","man.png","222120026","172522ec1028ab781d9dfd17eaca4427","m");
INSERT INTO mahasiswa VALUES("222120029","Stevanus Andinata Ginting","L","222120029@student.unaki.ac.id","Sistem Informasi - S1","man.png","222120029","f385ae958257e19ba5eca887b765bc65","m");
INSERT INTO mahasiswa VALUES("222120032","Indra Sugara","L","222120032@student.unaki.ac.id","Sistem Informasi - S1","man.png","222120032","e24f6e3ce19ee0728ff1c443e4ff488d","m");
INSERT INTO mahasiswa VALUES("222120033","Yesaya Primadianto Sutrisno","L","222120033@student.unaki.ac.id","Sistem Informasi - S1","man.png","222120033","7084eb4055385637f7c7b2a4c98b8a5e","m");
INSERT INTO mahasiswa VALUES("222120035","Hendra Stefanus","L","222120035@student.unaki.ac.id","Sistem Informasi - S1","man.png","222120035","a04cca766a885687e33bc6b114230ee9","m");
INSERT INTO mahasiswa VALUES("222120036","Otniel Chandra Bale","L","222120036@student.unaki.ac.id","Sistem Informasi - S1","man.png","222120036","fe19bf8655db4aedadfa2ed666f16ae4","m");
INSERT INTO mahasiswa VALUES("222120042","Johan Amriyahya","L","222120042@student.unaki.ac.id","Sistem Informasi - S1","man.png","222120042","7fedcb034ecf9df4be8c1ea13362053b","m");
INSERT INTO mahasiswa VALUES("222130008","Yosua Christian","L","222130008@student.unaki.ac.id","Sistem Informasi - S1","man.png","222130008","0a810b127cc9448c08522476682769ca","m");
INSERT INTO mahasiswa VALUES("222140001","Angga Pratama","L","222140001@student.unaki.ac.id","Sistem Informasi - S1","man.png","222140001","8479c86c7afcb56631104f5ce5d6de62","m");
INSERT INTO mahasiswa VALUES("222140002","Rezha Aditya Gunawan","L","222140002@student.unaki.ac.id","Sistem Informasi - S1","man.png","222140002","edfb15986d681461b02a4f837349bb38","m");
INSERT INTO mahasiswa VALUES("222140003","Ivan Rowandi Budiman","L","222140003@student.unaki.ac.id","Sistem Informasi - S1","man.png","222140003","2c42e5cf1cdbafea04ed267018ef1511","m");
INSERT INTO mahasiswa VALUES("222140004","Satri Rahmad Apriyanto Gea","L","222140004@student.unaki.ac.id","Sistem Informasi - S1","man.png","222140004","58b1c84d77907ff905f2081c097ae70d","m");
INSERT INTO mahasiswa VALUES("222140005","Desman Emanuel Warasi","L","222140005@student.unaki.ac.id","Sistem Informasi - S1","man.png","222140005","a55d721596c2766b5343ae5eca5c7319","m");
INSERT INTO mahasiswa VALUES("222140006","Rio Matius","L","222140006@student.unaki.ac.id","Sistem Informasi - S1","man.png","222140006","d5ed38fdbf28bc4e58be142cf5a17cf5","m");
INSERT INTO mahasiswa VALUES("222140007","Eliazer Paul Samuel Sitohang","L","222140007@student.unaki.ac.id","Sistem Informasi - S1","man.png","222140007","74f92ce4e4af334b65537bc570f6d29d","m");
INSERT INTO mahasiswa VALUES("222140008","Yan Fredrik Tarigan","L","222140008@student.unaki.ac.id","Sistem Informasi - S1","man.png","222140008","911f6332e7f90b94b87f15377263995c","m");
INSERT INTO mahasiswa VALUES("222140009","Stefen Wijaya Haris Siswoyo","L","222140009@student.unaki.ac.id","Sistem Informasi - S1","man.png","222140009","cffb28f528043e8ef8d63ff368663051","m");
INSERT INTO mahasiswa VALUES("222150001","Muhammad Sulaiman","L","222150001@student.unaki.ac.id","Sistem Informasi - S1","man.png","222150001","a7777999e260290f68a1455cacdabf6c","m");
INSERT INTO mahasiswa VALUES("222150003","Apfia Pransiski","P","222150003@student.unaki.ac.id","Sistem Informasi - S1","female.png","222150003","9f2c4538947b1a6e1f26f699c91bda79","m");
INSERT INTO mahasiswa VALUES("222150004","Feibe Veronika Sipota","P","222150004@student.unaki.ac.id","Sistem Informasi - S1","female.png","222150004","bfdf605905316de6423eb5cf61b483ed","m");
INSERT INTO mahasiswa VALUES("222150005","Oei, Vertasia Nugraheni","L","222150005@student.unaki.ac.id","Sistem Informasi - S1","female.png","222150005","4a29cc3200c104cf1af49aa81c019e09","m");
INSERT INTO mahasiswa VALUES("222150007","Hold Deo Charunia","L","222150007@student.unaki.ac.id","Sistem Informasi - S1","man.png","222150007","af1d8213f4a22b0f9803fec9259ff7a8","m");
INSERT INTO mahasiswa VALUES("222150008","Rimba Agustina","P","222150008@student.unaki.ac.id","Sistem Informasi - S1","female.png","222150008","a6dc4c5d7d67614c6b7476ab01ae5ec7","m");
INSERT INTO mahasiswa VALUES("222150009","Malfin Maniani","L","222150009@student.unaki.ac.id","Sistem Informasi - S1","man.png","222150009","b1731ba8d8e2b89bea6f62c396bf79a0","m");
INSERT INTO mahasiswa VALUES("222150010","Aliong Saputra","L","222150010@student.unaki.ac.id","Sistem Informasi - S1","man.png","222150010","bc2451eeafbac1ae95ec7343d07f068b","m");
INSERT INTO mahasiswa VALUES("222160001","Great Edo Charunia","L","222160001@student.unaki.ac.id","Sistem Informasi - S1","man.png","222160001","acaa16770db76c1ffb9cee51c3cabfcf","m");
INSERT INTO mahasiswa VALUES("222160002","Elisabeth Victory May Ary","P","222160002@student.unaki.ac.id","Sistem Informasi - S1","female.png","222160002","f11d689dda4227953e50a0c4ee2ed3f2","m");
INSERT INTO mahasiswa VALUES("222160003","Yohanes Alvena","L","222160003@student.unaki.ac.id","Sistem Informasi - S1","man.png","222160003","493331a7321bf622460493a8cda5e4c4","m");
INSERT INTO mahasiswa VALUES("222160004","Tri Maena Krismantara","L","222160004@student.unaki.ac.id","Sistem Informasi - S1","man.png","222160004","d2cfe69af2d64330670e08efb2c86df7","m");
INSERT INTO mahasiswa VALUES("222160005","Lastri Agustika P","P","222160005@student.unaki.ac.id","Sistem Informasi - S1","female.png","222160005","707bedd98d8abd4346de94fffa35b5c5","m");
INSERT INTO mahasiswa VALUES("222160006","Danang Yudhistira","L","222160006@student.unaki.ac.id","Sistem Informasi - S1","man.png","222160006","6a17faad3b1275fd2558d5435c58440e","m");
INSERT INTO mahasiswa VALUES("222160007","Yahya Benyamin Sabuna","L","222160007@student.unaki.ac.id","Sistem Informasi - S1","man.png","222160007","59202463fd4c312b063293b88f6063b2","m");
INSERT INTO mahasiswa VALUES("222160008","Dani Febrian Wijadi","L","222160008@student.unaki.ac.id","Sistem Informasi - S1","man.png","222160008","55b7e8b895d047537e672250dd781555","m");
INSERT INTO mahasiswa VALUES("222160009","Adi Sulistia","L","222160009@student.unaki.ac.id","Sistem Informasi - S1","man.png","222160009","c46335eb267e2e1cde5b017acb4cd799","m");
INSERT INTO mahasiswa VALUES("222160010","Kharistin Naftalia","P","222160010@student.unaki.ac.id","Sistem Informasi - S1","female.png","222160010","d29372cf37df093b7915360a89117816","m");
INSERT INTO mahasiswa VALUES("222160011","Delchi","P","222160011@student.unaki.ac.id","Sistem Informasi - S1","female.png","222160011","52a1b57d47b9a4c87684a4ffb82f4431","m");
INSERT INTO mahasiswa VALUES("223110018","Novisto Pratama Putra","L","223110018@student.unaki.ac.id","Teknik Informatika - S1","man.png","223110018","095ffa63360f1afec8bd0f563b41102a","m");
INSERT INTO mahasiswa VALUES("223110022","Tiara Kartikasari","P","223110022@student.unaki.ac.id","Teknik Informatika - S1","female.png","223110022","4600bb8b66b6a2af771fbb0566732196","m");
INSERT INTO mahasiswa VALUES("223110047","Michael Ahadi Husodo Lenggono","L","223110047@student.unaki.ac.id","Teknik Informatika - S1","man.png","223110047","0acf4539a14b3aa27deeb4cbdf6e989f","m");
INSERT INTO mahasiswa VALUES("223110090","Tri Wahyuni","P","223110090@student.unaki.ac.id","Teknik Informatika - S1","female.png","223110090","d2cfe69af2d64330670e08efb2c86df7","m");
INSERT INTO mahasiswa VALUES("223120002","Yonathan Aditya Purnama","L","223120002@student.unaki.ac.id","Teknik Informatika - S1","man.png","223120002","e9da9911788d897aa0e9e807ca90d4ce","m");
INSERT INTO mahasiswa VALUES("223120013","Merlipson Terinate","L","223120013@student.unaki.ac.id","Teknik Informatika - S1","man.png","223120013","77795c39bbf9c56c94f467f286d08cbd","m");
INSERT INTO mahasiswa VALUES("223120014","Temasetia Zebua","L","223120014@student.unaki.ac.id","Teknik Informatika - S1","man.png","223120014","4dae2052ba7f59d219f211805ca8e952","m");
INSERT INTO mahasiswa VALUES("223120031","Ruth Nesya Adelweis Sumule","P","223120031@student.unaki.ac.id","Teknik Informatika - S1","female.png","223120031","81ea66d57d6b827ef722f4f20f8a669c","m");
INSERT INTO mahasiswa VALUES("223120034","Kaspa Yobel Batubara","L","223120034@student.unaki.ac.id","Teknik Informatika - S1","man.png","223120034","efe5206c2b6a54c9ff1bb2a9ac057210","m");
INSERT INTO mahasiswa VALUES("223120046","Devi Kurnia","P","223120046@student.unaki.ac.id","Teknik Informatika - S1","female.png","223120046","f5c2db1f19bdde37e740e86b70d0534f","m");
INSERT INTO mahasiswa VALUES("223120048","Ameng Selvanus","L","223120048@student.unaki.ac.id","Teknik Informatika - S1","man.png","223120048","ffb0e777a539c14e061f9ceceb6712c6","m");
INSERT INTO mahasiswa VALUES("223120053","Imam Mardani","L","223120053@student.unaki.ac.id","Teknik Informatika - S1","man.png","223120053","eaccb8ea6090a40a98aa28c071810371","m");
INSERT INTO mahasiswa VALUES("223130001","Willy Andrianto Halim","L","223130001@student.unaki.ac.id","Teknik Informatika - S1","man.png","223130001","e7236697824fb37763235980f1061218","m");
INSERT INTO mahasiswa VALUES("223130002","Michelle Margaretha Singgih","P","223130002@student.unaki.ac.id","Teknik Informatika - S1","female.png","223130002","2345f10bb948c5665ef91f6773b3e455","m");
INSERT INTO mahasiswa VALUES("223130003","Jeri Warisman","L","223130003@student.unaki.ac.id","Teknik Informatika - S1","man.png","223130003","d63e6966c704eec1885b753d5b257b3c","m");
INSERT INTO mahasiswa VALUES("223130004","Alfatkhah Mu\'arifah","P","223130004@student.unaki.ac.id","Teknik Informatika - S1","female.png","223130004","ae7b71496d5082415675cddf64283223","m");
INSERT INTO mahasiswa VALUES("223130005","Charolina Br. Sinukaban","P","223130005@student.unaki.ac.id","Teknik Informatika - S1","female.png","223130005","a2a9e923c33da9e528380648ae0a6b49","m");
INSERT INTO mahasiswa VALUES("223130006","Joko Subandono","L","223130006@student.unaki.ac.id","Teknik Informatika - S1","man.png","223130006","9ba0009aa81e794e628a04b51eaf7d7f","m");
INSERT INTO mahasiswa VALUES("223130008","Esda Hosea Rido Harianto","L","223130008@student.unaki.ac.id","Teknik Informatika - S1","man.png","223130008","532c654e98f6ed906945dfa81351b908","m");
INSERT INTO mahasiswa VALUES("223130009","Sadi Wantoro Pane","L","223130009@student.unaki.ac.id","Teknik Informatika - S1","man.png","223130009","48abbef8cb2a1444c87c2838aec5e93d","m");
INSERT INTO mahasiswa VALUES("223130010","Priskila Eka Kurniawati","P","223130010@student.unaki.ac.id","Teknik Informatika - S1","female.png","223130010","fa43d72ae115dae0ef71221c2ff458c5","m");
INSERT INTO mahasiswa VALUES("223130011","Yan Masafi Maniani","L","223130011@student.unaki.ac.id","Teknik Informatika - S1","man.png","223130011","911f6332e7f90b94b87f15377263995c","m");
INSERT INTO mahasiswa VALUES("223130012","Jonius Daniel","L","223130012@student.unaki.ac.id","Teknik Informatika - S1","man.png","223130012","057e3e9d27dfbe08e07853c606195b57","m");
INSERT INTO mahasiswa VALUES("223130014","Surya Jaya Putra","","223130014@student.unaki.ac.id","Teknik Informatika - S1","man.png","223130014","aff8fbcbf1363cd7edc85a1e11391173","m");
INSERT INTO mahasiswa VALUES("223130015","Wisnu Prabowo","L","223130015@student.unaki.ac.id","Teknik Informatika - S1","man.png","223130015","67340a8acc49d521d7fdd25db913bf9d","m");
INSERT INTO mahasiswa VALUES("223130016","Natan Oktavian Iwan Putra","L","223130016@student.unaki.ac.id","Teknik Informatika - S1","man.png","223130016","18dcb0929987319bcb41e933e23c4a4f","m");
INSERT INTO mahasiswa VALUES("223130019","Franstorian Ahitofel","L","223130019@student.unaki.ac.id","Teknik Informatika - S1","man.png","223130019","8c919322092a3188addb457a44731ab5","m");
INSERT INTO mahasiswa VALUES("223130022","Iqbal Azri Aji","L","223130022@student.unaki.ac.id","Teknik Informatika - S1","man.png","223130022","eedae20fc3c7a6e9c5b1102098771c70","m");
INSERT INTO mahasiswa VALUES("223130040","Sofater Yonesky Simamora","L","223130040@student.unaki.ac.id","Teknik Informatika - S1","man.png","223130040","af7c766b368d201f1896e237fdd63781","m");
INSERT INTO mahasiswa VALUES("223130050","Haris Sastro Barneo","L","223130050@student.unaki.ac.id","Teknik Informatika - S1","man.png","223130050","c0ba88b8bca79ca3b50b96abdf431766","m");
INSERT INTO mahasiswa VALUES("223140001","Tan Akira Richardo Darmawan","L","223140001@student.unaki.ac.id","Teknik Informatika - S1","man.png","223140001","5b2d4484498235e80d61a233a7c04991","m");
INSERT INTO mahasiswa VALUES("223140002","Samuel Dwi Prasetyo S.","L","223140002@student.unaki.ac.id","Teknik Informatika - S1","man.png","223140002","d8ae5776067290c4712fa454006c8ec6","m");
INSERT INTO mahasiswa VALUES("223140003","Ezra Yoga Irawan","L","223140003@student.unaki.ac.id","Teknik Informatika - S1","man.png","223140003","8beb6443d15f540099bb756f62b629a3","m");
INSERT INTO mahasiswa VALUES("223140004","Jannatun Naim","P","223140004@student.unaki.ac.id","Teknik Informatika - S1","female.png","223140004","095d1164f8efed4b8df4c60e9377f539","m");
INSERT INTO mahasiswa VALUES("223140005","Linda Purwasih","P","223140005@student.unaki.ac.id","Teknik Informatika - S1","female.png","223140005","eaf450085c15c3b880c66d0b78f2c041","m");
INSERT INTO mahasiswa VALUES("223140006","Eko Amirul Sofik","L","223140006@student.unaki.ac.id","Teknik Informatika - S1","man.png","223140006","e5ea9b6d71086dfef3a15f726abcc5bf","m");
INSERT INTO mahasiswa VALUES("223140007","Zulia Puji Lestari","P","223140007@student.unaki.ac.id","Teknik Informatika - S1","female.png","223140007","7995bfd03575886940fedc95d5f82082","m");
INSERT INTO mahasiswa VALUES("223140008","Nurchamim","L","223140008@student.unaki.ac.id","Teknik Informatika - S1","man.png","223140008","13e041104c63cbaf5e687a0858ea2036","m");
INSERT INTO mahasiswa VALUES("223140009","Eli Tias Tutik","P","223140009@student.unaki.ac.id","Teknik Informatika - S1","female.png","223140009","0a57258559de00695ffb0f1d46bba388","m");
INSERT INTO mahasiswa VALUES("223140010","Eka Nur Siswanti","P","223140010@student.unaki.ac.id","Teknik Informatika - S1","female.png","223140010","79ee82b17dfb837b1be94a6827fa395a","m");
INSERT INTO mahasiswa VALUES("223140013","Stephani Sari Tanaka","P","223140013@student.unaki.ac.id","Teknik Informatika - S1","female.png","223140013","4a3a932425682c8b87dac8d9f2e0128f","m");
INSERT INTO mahasiswa VALUES("223140016","Andreas Adinata Purba","L","223140016@student.unaki.ac.id","Teknik Informatika - S1","man.png","223140016","e024f9589c1e9d64b34cb1257d9c9dfc","m");
INSERT INTO mahasiswa VALUES("223140017","Ferra Oky Netasa","P","223140017@student.unaki.ac.id","Teknik Informatika - S1","female.png","223140017","824bb5a603b8706658101a2e43ce906e","m");
INSERT INTO mahasiswa VALUES("223140019","Rocky Marciano Hendico Sianturi","L","223140019@student.unaki.ac.id","Teknik Informatika - S1","man.png","223140019","5bab541acd761a3093d7c4202b6e1da9","m");
INSERT INTO mahasiswa VALUES("223140020","Ardwi Jaya Nowama","L","223140020@student.unaki.ac.id","Teknik Informatika - S1","man.png","223140020","a52f15dc2f7ce7e4e7797f8d5908c562","m");
INSERT INTO mahasiswa VALUES("223150001","Daniel Kurniawan","L","223150001@student.unaki.ac.id","Teknik Informatika - S1","man.png","223150001","aa47f8215c6f30a0dcdb2a36a9f4168e","m");
INSERT INTO mahasiswa VALUES("223150002","Ken Junio Ardianto","L","223150002@student.unaki.ac.id","Teknik Informatika - S1","man.png","223150002","f632fa6f8c3d5f551c5df867588381ab","m");
INSERT INTO mahasiswa VALUES("223150003","Imam Lilik Setiaji","L","223150003@student.unaki.ac.id","Teknik Informatika - S1","man.png","223150003","eaccb8ea6090a40a98aa28c071810371","m");
INSERT INTO mahasiswa VALUES("223150004","Rendis Arfendo","L","223150004@student.unaki.ac.id","Teknik Informatika - S1","man.png","223150004","91692787c851f41a58f82b254238b222","m");
INSERT INTO mahasiswa VALUES("223150005","Agastya Pradhama Winoto","L","223150005@student.unaki.ac.id","Teknik Informatika - S1","man.png","223150005","215b401f60fafd39ce86a7109ac71ed0","m");
INSERT INTO mahasiswa VALUES("223150006","Safkhi Nurul Huda","L","223150006@student.unaki.ac.id","Teknik Informatika - S1","man.png","223150006","b13e8f9797e40eac1d2ad1c68bcce9a0","m");
INSERT INTO mahasiswa VALUES("223150007","Akhmad Nasfhan Sa\'bani","L","223150007@student.unaki.ac.id","Teknik Informatika - S1","man.png","223150007","c85b5738485dae80d7d85efe9b3f2efc","m");
INSERT INTO mahasiswa VALUES("223150008","Michael Soni Susanto","L","223150008@student.unaki.ac.id","Teknik Informatika - S1","man.png","223150008","0acf4539a14b3aa27deeb4cbdf6e989f","m");
INSERT INTO mahasiswa VALUES("223150009","Angeline Renita Notobudojo","P","223150009@student.unaki.ac.id","Teknik Informatika - S1","female.png","223150009","3c010dac299ef4aa8a2f6d9ce5187698","m");
INSERT INTO mahasiswa VALUES("223150010","Sofwatul Choiriyah","P","223150010@student.unaki.ac.id","Teknik Informatika - S1","female.png","223150010","0f3ed355bf2bfee885e3a9f017347223","m");
INSERT INTO mahasiswa VALUES("223150011","Roy Lando Batuara","L","223150011@student.unaki.ac.id","Teknik Informatika - S1","man.png","223150011","d4c285227493531d0577140a1ed03964","m");
INSERT INTO mahasiswa VALUES("223150013","Rizka Miladyna Yunash","P","223150013@student.unaki.ac.id","Teknik Informatika - S1","female.png","223150013","aef2c231d5e776c0e0656eaf68767848","m");
INSERT INTO mahasiswa VALUES("223150014","Stefanus Jordan","L","223150014@student.unaki.ac.id","Teknik Informatika - S1","man.png","223150014","8dd2cdcec15a6f3a4ef80d18c27ed2c2","m");
INSERT INTO mahasiswa VALUES("223150017","Ade Kristanto","L","223150017@student.unaki.ac.id","Teknik Informatika - S1","man.png","223150017","a562cfa07c2b1213b3a5c99b756fc206","m");
INSERT INTO mahasiswa VALUES("223150018","Daniel Bezaliel Aholiab Welang","L","223150018@student.unaki.ac.id","Teknik Informatika - S1","man.png","223150018","aa47f8215c6f30a0dcdb2a36a9f4168e","m");
INSERT INTO mahasiswa VALUES("223150020","Dimas Ardi Wicaksono","L","223150020@student.unaki.ac.id","Teknik Informatika - S1","man.png","223150020","7d49e40f4b3d8f68c19406a58303f826","m");
INSERT INTO mahasiswa VALUES("223150021","Yupin Enumbi","L","223150021@student.unaki.ac.id","Teknik Informatika - S1","man.png","223150021","cc377b3c5082c205206fd4222a975066","m");
INSERT INTO mahasiswa VALUES("223150022","Farid Lukman Saputro","L","223150022@student.unaki.ac.id","Teknik Informatika - S1","man.png","223150022","a1d12da42d4302e53d510954344ad164","m");
INSERT INTO mahasiswa VALUES("223150072","Aris Syarifudin","L","223150072@student.unaki.ac.id","Teknik Informatika - S1","man.png","223150072","0ff6c3ace16359e41e37d40b8301d67f","m");
INSERT INTO mahasiswa VALUES("223160002","Ines Leonita Notobudojo","P","223160002@student.unaki.ac.id","Teknik Informatika - S1","female.png","223160002","e559744627cceb9d06579d548b57bc01","m");
INSERT INTO mahasiswa VALUES("223160003","Taufiq Hafidzin","L","223160003@student.unaki.ac.id","Teknik Informatika - S1","man.png","223160003","f4eff635e6dfe584a1a536dbc7718f3d","m");
INSERT INTO mahasiswa VALUES("223160004","Theofilus Kharunia Djaya Parhusip","L","223160004@student.unaki.ac.id","Teknik Informatika - S1","man.png","223160004","b23d63849e110abecbcce586b0f7dc69","m");
INSERT INTO mahasiswa VALUES("223160006","Giovanni Anderson Rieuwpassa","L","223160006@student.unaki.ac.id","Teknik Informatika - S1","man.png","223160006","037c70dbc1c812f6b2091688804d7b17","m");
INSERT INTO mahasiswa VALUES("223160007","Aldo Heryanto","L","223160007@student.unaki.ac.id","Teknik Informatika - S1","man.png","223160007","b104ab9a0e58c861b9628208b3fecd58","m");
INSERT INTO mahasiswa VALUES("223160008","Ferry Lexander","L","223160008@student.unaki.ac.id","Teknik Informatika - S1","man.png","223160008","46171b077997b166bb30cf5494eff2f8","m");
INSERT INTO mahasiswa VALUES("223160009","Dedi Pandia","L","223160009@student.unaki.ac.id","Teknik Informatika - S1","man.png","223160009","c5897fbcc14ddcf30dca31b2735c3d7e","m");
INSERT INTO mahasiswa VALUES("223160010","Venny Veronika Br Tarigan","P","223160010@student.unaki.ac.id","Teknik Informatika - S1","man.png","223160010","810e58e7657b368bbb9b1e2128254878","m");
INSERT INTO mahasiswa VALUES("223160011","Abednego","L","223160011@student.unaki.ac.id","Teknik Informatika - S1","man.png","223160011","81895dbc8c783edfb7f8a2ce39afae5e","m");
INSERT INTO mahasiswa VALUES("223160012","Agus Stenly Maniani","L","223160012@student.unaki.ac.id","Teknik Informatika - S1","man.png","223160012","fdf169558242ee051cca1479770ebac3","m");
INSERT INTO mahasiswa VALUES("223160013","Yuswa Catur Barada","L","223160013@student.unaki.ac.id","Teknik Informatika - S1","man.png","223160013","14e5c03a5f2aa96777838eadc3e40653","m");
INSERT INTO mahasiswa VALUES("223160014","Frida Vivi Rosalina","P","223160014@studentt.unaki.ac.id","Teknik Informatika - S1","man.png","223160014","f60834ce35581c434a68022f2e84f796","m");
INSERT INTO mahasiswa VALUES("223160015","Elisa Petra Rusendi Ratag","P","223160015@student.unaki.ac.id","Teknik Informatika - S1","female.png","223160015","eaba1bca7df38544439d482bb60ab916","m");
INSERT INTO mahasiswa VALUES("223160016","Marthen Hery Josova","L","223160016@student.unaki.ac.id","Teknik Informatika - S1","man.png","223160016","4787ee92357480cc1e4be08d06f88ba3","m");
INSERT INTO mahasiswa VALUES("223160017","Putriani Silalahi","P","223160016@student.unaki.ac.id","Teknik Informatika - S1","female.png","223160017","9b31faf63880fbcad2fc51b69a45ebba","m");
INSERT INTO mahasiswa VALUES("223160018","Adriel Yonatan","L","223160018@student.unaki.ac.id","Teknik Informatika - S1","man.png","223160018","91e21671be6d7a68a84e7eaffc23a54d","m");
INSERT INTO mahasiswa VALUES("223160019","Cahaya Setia Elisabeth Gultom","P","223160019@student.unaki.ac.id","Teknik Informatika - S1","female.png","223160019","bc5766ab6d36025412287a7703e9f46b","m");
INSERT INTO mahasiswa VALUES("223160020","Tan Lucas Andy Setiawan","L","223160020@student.unaki.ac.id","Teknik Informatika - S1","man.png","223160020","5b2d4484498235e80d61a233a7c04991","m");
INSERT INTO mahasiswa VALUES("223160021","Maria Susanti","P","223160020@student.unaki.ac.id","Teknik Informatika - S1","female.png","223160021","263bce650e68ab4e23f28263760b9fa5","m");
INSERT INTO mahasiswa VALUES("223160023","Ari Yunus Hedrawan","L","223160023@student.unaki.ac.id","Teknik Informatika - S1","man.png","223160023","fc292bd7df071858c2d0f955545673c1","m");
INSERT INTO mahasiswa VALUES("223160024","Fransiskus Rossi Jati Nugroho","L","223160024@student.unaki.ac.id","Teknik Informatika - S1","man.png","223160024","ce3d31947d7ab9383a15fbe8780b2b62","m");
INSERT INTO mahasiswa VALUES("223160025","Bustomi Arifin","L","223160025@student.unaki.ac.id","Teknik Informatika - S1","man.png","223160025","4c4d250036d2e23cbfd9cd9cdf313e4c","m");
INSERT INTO mahasiswa VALUES("223160026","Eko Sumarwan","L","223160026@student.unaki.ac.id","Teknik Informatika - S1","man.png","223160026","e5ea9b6d71086dfef3a15f726abcc5bf","m");
INSERT INTO mahasiswa VALUES("223160027","Natalia Kurnia Hapsari","P","223160027@student.unaki.ac.id","Teknik Informatika - S1","female.png","223160027","c1ed60949799e3adcd72928bb3314fe0","m");
INSERT INTO mahasiswa VALUES("223160028","Rico Sugiarto Dharmawan","L","223160028@student.unaki.ac.id","Teknik Informatika - S1","man.png","223160028","be89e250d8388c5e7ded2f1630e5daa4","m");
INSERT INTO mahasiswa VALUES("223160029","Moh Eksan","L","223160029@student.unaki.ac.id","Teknik Informatika - S1","man.png","223160029","94e510ecc1b1d7a405c0e7aa18db792b","m");
INSERT INTO mahasiswa VALUES("223170006","Adhi Mulyanto Kawengian","L","223170006@student.unaki.ac.id","Teknik Informatika - S1","man.png","223170006","092bcc1028d905aa6c2c30ebe833f90f","m");
INSERT INTO mahasiswa VALUES("223990162","Indriawan Prastono","L","223990162@student.unaki.ac.id","Teknik Informatika - S1","man.png","223990162","4e03305eff3daaedfd746530e040cb84","m");
INSERT INTO mahasiswa VALUES("penguji1","Penguji 1","L","penguji1@student.unaki.ac.id","Teknik Informatika - S1","man.png","penguji1","0a075e20898150c94b6a07c875a2d13e","m");
INSERT INTO mahasiswa VALUES("penguji2","Penguji 2","L","penguji2@student.unaki.ac.id","Sistem Informasi - S1","man.png","penguji2","8b79b882c4eb820416908c79818d119f","m");
INSERT INTO mahasiswa VALUES("penguji3","Penguji 3","L","penguji3@student.unaki.ac.id","Teknik Informatika - S1","man.png","penguji3","01d5ece8f15466291277036b4d4208cb","m");
INSERT INTO mahasiswa VALUES("penguji4","Penguji 4","L","penguji4@student.unaki.ac.id","Sistem Informasi - S1","man.png","penguji4","f09bf110f1648b3136408285fa379bed","m");
INSERT INTO mahasiswa VALUES("penguji5","penguji 5","L","penguji5@student.unaki.ac.id","Teknik Informatika - S1","man.png","penguji5","2f8512bdf4315f9a1e19df9f89f597d4","m");



DROP TABLE pengajuan;

CREATE TABLE `pengajuan` (
  `id_pengajuan` int(10) NOT NULL AUTO_INCREMENT,
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
  `tanggal` date NOT NULL,
  `Komentar` varchar(500) NOT NULL,
  PRIMARY KEY (`id_pengajuan`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=latin1;

INSERT INTO pengajuan VALUES("1","222140002","Rezha Aditya Gunawan","Sistem Informasi - S1","Aplikasi Transaksi Pembelian dan Penjualan Makanan Pada Rumah Makan Mie Jempol Semarang","NamaMahasiswa_NIM.rar","ganjil","2018/2019","skripsi","Yusup, S.Si., M.Kom.","Sinta Tridian Galih, S.T., M.Kom.","0","2019-10-10","");
INSERT INTO pengajuan VALUES("2","222150005","Oei, Vertasia Nugraheni","Sistem Informasi - S1","Sistem Informasi Pemasaran Di Amor Event And Wedding Organizer Semarang","NamaMahasiswa_NIM.rar","ganjil","2018/2019","skripsi","Yohana Tri Widayati, S.E., M.Kom.","Sinta Tridian Galih, S.T., M.Kom.","0","2019-10-10","");
INSERT INTO pengajuan VALUES("3","222140008","Yan Fredrik Tarigan","Sistem Informasi - S1","Perancangan Sistem Informasi Perpustakaan Pada SMP Masehi PSAK Semrarang Berbasis Multiuser","NamaMahasiswa_NIM.rar","genap","2017/2018","skripsi","Yusup, S.Si., M.Kom.","Suwarno, S.Si., M.Kom.","0","2019-10-11","");
INSERT INTO pengajuan VALUES("4","222120033","Yesaya Primadianto Sutrisno","Sistem Informasi - S1","Sistem Informasi Penjualan dan Pemasran Alat Musil Berbasi Web Di Toko Surya Putra Music Semarang","NamaMahasiswa_NIM.rar 	","ganjil","2017/2018","skripsi","Yusup, S.Si., M.Kom.","Suwarno, S.Si., M.Kom.","0","2019-10-15","");
INSERT INTO pengajuan VALUES("5","222120022","Zacharia Christyansen","Sistem Informasi - S1","Sistem Informasi Penjualan Pada CV. Kurnia Jaya Berbasis Visual Basic","NamaMahasiswa_NIM.rar","ganjil","2017/2018","skripsi","Yohana Tri Widayati, S.E., M.Kom.","Ana Wahyuni, S.Si., M.Kom.","0","2019-10-15","");
INSERT INTO pengajuan VALUES("6","222120035","Hendra Stefanus","Sistem Informasi - S1","Aplikasi Administrasi Pada Asrama UNAKI Berbasis Visual Basic","NamaMahasiswa_NIM.rar","genap","2015/2016","skripsi","Alexander Dharmawan, S.T., M.Kom.","Yusup, S.Si., M.Kom.","0","2019-10-15","");
INSERT INTO pengajuan VALUES("7","222120032","Indra Sugara","Sistem Informasi - S1","Sistem Informasi Pada Hotel Sahabat Baru Semarang","NamaMahasiswa_NIM.rar","genap","2015/2016","skripsi","Ana Wahyuni, S.Si., M.Kom.","Suprapto, S.E., M.Kom.","0","2019-10-15","");
INSERT INTO pengajuan VALUES("8","223150006","Safkhi Nurul Huda","Teknik Informatika - S1","Perancangan Sistem Penggajian Karyawan Toko PIH FF JAYA Berbasis Visual Basic","NamaMahasiswa_NIM.rar","ganjil","2018/2019","kp","Sinta Tridian Galih, S.T., M.Kom.","","0","2018-08-27","");
INSERT INTO pengajuan VALUES("9","223150002","Ken Junio Ardianto","Teknik Informatika - S1","Perancangan Aplikasi Penjualan Mebel Berbasis Web Pada PT. LIGNA FURNITURE","NamaMahasiswa_NIM.rar","ganjil","2018/2019","kp","Alexander Dharmawan, S.T., M.Kom.","","0","2018-08-27","");
INSERT INTO pengajuan VALUES("10","223150011","Roy Lando Batuara","Teknik Informatika - S1","Perancangan Sistem Informasi Penjualan Jam Tangan  Berbasis Web Pada Toko Panen Watch","NamaMahasiswa_NIM.rar","ganjil","2018/2019","kp","Jutono Gondohanindijo, M.Kom.","","0","2018-08-27","");
INSERT INTO pengajuan VALUES("11","223150013","Rizka Miladyna Yunash","Teknik Informatika - S1","Perancangan Website Akademik Berbasis Web Dinamis Menggunakan Framework Bootstrap Pada SMA Negeri 1 Kota Mungkid","NamaMahasiswa_NIM.rar","ganjil","2018/2019","kp","Satrio Agung Prakoso, S.T.","","0","2018-08-27","");
INSERT INTO pengajuan VALUES("12","223150017","Ade Kristanto","Teknik Informatika - S1","Perancangan Aplikasi Customer Relationship Management (CRM) Berbasis Mobile Dengan Framework Flutter Di Yayasan Anugrah Pressindo Indonesia (Anugrah Ministries)","NamaMahasiswa_NIM.rar","ganjil","2018/2019","kp","Satrio Agung Prakoso, S.T.","","0","2018-08-27","");
INSERT INTO pengajuan VALUES("13","223150018","Daniel Bezaliel Aholiab Welang","Teknik Informatika - S1","Aplikasi Dekstop Dokumentasi Arsip Menggunakan Bahasa Pemrograman Java Dan Database Mysql Pada SMP Kristen Gergaji Semarang","NamaMahasiswa_NIM.rar","ganjil","2018/2019","kp","Yohana Tri Widayati, S.E., M.Kom.","","0","2018-08-27","");
INSERT INTO pengajuan VALUES("14","223160008","Ferry Lexander","Teknik Informatika - S1","Aplikasi Pengolahan Data Stok Barang Dengan Java Pada CV. Pelita Mas","NamaMahasiswa_NIM.rar","ganjil","2018/2019","kp","Yani Prihati, S.Si., M.Kom.","","0","2018-08-27","");
INSERT INTO pengajuan VALUES("15","223160027","Natalia Kurnia Hapsari","Teknik Informatika - S1","Perancangan Sistem Informasi Absensi Manggunakan PHP di PT. British Gardens Semarang","NamaMahasiswa_NIM.rar","ganjil","2018/2019","kp","0621066901","","1","2018-08-27","");
INSERT INTO pengajuan VALUES("16","223160028","Rico Sugiarto Dharmawan","Teknik Informatika - S1","Sistem Informasi Inventory Stok Barang Berbasis WEB pada CV. Kartika Sari","NamaMahasiswa_NIM.rar","ganjil","2018/2019","kp","Alexander Dharmawan, S.T., M.Kom.","","0","2018-08-27","");
INSERT INTO pengajuan VALUES("17","223170006","Adhi Mulyanto Kawengian","Teknik Informatika - S1","Aplikasi Desktop Inventory Dengan Java pada CV. Cempaka Semarang","NamaMahasiswa_NIM.rar","ganjil","2018/2019","kp","Sinta Tridian Galih, S.T., M.Kom.","","1","0000-00-00","");
INSERT INTO pengajuan VALUES("18","223160024","Fransiskus Rossi Jati Nugroho","Teknik Informatika - S1","Perancangan Sistem Rekomendasi Kelayalan Pemberian Kredit Pada PT. BPR Sinar Mitra Sejahtera Dengan Metode Smart (Simple Multi Attribute Rating Technique) Berbasis Web","NamaMahasiswa_NIM.rar","ganjil","2018/2019","kp","0609056102","","1","2018-08-27","");
INSERT INTO pengajuan VALUES("19","223150022","Farid Lukman Saputro","Teknik Informatika - S1","Squid Proxy Server Berbasis Web dan CLI Pada Ubuntu 18.04 (Studi Kasus Pada SMP IT PABP Semarang)","NamaMahasiswa_NIM.rar","ganjil","2018/2019","kp","0613037101","","1","2018-08-27","");
INSERT INTO pengajuan VALUES("20","223120013","Merlipson Terinate","Teknik Informatika - S1","Sistem Informasi Pendataan Umat Gereja Kristen Jawa (GKJ) Jatingaleh Berbasis Web","NamaMahasiswa_NIM.rar","ganjil","2018/2019","skripsi","Yani Prihati, S.Si., M.Kom.","Dr. Harries Arizonia Ismail, S.E., M.M., M.Kom.","1","2018-08-27","");
INSERT INTO pengajuan VALUES("21","223140016","Andreas Adinata Purba","Teknik Informatika - S1","Aplikasi E - Nota Rental Motor di Oke Rental Semarang Berbasis E - Commerce","NamaMahasiswa_NIM.rar","ganjil","2018/2019","skripsi","Alexander Dharmawan, S.T., M.Kom.","Sinta Tridian Galih, S.T., M.Kom.","1","2018-09-27","");
INSERT INTO pengajuan VALUES("22","223150003","Imam Lilik Setiaji","Teknik Informatika - S1","Pembangunan Website Informasi Akademik Berbasis Web Dinamis Menggunakan Framework Twitter Bootstrap Pada MI Islamiyah Podorejo Semarang","NamaMahasiswa_NIM.rar 	","ganjil","2018/2019","skripsi","Suwarno, S.Si., M.Kom.","Satrio Agung Prakoso, S.T.","1","2018-08-27","");
INSERT INTO pengajuan VALUES("23","223150007","Akhmad Nasfhan Sa\'bani","Teknik Informatika - S1","Aplikasi Monitoring Bimbingan Kerja Praktek Pada Universitas AKI Semarang","NamaMahasiswa_NIM.rar 	","ganjil","2018/2019","skripsi","Yani Prihati, S.Si., M.Kom.","Satrio Agung Prakoso, S.T.","1","2018-08-27","");
INSERT INTO pengajuan VALUES("24","223150010","Sofwatul Choiriyah","Teknik Informatika - S1","Aplikasi Pengajuan Proposal Kerja Praktek Secara Online Pada Universitas AKI Semarang (Studi Kasus Fakultas Tenik dan Informatika)","NamaMahasiswa_NIM.rar 	","ganjil","2018/2019","skripsi","Alexander Dharmawan, S.T., M.Kom.","Satrio Agung Prakoso, S.T.","1","2018-08-27","");
INSERT INTO pengajuan VALUES("25","223160024","Fransiskus Rossi Jati Nugroho","Teknik Informatika - S1","Sistem Rekomendasi Kelayalan Pemberian Kredit Pada PT. BPR Sinar Mitra Sejahtera Dengan Metode Smart ( Simple Multi Attribute Rating Technique ) Berbasis Web","NamaMahasiswa_NIM.rar 	","ganjil","2018/2019","skripsi","Alexander Dharmawan, S.T., M.Kom.","Satrio Agung Prakoso, S.T.","1","2018-08-27","");
INSERT INTO pengajuan VALUES("26","223160026","Eko Sumarwan","Teknik Informatika - S1","Sistem Informasi Management Inventory  Multi Store Dengan Java Netbeans di Toko Komputer Multikomp","NamaMahasiswa_NIM.rar 	","ganjil","2018/2019","skripsi","Yani Prihati, S.Si., M.Kom.","Jutono Gondohanindijo, M.Kom.","1","2018-08-27","");
INSERT INTO pengajuan VALUES("27","223130013","Sadi Wantoro Pane","Teknik Informatika - S1","Membangun Aplikasi E-Learning Sekolah Trading® Berbasis Android","NamaMahasiswa_NIM.rar","genap","2018/2019","skripsi","Yani Prihati, S.Si., M.Kom.","Sinta Tridian Galih, S.T., M.Kom.","1","2019-02-11","");
INSERT INTO pengajuan VALUES("28","223150001","Daniel Kurniawan","Teknik Informatika - S1","Aplikasi Data Barang dan Perhitungan Stok Pada Rumah Barong Kendal Berbasis Web","NamaMahasiswa_NIM.rar","genap","2018/2019","skripsi","Yani Prihati, S.Si., M.Kom.","Daniel Saputro, S.Kom., M.T.","1","2019-02-11","");
INSERT INTO pengajuan VALUES("29","223150004","Rendis Arfendo","Teknik Informatika - S1","Aplikasi Pembelajaran Pada Anak Usia Dini Dengan 2 Bahasa Berbasis Android","NamaMahasiswa_NIM.rar","genap","2018/2019","skripsi","Yusup, S.Si., M.Kom.","Satrio Agung Prakoso, S.T.","1","2019-02-11","");
INSERT INTO pengajuan VALUES("30","223150005","Agastya Pradhama Winoto","Teknik Informatika - S1","Pengenalan Suara Manusia Metode Linier Predictive Coding (LPC)","NamaMahasiswa_NIM.rar","genap","2018/2019","skripsi","Suwarno, S.Si., M.Kom.","Jutono Gondohanindijo, M.Kom.","1","2019-02-11","");
INSERT INTO pengajuan VALUES("31","223150006","Safkhi Nurul Huda","Teknik Informatika - S1","Sistem Inventory Stock Barang Toko Fajarjaya Berbasis WEB","NamaMahasiswa_NIM.rar","genap","2018/2019","skripsi","Yani Prihati, S.Si., M.Kom.","Dra. Tri Karyanti, M.Hum.","1","2019-02-11","");
INSERT INTO pengajuan VALUES("32","223150008","Michael Soni Susanto","Teknik Informatika - S1","Sistem Pengendalian Gratifikasi Berbasis WEB Provinsi Jawa Tengah","NamaMahasiswa_NIM.rar","genap","2018/2019","skripsi","Alexander Dharmawan, S.T., M.Kom.","Sinta Tridian Galih, S.T., M.Kom.","1","2019-02-11","");
INSERT INTO pengajuan VALUES("33","223150009","Angeline Renita Notobudojo","Teknik Informatika - S1","Aplikasi Penjualan dan Perhitungan Laba Pada Rumah Barong Kendal Berbasis Web","NamaMahasiswa_NIM.rar","genap","2018/2019","skripsi","Yohana Tri Widayati, S.E., M.Kom.","Satrio Agung Prakoso, S.T.","1","2019-02-11","");
INSERT INTO pengajuan VALUES("34","223150011","Roy Lando Batuara","Teknik Informatika - S1","Aplikasi Sistem Informasi Penjualan Jam Tangan Berbasis WEB Dengan Bahasa PHP Pada Toko Panen Watch","NamaMahasiswa_NIM.rar","genap","2018/2019","skripsi","Yani Prihati, S.Si., M.Kom.","Sinta Tridian Galih, S.T., M.Kom.","1","2019-02-11","");
INSERT INTO pengajuan VALUES("35","223150013","Rizka Miladyna Yunash","Teknik Informatika - S1","Pembuatan Game 3 (Tiga) Dimensi Pengenalan Bahasa Inggris Untuk Siswa Sekolah Dasar Menggunakan Blender Game Engine","NamaMahasiswa_NIM.rar","genap","2018/2019","skripsi","Alexander Dharmawan, S.T., M.Kom.","Yusup, S.Si., M.Kom.","1","2019-02-11","");
INSERT INTO pengajuan VALUES("36","223150014","Stefanus Jordan","Teknik Informatika - S1","Aplikasi Cetak Laporan Barang dan Penjualan Pada Rumah Barong Kendal Berbasis Web","NamaMahasiswa_NIM.rar","genap","2018/2019","skripsi","Suwarno, S.Si., M.Kom.","Jutono Gondohanindijo, M.Kom.","1","2019-02-11","");
INSERT INTO pengajuan VALUES("37","223150017","Ade Kristanto","Teknik Informatika - S1","Aplikasi Customer Relationship Management (CRM) Berbasis Mobile Dengan Framework Flutter di Yayasan Anugrah Pressindo Indonesia","NamaMahasiswa_NIM.rar","genap","2018/2019","skripsi","Alexander Dharmawan, S.T., M.Kom.","Satrio Agung Prakoso, S.T.","1","2019-02-11","");
INSERT INTO pengajuan VALUES("38","223150018","Daniel Bezaliel Aholiab Welang","Teknik Informatika - S1","Aplikasi Latihan Ujian Online Berbasis WEB Menggunakan Bahasa Pemrograman PHP Untuk Siswa SMP Kristen Gergaji","NamaMahasiswa_NIM.rar","genap","2018/2019","skripsi","Yohana Tri Widayati, S.E., M.Kom.","Satrio Agung Prakoso, S.T.","1","2019-02-11","");
INSERT INTO pengajuan VALUES("39","223150021","Yupin Enumbi","Teknik Informatika - S1","Mengola Data Buku di Yayasan Perkantas Semarang","NamaMahasiswa_NIM.rar","genap","2018/2019","skripsi","Sinta Tridian Galih, S.T., M.Kom.","Dra. Tri Karyanti, M.Hum.","1","2019-02-11","");
INSERT INTO pengajuan VALUES("40","223160002","Ines Leonita Notobudojo","Teknik Informatika - S1","Perancangan Sistem Pendukung Keputusan Seleksi Karya Seni Dengan Simple Additive Weighting di Semarang Contemporary Art  Gallery","NamaMahasiswa_NIM.rar","genap","2018/2019","kp","0615057002","","1","2019-02-11","");
INSERT INTO pengajuan VALUES("41","223160003","Taufiq Hafidzin","Teknik Informatika - S1","Perancangan Website Pemasaran Pada Toko Online Distro Kidul Dalan","NamaMahasiswa_NIM.rar","genap","2018/2019","kp","0613037101","","1","2019-02-11","");
INSERT INTO pengajuan VALUES("42","","Theofilus Kharunia Djaya Parhusip","Teknik Informatika - S1","Perancanngan Aplikasi Sistem Informasi Penggajian Karyawan Pada Klinik Kecantikan Venice","NamaMahasiswa_NIM.rar","genap","2018/2019","kp","Yani Prihati, S.Si., M.Kom.","","1","2019-02-11","");
INSERT INTO pengajuan VALUES("43","223160007","Aldo Heryanto","Teknik Informatika - S1","Perancangan Sistem Informasi Data Pengunjung Pada Semarang Contemporary Art Gallery","NamaMahasiswa_NIM.rar","genap","2018/2019","kp","Sinta Tridian Galih, S.T., M.Kom.","","1","2019-02-11","");
INSERT INTO pengajuan VALUES("44","223160009","Dedi Pandia","Teknik Informatika - S1","Rancang Bangun Sistem Informasi Penjualan Pada Apotek Viva Apotek Indraprasta Semarang","NamaMahasiswa_NIM.rar","genap","2018/2019","kp","Jutono Gondohanindijo, M. Kom.","","1","2019-02-11","");
INSERT INTO pengajuan VALUES("45","223160011","Abednego","Teknik Informatika - S1","Perancangan Sistem Pemesanan Sparepart Mobil di Showroom Istana Variasi Semarang","NamaMahasiswa_NIM.rar","genap","2018/2019","kp","Yohana Tri Widayati, S.E., M.Kom.","","1","2019-02-11","");
INSERT INTO pengajuan VALUES("46","223160012","Agus Stenly Maniani","Teknik Informatika - S1","Sistem Absensi Mahasiswa Asrama UNAKI Menggunakan Metode Barcode","NamaMahasiswa_NIM.rar","genap","2018/2019","kp","Alexander Dharmawan, S.T., M.Kom.","","1","2019-02-11","");
INSERT INTO pengajuan VALUES("47","223160013","Yuswa Catur Barada","Teknik Informatika - S1","Sistem Monitoring Perputakaan di Semarang Contemporary Art Galery","NamaMahasiswa_NIM.rar","genap","2018/2019","kp","Dra. Tri Karyanti, M.Hum.","","1","2019-02-11","");
INSERT INTO pengajuan VALUES("48","223160015","Elisa Petra Rusendi Ratag","Teknik Informatika - S1","Sistem Pakar Diagnosis Penyakit Tanaman Sawit Menggunakan Metode Forward Chaining","NamaMahasiswa_NIM.rar","genap","2018/2019","kp","Ana Wahyuni, S.Si., M.Kom","","1","2019-02-11","");
INSERT INTO pengajuan VALUES("49","223160017","Putriani Silalahi","Teknik Informatika - S1","Perancangan Sistem Informasi Penjualan Dan  Persediaan Barang Di Toko Ryosuke Men Fashion","NamaMahasiswa_NIM.rar","genap","2018/2019","kp","Suwarno, S.Si., M.Kom.","","1","2019-02-11","");
INSERT INTO pengajuan VALUES("50","223160018","Adriel Yonatan","Teknik Informatika - S1","Sistem Informasi Akademik Berbasis Web di SMP Negeri 7 Semarang","NamaMahasiswa_NIM.rar","genap","2018/2019","kp","Sinta Tridian Galih, S.T., M.Kom.","","1","2019-02-11","");
INSERT INTO pengajuan VALUES("51","223160019","Cahaya Setia Elisabeth Gultom","Teknik Informatika - S1","Analiisis dan Perancangan Sistem Informasi Monitoring Kesehatan Ibu Hamil di Puskesmas Poncol","NamaMahasiswa_NIM.rar","genap","2018/2019","kp","Yusup, S.Si., M.Kom.","","1","2019-02-11","");
INSERT INTO pengajuan VALUES("52","223160020","Tan Lucas Andy Setiawan","Teknik Informatika - S1","Perancangan Sistem Informasi Gaji Guru dan Karyawan di SMA Masehu PSAK Semarang","NamaMahasiswa_NIM.rar","genap","2018/2019","kp","Satrio Agung Prakoso, S.T.","","1","2019-02-11","");
INSERT INTO pengajuan VALUES("53","223160021","Maria Susanti","Teknik Informatika - S1","Perancangan Sistem Informasi Gaji Guru dan Karyawan di SMA Masehu PSAK Semarang","NamaMahasiswa_NIM.rar","genap","2018/2019","kp","Satrio Agung Prakoso, S.T.","","1","2019-02-11","");
INSERT INTO pengajuan VALUES("54","223160008","Ferry Lexander","Teknik Informatika - S1","Aplikasi Stock Barang dan Penjualan do CV. Pelita Mas Semarang","NamaMahasiswa_NIM.rar","genap","2018/2019","skripsi","Yani Prihati, S.Si., M.Kom.","Dr. Harries Arizonia Ismail, S.E., M.M., M.Kom.","1","2019-02-11","");
INSERT INTO pengajuan VALUES("55","223160006","Giovanni Anderson Rieuwpassa","Teknik Informatika - S1","Sistem Absensi Mahasiswa Menggunakan Teknologi Fingerprint Dengan Metode Biometric Minutiae di Universitas AKI Semarang","NamaMahasiswa_NIM.rar","genap","2018/2019","kp","Alexander Dharmawan, S.T., M.Kom.","","1","2019-02-11","");
INSERT INTO pengajuan VALUES("57","223160003","Taufiq Hafidzin","Teknik Informatika - S1","Prediksi Kemenangan dan Pemilihan Struktur TIM Pada Game Mobile Legends Bang Bang Menggunakan Algoritma Naive Bayes","NamaMahasiswa_NIM.rar","ganjil","2019/2020","skripsi","Yohana Tri Widayati, S.E., M.Kom.","Jutono Gondohanindijo, M.Kom.","1","2019-08-12","");
INSERT INTO pengajuan VALUES("58","223160011","Abednego","Teknik Informatika - S1","Aplikasi Penjualan Aksesoris Mobile Dinamis Pada CV Istana Variasi Semarang","NamaMahasiswa_NIM.rar","ganjil","2019/2020","skripsi","Yohana Tri Widayati, S.E., M.Kom.","Satrio Agung Prakoso, S.T.","1","2019-08-12","");
INSERT INTO pengajuan VALUES("59","223160020","Tan Lucas Andy Setiawan","Teknik Informatika - S1","Sistem Pendukung Keputusan Penentuan Jurusan IPA/IPS Pada SMA Masehi 1 PSAK Semarang Berbasis WEB","NamaMahasiswa_NIM.rar","ganjil","2019/2020","skripsi","Yani Prihati, S.Si., M.Kom.","Sinta Tridian Galih, S.T., M.Kom.","1","2019-08-12","");
INSERT INTO pengajuan VALUES("60","222150001","Muhammad Sulaiman","Sistem Informasi - S1","Sistem Informasi Distribusi Dosen Pembimbing Kerja Praktek di Fakultas Teknik dan Informatika Berbasis Web Pada Universitas AKI","NamaMahasiswa_NIM.rar","genap","2018/2019","skripsi","Suwarno, S.Si., M.Kom.","Sinta Tridian Galih, S.T., M.Kom.","1","2018-02-12","");
INSERT INTO pengajuan VALUES("61","222150003","Apfia Pransiski","Sistem Informasi - S1","Sistem Informasi Perpustakaan di Sekolah Dasar Negeri 04 Kuningan Semarang","NamaMahasiswa_NIM.rar","genap","2018/2019","skripsi","Yohana Tri Widayati, S.E., M.Kom.","Dra. Tri Karyanti, M.Hum.","1","2018-02-12","");
INSERT INTO pengajuan VALUES("62","222150004","Feibe Veronika Sipota","Sistem Informasi - S1","Perancangan Sistem Informasi Rumah Kost Berbasis WEB","NamaMahasiswa_NIM.rar","genap","2018/2019","skripsi","Yohana Tri Widayati, S.E., M.Kom.","Suprapto, S.E., M.Kom.","1","2018-02-12","");
INSERT INTO pengajuan VALUES("63","222150007","Hold Deo Charunia","Sistem Informasi - S1","Sistem Informasi Penjualan Pada Angkringan Pak Muklis Semarang","NamaMahasiswa_NIM.rar","genap","2018/2019","skripsi","Suwarno, S.Si., M.Kom.","Ana Wahyuni, S.Si., M.Kom.","1","2018-02-12","");
INSERT INTO pengajuan VALUES("64","222150008","Rimba Agustina","Sistem Informasi - S1","Monitoring Pencatatan Obat Non Resep Dokter Pada Apotik Muji Waras Semarang","NamaMahasiswa_NIM.rar","genap","2018/2019","skripsi","Sinta Tridian Galih, S.T., M.Kom.","Dra. Tri Karyanti, M.Hum.","1","2018-02-12","");
INSERT INTO pengajuan VALUES("65","222150010","Aliong Saputra","Sistem Informasi - S1","Sistem Informasi Penjualan Pada Toko Panen Watch","NamaMahasiswa_NIM.rar","genap","2018/2019","skripsi","Yusup, S.Si., M.Kom.","Ana Wahyuni, S.Si., M.Kom.","1","2018-02-12","");
INSERT INTO pengajuan VALUES("66","222140002","Rezha Aditya Gunawan","Sistem Informasi - S1","Sistem Informasi Pengendalian Persediaan Bahan Baku Berbasis Visual Basic 6.0 Pada Restoran Mie Jempol Semarang","NamaMahasiswa_NIM.rar","genap","2018/2019","kp","Suprapto, S.E., M.Kom.","","1","2018-02-12","");
INSERT INTO pengajuan VALUES("67","222160002","Elisabeth Victory May Ary","Sistem Informasi - S1","Perancangan Sistem Monitoring Gudang Pada Harmony Furniture Malang","NamaMahasiswa_NIM.rar","genap","2018/2019","kp","Yusup, S.Si., M.Kom.","","1","2018-02-12","");
INSERT INTO pengajuan VALUES("68","222160003","Yohanes Alvena","Sistem Informasi - S1","Perancangan Sistem Pendukung Keputusan Kelayakan Kenaikan Jabatan Pada PT BPR Weleri Makmur Semarang","NamaMahasiswa_NIM.rar","genap","2018/2019","kp","Suprapto, S.E., M.Kom.","","1","2018-02-12","");
INSERT INTO pengajuan VALUES("69","222160005","Lastri Agustika P","Sistem Informasi - S1","Perancangan Sistem Informasi Pembinaan Atlet 02SN Pada Dinas Pemuda dan Olahraga Kota Semarang","NamaMahasiswa_NIM.rar","genap","2018/2019","kp","Sinta Tridian Galih, S.T., M.Kom.","","1","2018-02-12","");
INSERT INTO pengajuan VALUES("70","222160008","Dani Febrian Wijadi","Sistem Informasi - S1","Analisa Perancangan Sistem Informasi Perpustakaan Pada SMA Kebon Dalem Semarang","NamaMahasiswa_NIM.rar","genap","2018/2019","kp","Dra. Tri Karyanti, M.Hum.","","1","2018-02-12","");
INSERT INTO pengajuan VALUES("71","222160010","Kharistin Naftalia","Sistem Informasi - S1","Perancangan Sistem Informasi Perkembangan Belajar Anak Dengan SMS Gateway Pada Yayasan Pusat Perkembangan Anak Blitar","NamaMahasiswa_NIM.rar","genap","2018/2019","kp","Ana Wahyuni, S.Si., M.Kom.","","1","2019-02-11","");
INSERT INTO pengajuan VALUES("72","222160002","Elisabeth Victory May Ary","Sistem Informasi - S1","Sistem Pemasaran Springbed Dinamis Pada Harmony Furniture Malang","NamaMahasiswa_NIM.rar","ganjil","2019/2020","skripsi","Yani Prihati, S.Si., M.Kom.","Suwarno, S.Si., M.Kom.","1","2019-08-12","");
INSERT INTO pengajuan VALUES("73","222160003","Yohanes Alvena","Sistem Informasi - S1","Sistem Rekomendasi Tempat Wisata di Jawa Tengah Dengah Metode AHP Pada Ayo Metu Travel","NamaMahasiswa_NIM.rar","ganjil","2019/2020","skripsi","Yusup, S.Si., M.Kom.","Sinta Tridian Galih, S.T., M.Kom.","1","2019-08-12","");
INSERT INTO pengajuan VALUES("74","222160005","Lastri Agustika P","Sistem Informasi - S1","Sistem Pemasaran Aksesoris Dinamis Pada Istana Variasi Mobil Kota Semarang","NamaMahasiswa_NIM.rar","ganjil","2019/2020","skripsi","Yohana Tri Widayati, S.E., M.Kom.","Yusup, S.Si., M.Kom.","1","2019-08-12","");
INSERT INTO pengajuan VALUES("75","222160008","Dani Febrian Wijadi","Sistem Informasi - S1","Implementasi Sistem Informasi Perpustakaan Repository Dengan Setiadi Pada  Universitas AKI Semarang","NamaMahasiswa_NIM.rar ","ganjil","2019/2020","skripsi","Dra. Tri Karyanti, M.Hum.","Ana Wahyuni, S.Si., M.Kom.","1","2019-08-12","");
INSERT INTO pengajuan VALUES("76","222160010","Kharistin Naftalia","Sistem Informasi - S1","Media Pembelajaran Pengenalan Tata Surya Pada Yayasan Pusat Perkembangan Anak Blitar","NamaMahasiswa_NIM.rar","ganjil","2019/2020","skripsi","Sinta Tridian Gali, S.T., M.Kom.","Dra. Tri Karyanti, M.Hum.","1","2019-10-21","");
INSERT INTO pengajuan VALUES("77","222160004","Tri Maena Krismantara","Sistem Informasi - S1","Pengelolaan Nilai Siswa Berbasis WEB di SMPN 7 Semarang","NamaMahasiswa_NIM.pdf","ganjil","2019/2020","kp","Suprapto, S.E., M.Kom.","","1","2019-08-12","");
INSERT INTO pengajuan VALUES("78","222160007","Yahya Benyamin Sabuna","Sistem Informasi - S1","Sistem Informasi Data Nilai Rapor Siswa Pada SMA Negeri 3 Semarang","NamaMahasiswa_NIM.pdf","ganjil","2019/2020","kp","Ana Wahyuni, S.Si., M.Kom.","","1","2019-08-12","");
INSERT INTO pengajuan VALUES("93","223130022","Iqbal Azri Aji","Teknik Informatika - S1","Qefgjh","Laporan KP (10,000kb).rar","genap","Pilih Tahun Ajaran\'2012/2013","skripsi","","","0","2019-11-14","");



DROP TABLE pengumuman;

CREATE TABLE `pengumuman` (
  `id_pengumuman` int(30) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) NOT NULL,
  `file` varchar(100) NOT NULL,
  `tgl_pengumuman` date NOT NULL,
  PRIMARY KEY (`id_pengumuman`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

INSERT INTO pengumuman VALUES("1","Mahasiswa berhak kerja praktek","Data Mahasiswa KP.pdf","2019-08-08");
INSERT INTO pengumuman VALUES("2","Mahasiswa Berhak Skripsi                                               ","Data Mahasiswa Skripsi.pdf","2019-08-08");
INSERT INTO pengumuman VALUES("3","Surat Keputusan Distribusi Dosen Pembimbing Skripsi Prodi Sistem Informasi","Laporan Dosbing Skripsi SI.pdf","2019-08-22");
INSERT INTO pengumuman VALUES("4","Surat Keputusan Distribusi Dosen Pembimbing Skripsi Prodi Teknik Informatika","Laporan Dosbing Skripsi TI.pdf","2019-08-22");
INSERT INTO pengumuman VALUES("5","Surat Keputusan Distribusi Dosen Pembimbing Kerja Praktek Prodi Sistem Informasi","Laporan Dosbing KP SI.pdf","2019-08-22");



DROP TABLE prodi;

CREATE TABLE `prodi` (
  `id_prodi` varchar(5) NOT NULL,
  `pnama` varchar(50) NOT NULL,
  PRIMARY KEY (`id_prodi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO prodi VALUES("si","Sistem Informasi - S1");
INSERT INTO prodi VALUES("ti","Teknik Informatika - S1");
INSERT INTO prodi VALUES("tmj","Teknik Multimedia dan Jaringan - S1");



DROP TABLE surat_keputusan;

CREATE TABLE `surat_keputusan` (
  `id_surat` int(5) NOT NULL AUTO_INCREMENT,
  `no_sk` varchar(50) NOT NULL,
  `fsop` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  PRIMARY KEY (`id_surat`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO surat_keputusan VALUES("1","143/SK/DEK/FTI/UNAKI/IX/2019","04-02-02/E.01R2","2018-09-05");
INSERT INTO surat_keputusan VALUES("2","055/SK/DEK/FTI/UNAKI/II/2019","04-02-02/E.01R2","2019-02-22");
INSERT INTO surat_keputusan VALUES("4","103/SK/DEK/FTI/UNAKI/VIII/2019","04-02-02/E.01R2","2019-08-22");



DROP TABLE tblkp;

CREATE TABLE `tblkp` (
  `NIM` varchar(12) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `judul` varchar(250) NOT NULL,
  `pembimbing_1` varchar(50) NOT NULL,
  `program_studi` varchar(30) NOT NULL,
  `tahun_ajaran` varchar(16) NOT NULL,
  `semester` enum('ganjil','genap') NOT NULL,
  PRIMARY KEY (`NIM`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO tblkp VALUES("222110005","Rico Santosa","Perancangan Sistem Informasi Penjualan Mobil Bekas Berbasis Web pada Showroom Santoso Motor","Yohana Tri Widayati, S.E., M.Kom.","Sistem Informasi - S1","2014/2015","ganjil");
INSERT INTO tblkp VALUES("222110012","Zacharia Christyansen","Sistem Informasi Penjualan Pada CV. Kurnia Jaya Berbasis Visual Basic","Suwarno, S.Si., M.Kom.","Sistem Informasi - S1","2017/2018","ganjil");
INSERT INTO tblkp VALUES("222110023","Johan Putra Perdana","Sistem Informasi Penjualan Smartphone Pada Super Cellular","Suprapto, S.E., M.Kom.","Sistem Informasi - S1","2014/2015","genap");
INSERT INTO tblkp VALUES("222120001","Oky Jayadi","Sistem Informasi Penjualan Kaos Distro Dominic DMC Semarang","Yohana Tri Widayati, S.E., M.Kom.","Sistem Informasi - S1","2015/2016","ganjil");
INSERT INTO tblkp VALUES("222120006","Topan Sahara Putra","Perancangan Sistem Informasi Pengelolaan Skripsi dan Kerja Praktek di Universitas AKI Berbasis Web Studi Kasus Pada Fakultas Ilmu Komputer","Satrio Agung Prakoso, S.T.","Sistem Informasi - S1","2015/2016","genap");
INSERT INTO tblkp VALUES("222120007","Agnesia Andriyani","Perancangan Sistem Informasi Sales Order Berbasis Web","Yohana Tri Widayati, S.E., M.Kom.","Sistem Informasi - S1","2014/2015","genap");
INSERT INTO tblkp VALUES("222120010","Cindy Mananti","Perancangan Sistem Informasi Sekolah Berbasis Web Di SMP Maria Goretti Semarang","Yohana Tri Widayati, S.E., M.Kom.","Sistem Informasi - S1","2015/2016","ganjil");
INSERT INTO tblkp VALUES("222120011","Andra Raines Sagita","Sistem Informasi Analisis Dan Sistem Penggajian Karyawan CV. Centra Media Utama Semarang Menggunakan Netbeans","Suprapto, S.E., M.Kom.","Sistem Informasi - S1","2015/2016","ganjil");
INSERT INTO tblkp VALUES("222120014","Ajeng Tria Amanda Putri","Analisa Dan Perancangan Sistem Informasi Penggajian Terhadap Instansi Pemerintah DPPAD Provinsi Jawa Tengah","Ana Wahyuni, S.Si., M.Kom.","Sistem Informasi - S1","2015/2016","ganjil");
INSERT INTO tblkp VALUES("222120020","Timious Kardia Yosel Suwarno","Perancangan Sistem Informasi Game Edukasi Berhitung Berbasis Android Untuk Sekolah Dasar Pada Perusahaan Kanaan Mobile","Ana Wahyuni, S.Si., M.Kom.","Sistem Informasi - S1","2015/2016","ganjil");
INSERT INTO tblkp VALUES("222120022","Kristiani","Perancangan Aplikasi Penggajian Guru dan Staf Berbasis Komputerisasi Pada SMP Maria Goretti Semarang","Suprapto, S.E., M.Kom.","Sistem Informasi - S1","2015/2016","ganjil");
INSERT INTO tblkp VALUES("222120026","David Decvrianus","Perancangan Sistem Informasi Pengolahan Data Penerimaan Siswa Baru di SMP Hasanuddin 2 Semarang ","Yusup, S.Si., M.Kom","Sistem Informasi - S1","2015/2016","ganjil");
INSERT INTO tblkp VALUES("222120029","Stevanus Andinata Ginting","Perancangan Sistem Informasi  Promosi Berbasis Web Pada Perusahaan PT. Triangel Motorindo","Alexander Dharmawan, S.T., M.Kom.","Sistem Informasi - S1","2015/2016","ganjil");
INSERT INTO tblkp VALUES("222120032","Indra Sugara","Perancangan Aplikasi U - Note Pada Universitas AKI Semarang Berbasis Android","Yohana Tri Widayati, S.E., M.Kom.","Sistem Informasi - S1","2015/2016","ganjil");
INSERT INTO tblkp VALUES("222120033","Yesaya Primadianto Sutrisno","Perancangan Sistem Informasi Penjualan dan Pemesanan Alat Musik Di Toko Surya Putra Music Semarang","Suprapto, S.E., M.Kom.","Sistem Informasi - S1","2017/2018","ganjil");
INSERT INTO tblkp VALUES("222120035","Hendra Stefanus","Perancangan Aplikasi Administrasi Pada Asrama Unaki Semarang Berbasis Visual Basic","Alexander Dharmawan, S.T., M.Kom.","Sistem Informasi - S1","2014/2015","ganjil");
INSERT INTO tblkp VALUES("222120036","Otniel Chandra Bale","Perancangan Sistem Informasi Perpustakaan Pada SMPN 40 Semarang","Dra. Tri Karyanti, M.Hum.","Sistem Informasi - S1","2015/2016","ganjil");
INSERT INTO tblkp VALUES("222130002","Christian Davidson Runaweri","Sistem Informasi Penjualan Alat Musik Di Surya Putra Music Semarang","Dra. Tri Karyanti, M.Hum.","Sistem Informasi - S1","2016/2017","ganjil");
INSERT INTO tblkp VALUES("222130008","Yosua Christian","Sistem Informasi Penjualan Obat Pada Apotek Griya Husada Semarang Utara Berbasis Multiuser","Suprapto, S.E., M.Kom.","Sistem Informasi - S1","2015/2016","genap");
INSERT INTO tblkp VALUES("222140001","Angga Pratama","Sistem Informasi Penjualan Obat Pada Apotek Triwira Semarang Berbasis Multiuser","Suprapto, S.E., M.Kom.","Sistem Informasi - S1","2016/2017","genap");
INSERT INTO tblkp VALUES("222140002","Rezha Aditya Gunawan","Analisa Kebutuhan dan Estimasi Biaya Konsumen IT Talk Semarang Berbasis Web","Yusup, S.Si., M.Kom","Sistem Informasi - S1","2017/2018","ganjil");
INSERT INTO tblkp VALUES("222140003","Ivan Rowandi Budiman","Company Profile Pada CV. Maju Jaya Berbasis Web","Suprapto, S.E., M.Kom.","Sistem Informasi - S1","2017/2018","ganjil");
INSERT INTO tblkp VALUES("222140007","Eliazer Paul Samuel Sitohang","Sistem Informasi Pengolahan Data Nilai Siswa Pada SMP Masehi 1 PSAK Semarang","Dra. Tri Karyanti, M.Hum.","Sistem Informasi - S1","2017/2018","ganjil");
INSERT INTO tblkp VALUES("222140008","Yan Fredrik Tarigan ","Perancangan Sistem Informasi Perpustakaan Pada SMP Masehi 1 PSAK Semarang Berbasis Multiuser","Suprapto, S.SE., M.Kom.","Sistem Informasi - S1","2017/2018","ganjil");
INSERT INTO tblkp VALUES("222150001","Muhammad Sulaiman","Perancangan Sistem Informasi Sekolah Secara Online Pada SD Al-Irsyad Islamiyah","Suwarno, S.Si., M.Kom.","Sistem Informasi - S1","2018/2019","ganjil");
INSERT INTO tblkp VALUES("222150003","Apfia Pransiski","Perancangan Sistem Informasi Perpustakaan di SD Negeri Kuningan 04 Semarang","Dra. Tri Karyanti, M.Hum.","Sistem Informasi - S1","2018/2019","ganjil");
INSERT INTO tblkp VALUES("222150004","Feibe Veronika Sipota","Perancangan Sistem Informasi Penjualan Online","Suprapto, S.E., M.Kom.","Sistem Informasi - S1","2018/2019","ganjil");
INSERT INTO tblkp VALUES("222150005","Oei, Vertasia Nugraheni","Perancangan Aplikasi Sistem Informasi Penjualan Barang Karyawan Di Amor Semarang","Ana Wahyuni, S.Si., M.Kom.","Sistem Informasi - S1","2017/2018","ganjil");
INSERT INTO tblkp VALUES("222150007","Hold Deo Charunia","Perancangan Sistem Informasi Inventaris Pada Hotel Mess In Semarang","Yusup, S.Si., M.Kom","Sistem Informasi - S1","2018/2019","ganjil");
INSERT INTO tblkp VALUES("222150008","Rimba Agustina","Analisa Sistem Penyewaan Kamar Hotel (Room Accomodation) Pada Hotel Mess In Semarang","Ana Wahyuni, S.Si., M.Kom.","Sistem Informasi - S1","2018/2019","ganjil");
INSERT INTO tblkp VALUES("222150009","Malfin Maniani","Analisis Sistem Informasi Perpustakaan di SD Petra School","Dra. Tri Karyanti, M.Hum.","Sistem Informasi - S1","2018/2019","ganjil");
INSERT INTO tblkp VALUES("222150010","Aliong Saputra","Perancangan Sistem Informasi Penjualan Barang Pada Toko Jam Tangan Panen Watch","Suprapto, S.E., M.Kom.","Sistem Informasi - S1","2018/2019","ganjil");
INSERT INTO tblkp VALUES("222160009","Adi Sulistia","Sistem Informasi Pengolahan Data Stok Kayu PT. Kayu Lapis Indonesia","Suprapto, S.E., M.Kom.","Sistem Informasi - S1","2016/2017","ganjil");
INSERT INTO tblkp VALUES("223110072","Aris Syaifudin","Membangun Toko Online (Online Shop) Produk Baja Ringan CV. Karya Usaha Mandiri Semarang","Satrio Agung Prakoso, S.T.","Teknik Informatika - S1","2017/2018","genap");
INSERT INTO tblkp VALUES("223120013","Merlipson Tarinate","Sistem Informasi Absensi Pegawai PT. Asuransi Jiwasraya (PERSERO), Semarang Barat Berbasis WEB","Suwarno, S.Si., M.Kom.","Teknik Informatika - S1","2017/2018","genap");
INSERT INTO tblkp VALUES("223130001","Willy Andrianto Halim","Pembuatan Website Rental Mobil Menggunakan Macromedia Dreamweaver dan PHP MySQL","Sinta Tridian Galih, S.T., M.Kom.","Teknik Informatika - S1","2015/2016","genap");
INSERT INTO tblkp VALUES("223130002","Michelle Margaretha Singgih","Perancangan Website Sebagai Sarana Promosi dan Jasa Angkutan pada CV. Tarent Utama","Yusup, S.Si., M.Kom.","Teknik Informatika - S1","2015/2016","genap");
INSERT INTO tblkp VALUES("223130003","Jeri Warisman","Perancangan Jasa Delivery Pemesanan Makanan Berbasis Mobile Study Kasus di Swike Asli Purwaodadi Semarang","Satrio Agung Prakoso, S.T.","Teknik Informatika - S1","2017/2018","ganjil");
INSERT INTO tblkp VALUES("223130004","Alfatkhah Mu\'arifah","Perancangan Sistem Informasi Penjualan Pada Distro Oldman Store Berbasis Web","Yani Prihati, S.Si., M.Kom.","Teknik Informatika - S1","2015/2016","genap");
INSERT INTO tblkp VALUES("223130005","Charolina Br. Sinukaban","Perancangan Sistem Informasi Perpustakaan SMKN 4 Semarang Berbasis Multiuser","Yohana Tri Widayati, S.E., M.Kom.","Teknik Informatika - S1","2015/2016","genap");
INSERT INTO tblkp VALUES("223130007","Desta Masitoch","Sistem Registrasi Undangan Pernikahan Dengan Teknologi Barcode","Yani Prihati, S.Si., M.Kom.","Teknik Informatika - S1","2016/2017","genap");
INSERT INTO tblkp VALUES("223130008","Esda Hosea Rido Harianto","\"Billboard TV Online Berbasis Web\" sebagai Media Informasi pada Lemabaga Pendidikan Kota Semarang","Satrio Agung Prakoso, S.T.","Teknik Informatika - S1","2015/2016","genap");
INSERT INTO tblkp VALUES("223130009","Sadi Wantoro Pane","Perancangan Pembuatan Aplikasi Pemesanan Tiket Travel Berbasis Android di Joglo Semar","Suwarno, S.Si., M.Kom.","Teknik Informatika - S1","2016/2017","ganjil");
INSERT INTO tblkp VALUES("223130010","Priskila Eka Kurniawati","Perancangan Aplikasi Penghubung Orangtua atau Wali Mahasiswa ke Lembaga Pendidikan di Universitas AKI Berbasis Android","Alexander Dharmawan, S.T., M.Kom.","Teknik Informatika - S1","2015/2016","genap");
INSERT INTO tblkp VALUES("223130011","Yan Mansavi Maniani","Perancangan Bangun Pembelajaran Bahasa Mandarin Untuk Anak-Anak Kelas V - VI Pada SD Petra School","Yani Prihati, S.Si., M.Kom.","Teknik Informatika - S1","2016/2017","ganjil");
INSERT INTO tblkp VALUES("223130012","Jonius Daniel","Rancang Bangun Game Edukasi Untuk Pengajaran Berhitung Pada Anak-Anak Kelas I di SD Terang Bagi Bangsa","Ana Wahyuni, S.Si., M.Kom.","Teknik Informatika - S1","2016/2017","ganjil");
INSERT INTO tblkp VALUES("223130014","Surya Jaya Putra","Perancancangan Media Pembelajaran Matematika Kelas 3 Pada SD Terang Bangsa Berbasis Adobe Flash","Sinta Tridian Galih, S.T., M.Kom.","Teknik Informatika - S1","2016/2017","ganjil");
INSERT INTO tblkp VALUES("223130015","Wisnu Prabowo","Perancangan Media Pembelajaran Bahasa Jawa Kelas 1 SD Terang Bagi Bangsa dengan Adobe Flash","Dra. Tri Karyanti, M.Hum.","Teknik Informatika - S1","2015/2016","genap");
INSERT INTO tblkp VALUES("223130016","Natan Oktavian Iwan P","Billboard TV Online Berbasis Web Sebagai Media Info dan Promosi Pada Lembaga Pendidikan Kota Semarang","Satrio Agung Prakoso, S.T.","Teknik Informatika - S1","2016/2017","ganjil");
INSERT INTO tblkp VALUES("223130019","Frantonian Ahitofel","Perancangan Web Promosi Pada SD Kristen Terang Bagi Bangsa Pati ","Jutono Gondohanindijo, M.Kom.","Teknik Informatika - S1","2015/2016","genap");
INSERT INTO tblkp VALUES("223130050","Haris Sastro Barneo","Perancangan Sistem Informasi Penjualan Semesta Raya Motor","Suwarno, S.Si., M.Kom.","Teknik Informatika - S1","2015/2016","genap");
INSERT INTO tblkp VALUES("223140001","Tan Akira Richardo Darmawan","Perancangan Web Sebagai Media Komunikasi Tugas dan Informasi Pada Siswa TK","Jutono Gondohanindijo, M.Kom.","Teknik Informatika - S1","2017/2018","genap");
INSERT INTO tblkp VALUES("223140002","Samuel Dwi Prasetyo S","Perancangan Aplikasi Transaksi Pada Robotic Education Semarang ","Yani Prihati, S.Si., M.Kom.","Teknik Informatika - S1","2017/2018","ganjil");
INSERT INTO tblkp VALUES("223140003","Ezra Yoga Irawan","Perancangan Sistem Pemesanan Jasa Berbasis Web di CV. Dwitra Yaka Group","Alexander Dharmawan, S.T., M.Kom.","Teknik Informatika - S1","2017/2018","ganjil");
INSERT INTO tblkp VALUES("223140004","Jannatun Naim","Perancangan Sistem Informasi Pengolahan Data Pembayaran Sumbangan Pembinaan Pendidikan (SPP) Pada SMK PGRI 1 Mejobo Kudus","Sinta Tridian Galih, S.T., M.Kom.","Teknik Informatika - S1","2016/2017","genap");
INSERT INTO tblkp VALUES("223140005","Linda Purwasih","Sistem Pengambilan Keputusan Penilaian Kinerja Karyawan Fuzzy Logic Pada SMK PGRI 1 Mejobo Kudus Berbasis Web","Suwarno, S.Si., M.Kom.","Teknik Informatika - S1","2016/2017","genap");
INSERT INTO tblkp VALUES("223140006","Eko Amirul Sofik","Pemeliharaan Jaringan Komputer Pada SMK PGRI 1 Mejobo Kudus","Satrio Agung Prakoso, S.T.","Teknik Informatika - S1","2016/2017","genap");
INSERT INTO tblkp VALUES("223140007","Zulia Puji Lestari","Perancangan Aplikasi Penyewaan Lapangan United Futsal Kudus","Yusup, S.Si., M.Kom.","Teknik Informatika - S1","2016/2017","genap");
INSERT INTO tblkp VALUES("223140008","Nurchamim","Perancangan Aplikasi Helpdesk Berbasis Web di CV. Dwitra Yaka Group Semarang","Yusup, S.Si., M.Kom.","Teknik Informatika - S1","2017/2018","ganjil");
INSERT INTO tblkp VALUES("223140009","Eli Tias Tutuik","Comporation Algoritma C4.5 Dan Naive Bayes Untuk Klasifikasi Kelulusan Mahasiswa Tepat Waktu di Universitas AKI Semarang","Satrio Agung Prakoso, S.T.","Teknik Informatika - S1","2016/2017","ganjil");
INSERT INTO tblkp VALUES("223140010","Eka Nur Siswanti","Perancangan Sistem Pendukung Keputusan Kelayakan Pendonoh Darah di UTD PMI Kota Semarang","Ana Wahyuni, S.Si., M.Kom.","Teknik Informatika - S1","2017/2018","ganjil");
INSERT INTO tblkp VALUES("223140013","Stephani Sari Tanaka","Perancangan Aplikasi Pemantauan Inventori Pada Robotic Education Semarang","Sinta Tridian Galih, S.T., M.Kom.","Teknik Informatika - S1","2017/2018","ganjil");
INSERT INTO tblkp VALUES("223140016","Andreas Adinata","Perancangan Aplikasi Media Pembelajaran Penggolongan Binatang Menggunakan Adobe Flash CS 6 Pada Sekolah Dasar Terang Bagi Bangsa","Yani Prihati, S.Si., M.Kom.","Teknik Informatika - S1","2017/2018","ganjil");
INSERT INTO tblkp VALUES("223140017","Ferra Oky Netasa","Sistem Pendataan dan Pembaptisan Anggota GITS Puring Berbasis Web","Suwarno, S.Si., M.Kom.","Teknik Informatika - S1","Gasal 2017/2018","ganjil");
INSERT INTO tblkp VALUES("223140019","Rocky Marciano Hendico Sianturi","Media Informasi Digital Menggunakan Adobe Director 11.5 di Universitas AKI","Satrio Agung Prakoso, S.T.","Teknik Informatika - S1","2017/2018","ganjil");
INSERT INTO tblkp VALUES("223140020","Ardwi Jaya Nowama","Informasi Pengurusan Peijinan Trayek dan Rute Angkutan Umum Berbasi Mobile di Kabupaten Demak","Satrio Agung Prakoso, S.T.","Teknik Informatika - S1","2017/2018","ganjil");
INSERT INTO tblkp VALUES("223150001","Daniel Kurniawan","Perancangan Aplikasi Penjualan Meubel Berbasis Web Pada PT Alam Kayu Sakti Semarang","Alexander Dharmawan, S.T., M.Kom.","Teknik Informatika - S1","2017/2018","genap");
INSERT INTO tblkp VALUES("223150002","Ken Julio A","Perancangan Aplikasi Penjualan Mebel Berbasis Web Pada PT. LIGNA FURNITURE","Alexander Dharmawan, S.T., M.Kom.","Teknik Informatika - S1","2018/2019","ganjil");
INSERT INTO tblkp VALUES("223150003","Imam Lilik Setiaji","Perancangan Sistem E-Learning Berbasis Web Pada SMK Bina Nusantara Semarang","Sinta Tridian Galih, S.T., M.Kom.","Teknik Informatika - S1","2017/2018","genap");
INSERT INTO tblkp VALUES("223150004","Rendis Arfendo","Perancangan Aplikasi Sistem Informasi Monitoring Siswa Berbasis Web Server Dan Android Client (Studi Kasus : SMK Yayasan Pharmasi Semarang)","Yusup, S.Si., M.Kom.","Teknik Informatika - S1","2018/2019","ganjil");
INSERT INTO tblkp VALUES("223150005","Agastya Pradhama W","Perancangan Sistem Pengolahan Data Surat Masuk dan Keluar Pada PT. Alfa Komputer Semarang","Jutono Gondohanindijo, M.Kom.","Teknik Informatika - S1","2017/2018","ganjil");
INSERT INTO tblkp VALUES("223150006","Safki Nurul Huda","Perancangan Sistem Penggajian Karyawan Toko PIH FF JAYA Berbasis Visual Basic","Sinta Tridian Galih, S.T., M.Kom.","Teknik Informatika - S1","2018/2019","ganjil");
INSERT INTO tblkp VALUES("223150007","Akhmad Nashfan Sa\'bani","Perancangan Sistem Informasi Pengolahan Data Nilai Siswa Pada SMK Pelita Nusantara 2 Semarang","Yohana Tri Widayati, S.E., M.Kom.","Teknik Informatika - S1","2017/2018","genap");
INSERT INTO tblkp VALUES("223150008","Michael Soni Susanto","Perancangan Sistem Rekrutmen Berbasis Web Pada PT. Karya Zirang Semarang","Satrio Agung Prakoso, S.T.","Teknik Informatika - S1","2017/2018","genap");
INSERT INTO tblkp VALUES("223150009","Angeline Renita Notobudojo","Perancangan Aplikasi Logistik Pada PT Alam Kayu Sakti Semarang Menggunakan Visual Basic 6.0","Yusup, S.Si., M.Kom.","Teknik Informatika - S1","2017/2018","genap");
INSERT INTO tblkp VALUES("223150010","Sofwatul Choiriyah","Perancangan Sistem Absensi Guru Berbasis Web Menggunakan Bahasa PHP dan Database MySQL Pada SMK Pelita Nusantara 2 Semarang","Satrio Agung Prakoso, S.T.","Teknik Informatika - S1","2017/2018","genap");
INSERT INTO tblkp VALUES("223150011","Roy Lando Batuara","Perancangan Sistem Informasi Penjualan Jam Tangan  Berbasis Web Pada Toko Panen Watch","Jutono Gondohanindijo, M.Kom.","Teknik Informatika - S1","2018/2019","ganjil");
INSERT INTO tblkp VALUES("223150013","Rizka Miladyna Yunash","Perancangan Website Akademik Berbasis Web Dinamis Menggunakan Framework Bootstrap Pada SMA Negeri 1 Kota Mungkid","Satrio Agung Prakoso, S.T.","Teknik Informatika - S1","2018/2019","ganjil");
INSERT INTO tblkp VALUES("223150014","Stefanus Jordan","Perancangan Aplikasi Penggajian karyawan Pada PT. Mayora Indah TBK Dengan Menggunakan Visual Basic 6.0","Jutono Gondohanindijo, M.Kom.","Teknik Informatika - S1","2017/2018","genap");
INSERT INTO tblkp VALUES("223150017","Ade Kristianto","Perancangan Aplikasi Customer Relationship Management (CRM) Berbasis Mobile Dengan Framework Flutter Di Yayasan Anugrah Pressindo Indonesia (Anugrah Ministries)","Satrio Agung Prakoso, S.T.","Teknik Informatika - S1","2018/2019","ganjil");
INSERT INTO tblkp VALUES("223150018","Daniel Bezaliel Aholiad Welang","Aplikasi Dekstop Dokumentasi Arsip Menggunakan Bahasa Pemrograman Java Dan Database Mysql Pada SMP Kristen Gergaji Semarang","Yohana Tri Widayati, S.E., M.Kom.","Teknik Informatika - S1","2018/2019","ganjil");
INSERT INTO tblkp VALUES("223150021","Yupin Enumbi","Sistem Perpustakaan Barbasis Web di PT Perkantas Semarang Selatan","Yani Prihati, S.Si., M.Kom.","Teknik Informatika - S1","2018/2019","ganjil");
INSERT INTO tblkp VALUES("223160008","Ferry Lexander","Aplikasi Pengolahan Data Stok Barang Dengan Java Pada CV. Pelita Mas","Yani Prihati, S.Si., M.Kom.","Teknik Informatika - S1","2018/2019","ganjil");
INSERT INTO tblkp VALUES("223160014","Frida Vivi Rosalina","Perancangan Sistem Informasi Manajemen Pengelolaan Dana Donatur Berbasis Web Pada Lembaga Kesejahteraab Sosial Anak Putera Betlehem Semarang","Sinta Tridian Galih, S.T., M.Kom.","Teknik Informatika - S1","2017/2018","ganjil");
INSERT INTO tblkp VALUES("223160027","Natalia Kurnia Hapsari","Perancangan Sistem Informasi Absensi Manggunakan PHP di PT. British Gardens Semarang","Jutono Gondohanindijo, M.Kom.","Teknik Informatika - S1","2018/2019","ganjil");
INSERT INTO tblkp VALUES("223160028","Rico Sugiarto D","Sistem Informasi Inventory Stok Barang Berbasis WEB pada CV. Kartika Sari","Alexander Dharmawan, S.T. M.Kom.","Teknik Informatika - S1","2018/2019","ganjil");
INSERT INTO tblkp VALUES("223170006","Adhi Mulyanto Kawengian","Aplikasi Desktop Inventory Dengan Java pada CV. Cempaka Semarang","Sinta Tridian Galih, S.T., M.Kom.","Teknik Informatika - S1","2018/2019","ganjil");
INSERT INTO tblkp VALUES("223990162","Indriawan Prastomo","Analisis Desain Sistem Pakar Konsultasi Pembuatan Surat Ijin Usaha Perdagangan Pada Dinas Penanaman Modal dan Pelayanan Terpadu Satu Pintu","Yani Prihati, S.Si., M.Kom.","Teknik Informatika - S1","2017/2018","genap");



DROP TABLE tblskripsi;

CREATE TABLE `tblskripsi` (
  `NIM` varchar(9) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `judul` varchar(500) NOT NULL,
  `pembimbing_1` varchar(100) NOT NULL,
  `pembimbing_2` varchar(100) NOT NULL,
  `program_studi` varchar(30) NOT NULL,
  `angkatan_wisuda` varchar(20) NOT NULL,
  PRIMARY KEY (`NIM`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO tblskripsi VALUES("222110005","Rico Santoso","Sistem Informasi Promosi dan Pemasaran Mobil Bekas Pada Showroom Santosa Motor Berbasis Web","Alexander Dharmawan, S.T., M.Kom.","Dra. Tri Karyanti, M.Hum.","Sistem Informasi - S1","Angkatan 36");
INSERT INTO tblskripsi VALUES("222110023","Johan Putra Perdana","Sistem Informasi Pembelian dan Penjualan Handphone Pada Gallery Sell","Yohana Tri Widayati, S.E., M.Kom.","Ana Wahyuni, S.Si., M.Kom.","Sistem Informasi - S1","Angkatan 36");
INSERT INTO tblskripsi VALUES("222120001","Oky Jayadi","Penjualan Online Pada Shine Like Stars Semarang Berbasis Web","Alexander Dharmawan, S.T., M.Kom.","Suprapto, S.E., M.Kom.","Sistem Informasi - S1","Angkatan 36");
INSERT INTO tblskripsi VALUES("222120006","Topan Sahara Putra","Pembuatan Sistem Informasi Penjualan Komputer Berbasis Web Pada Toko DNA Komputer","Yani Prihati, S.Si., M.Kom.","Dr. Harries Arizonia Ismail, S.E., M.M., M.Kom.","Sistem Informasi - S1","Angkatan 37");
INSERT INTO tblskripsi VALUES("222120007","Agnesia Andriyani","Sistem Informasi Pemesanan Barang Pada PT. Pintu Mas Mulia Kimia Semarang Berbasis Web","Sinta Tridian Galih, S.T., M.Kom.","Dra. Tri Karyanti, M.Hum.","Sistem Informasi - S1","Angkatan 36");
INSERT INTO tblskripsi VALUES("222120010","Cindy Mananti","Sistem Informasi Pengarsipan Surat Berbasis Website Pada SMP Negeri 36 Semarang","Suwarno, S.Si., M.Kom.","Yusup, S.Si., M.Kom.","Sistem Informasi - S1","Angkatan 37");
INSERT INTO tblskripsi VALUES("222120011","Andra Raines Sagita","Sistem Informasi Pesewaan Alat Event Pada CV, Media Centre Utama Berbasis Web","Yusup, S.Si., M.Kom.","Ana Wahyuni, S.Si., M.Kom.","Sistem Informasi - S1","Angkatan 37");
INSERT INTO tblskripsi VALUES("222120014","Ajeng Tria Amanda","Sistem Informasi Penggajian Pada Dinas Pendapatan Aset Daerah (DPPAD) Provinsi Jawa Tengah Menggunakan Visual Basic 6.0","Yohana Tri Widayati, S.E., M.Kom.","Dr. Harries Arizonia Ismail, S.E., M.M., M.Kom.","Sistem Informasi - S1","Angkatan 37");
INSERT INTO tblskripsi VALUES("222120020","Timious Kardia Yosel Suwarno","Sistem Informasi Penjualan Barang Pada Apotek Griya Husada Semarang","Ana Wahyuni, S.Si., M.Kom.","Suprapto, S.E., M.Kom.","Sistem Informasi - S1","Angkatan 37");
INSERT INTO tblskripsi VALUES("222120024","Megasari Alaasta","Sistem Informasi Hotel Sleep And Sleep Semarang Berbasis Web","Suwarno, S.Si., M.Kom.","Ana Wahyuni, S.Si., M.Kom.","Sistem Informasi - S1","Angkatan 40");
INSERT INTO tblskripsi VALUES("222120026","David Decvrianus","Sistem Informasi Pengolahan Penerimaan Siswa Baru di SMP Hasanuddin 2 Semarang Berbasis Web","Yohana Tri Widayati, S.E., M.Kom.","Suwarno, S.Si., M.Kom.","Sistem Informasi - S1","Angkatan 37");
INSERT INTO tblskripsi VALUES("222120029","Stevanus Andinata Ginting","Sistem Informasi Pendapatan Member dan Program Fitness Pada Rajawali Barbel Club Semarang Berbasis Web","Yani Prihati, S.Si., M.Kom.","Dra. Tri Karyanti, M.Hum.","Sistem Informasi - S1","Angkatan 37");
INSERT INTO tblskripsi VALUES("222120036","Otniel Chandra Bale","Pengenalan Golongan Hewan Berdasarkan Jenis Makanan Menggunakan Macromedia Flash Pada Murid Kelas 4 di Sekolah Dasar Daniel Creative School Semarang","Yohana Tri Widayati, S.E., M.Kom.","Dra. Tri Karyanti, M.Hum.","Sistem Informasi - S1","Angkatan 37");
INSERT INTO tblskripsi VALUES("222120042","Johan Amriyahya","Pembuatan Aplikasi Pemesanan Tiket Travel Berbasis Android Pada Travel Citra","Yohana Tri Widayati, S.E., M.Kom.","Sinta Tridian Galih, S.T., M.Kom.","Sistem Informasi - S1","Angkatan 38");
INSERT INTO tblskripsi VALUES("222130008","Yosua Christian","Sistem Informasi Penjualan Obat Pada Apotek Griya Husada Semarang","Yohana Tri Widayati, S.E., M.Kom.","Sinta Tridian Galih, S.T., M.Kom.","Sistem Informasi - S1","Angkatan 38");
INSERT INTO tblskripsi VALUES("222140001","Angga Pratama","Analisis dan Komparasi Algoritma  Naive Bayes Dan C4.5 Untuk Klasifikasi Loyalitas Pelanggan MNC Play Kota Semarang","Yohana Tri Widayati, S.E., M.Kom.","Sinta Tridian Galih, S.T., M.Kom.","Sistem Informasi - S1","Angkatan 39");
INSERT INTO tblskripsi VALUES("222140007","Eliazer Paul Samuel Sitohang","Sistem Informasi Akademik Nilai di SMP Masehi 1 PSAK Semarang Berbasis Web","Yohana Tri Widayati, S.E., M.Kom.","Sinta Tridian Galih, S.T., M.Kom.","Sistem Informasi - S1","Angkatan 40");
INSERT INTO tblskripsi VALUES("223110018","Novisto Pratama Putra","Pembuatan Website Interaktif Untuk Gereja Pimpinan Roh Kudus (GPR) Mojokerto","Sinta Tridian Galih, S.T., M.Kom.","Dra. Tri Karyanti, M.Hum.","Teknik Informatika - S1","Angkatan 38");
INSERT INTO tblskripsi VALUES("223110022","Tiara Kartikasari","Pembuatan Sistem Informasi Pengelolaan Data PKK (Pemberdayaan dan Kesejahteraan Keluarga) di Kecamatan Gunung Pati Kota Semarang","Yusup, S.Si., M.Kom.","Satrio Agung Prakoso, S.T.","Teknik Informatika - S1","Angkatan 39");
INSERT INTO tblskripsi VALUES("223110047","Michael Ahadi Husodo Lenggono","Implementasi Algoritma Koloni Semut Untuk Penyelesaian Kasus Pencarian Jalan Yang Tepat Pada Game Labirin","Yani Prihati, S.Si., M.Kom.","Yusup, S.Si., M.Kom.","Teknik Informatika - S1","Angkatan 40");
INSERT INTO tblskripsi VALUES("223110090","Tri Wahyuni","Aplikasi Web Untuk Penilaian Tugas Siswa Pada SMK 17 Agustus 1945 Semarang","Yohana Tri Widayati, S.E., M.Kom.","Satrio Agung Prakoso, S.T.","Teknik Informatika - S1","Angkatan 38");
INSERT INTO tblskripsi VALUES("223120002","Yonathan Aditya Purnama","Pembuatan Aplikasi Animasi Media Pembelajaran Cerita Daniel di Petra Kids Semarang","Yani Prihati, S.Si., M.Kom.","Ana Wahyuni, S.Si., M.Kom.","Teknik Informatika - S1","Angkatan 37");
INSERT INTO tblskripsi VALUES("223120014","Temasetia Zebua","Media Pembelajaran IPA untuk Sekolah Dasar Negeri 01 Lerep Ungaran Barat Kelas VI Menggunakan Adobe Flash CS3","Yani Prihati, S.Si., M.Kom.","Dr. Harries Arizonia Ismail, S.E., M.M., M.Kom.","Teknik Informatika - S1","Angkatan 36");
INSERT INTO tblskripsi VALUES("223120031","Ruth Nesya Adelweis Sumule","Alat Bantu Pembelajaran Anak Retardasi Mental Berbasis Android","Yusup, S.Si., M.Kom.","Dr. Harries Arizonia Ismail, S.E., M.M., M.Kom.","Teknik Informatika - S1","Angkatan 37");
INSERT INTO tblskripsi VALUES("223120034","Kaspa Yobel Batubara","Aplikasi Kamus Kebidanan Berbasis Android Akademi Kebidanan Soko Tunggal","Yani Prihati, S.Si., M.Kom.","Dr. Harries Arizonia Ismail, S.E., M.M., M.Kom.","Teknik Informatika - S1","Angkatan 37");
INSERT INTO tblskripsi VALUES("223120046","Devi Kurnia","Identifikasi Alumni Universitas AKI dengan Kartu Alumni Menggunakan QR Code","Sinta Tridian Galih, S.T., M.Kom.","Satrio Agung Prakoso, S.T.","Teknik Informatika - S1","Angkatan 37");
INSERT INTO tblskripsi VALUES("223120048","Ameng Selvanus","Aplikasi Pemesanan Tiket Travel Online Pada Raja Tiket Travel","Alexander Dharmawan, S.T., M.Kom.","Yusup, S.Si., M.Kom.","Teknik Informatika - S1","Angkatan 37");
INSERT INTO tblskripsi VALUES("223120053","Imam Mardani","Aplikasi Penjualan Berbasis Web Pada Toko Bangunan Purnama Semarang Menggunakan PHP","Yohana Tri Widayati, S.E., M.Kom.","Satrio Agung Prakoso, S.T.","Teknik Informatika - S1","Angkatan 37");
INSERT INTO tblskripsi VALUES("223130003","Jeri Warisman","Pemesanan Makanan Jasa Delivery Berbasis Mobile Di Lombok Idjo Semarang","Dra. Tri Karyanti, M.Hum.","Satrio Agung Prakoso, S.T.","Teknik Informatika - S1","Angkatan 39");
INSERT INTO tblskripsi VALUES("223130005","Charolina Br. Sinukaban","Aplikasi Media Rental Mobil Berbasis Android Pada Raja Tiket Semarang","Alexander Dharmawan, S.T., M.Kom.","Ana Wahyuni, S.Si., M.Kom.","Teknik Informatika - S1","Angkatan 37");
INSERT INTO tblskripsi VALUES("223130006","Joko Subandono","Aplikasi Player Music Di Studio Radio Kumbaya FM Menggunakan Visual Basic 2010","Yani Prihati, S.Si., M.Kom.","Sinta Tridian Galih, S.T., M.Kom.","Teknik Informatika - S1","Angkatan 37");
INSERT INTO tblskripsi VALUES("223130008","Esda Hosea Rido Harinanto","Aplikasi Perizinan Online Bidang Pembinaan Pendidikan Anak Usia Dini dan Pendidikan Non Formal Pada Dinas Pendidikan Kota Semarang","Suwarno, S.Si., M.Kom.","Satrio Agung Prakoso, S.T.","Teknik Informatika - S1","Angkatan 38");
INSERT INTO tblskripsi VALUES("223130010","Priskila Eka Kurniawati","Sistem Digitalisasi Arsip Berbasis Web (Studi Kasus Universitas AKI)","Alexander Dharmawan, S.T., M.Kom.","Yusup, S.Si., M.Kom.","Teknik Informatika - S1","Angkatan 38");
INSERT INTO tblskripsi VALUES("223130011","Yan Masafi Maniani","Aplikasi Distribusi Barang Berbasis Web Pada CV. Restu Perkasa Kabupaten Kudus","Yohana Tri Widayati, S.E., M.Kom.","Satrio Agung Prakoso, S.T.","Teknik Informatika - S1","Angkatan 39");
INSERT INTO tblskripsi VALUES("223130012","Jonius Daniel","Aplikasi Multimedia Kumpulan Budaya dan Cerita Daerah Di Indonesia","Yohana Tri Widayati, S.E., M.Kom.","Yusup, S.Si., M.Kom.","Teknik Informatika - S1","Angkatan 38");
INSERT INTO tblskripsi VALUES("223130014","Surya Jaya Putra","Media Pembelajaran Matematika Kelas 3 Pada SD Terang Bangsa Pati Berbasis Multimedia","Alexander Dharmawan, S.T., M.Kom.","Ana Wahyuni, S.Si., M.Kom.","Teknik Informatika - S1","Angkatan 38");
INSERT INTO tblskripsi VALUES("223130015","Wisnu Prabowo","Media Pembelajarab Bahasa Jawa Kelas 3 SD Terang Bagi Bangsa Dengan Adobe Flash","Yani Prihati, S.Si., M.Kom.","Dr. Harries Arizonia Ismail, S.E., M.M., M.Kom.","Teknik Informatika - S1","Angkatan 38");
INSERT INTO tblskripsi VALUES("223130016","Natan Oktavian Iwan Putra","Aplikasi Sistem Informasi Pengolahan Data di Asrama The Great Commision Semarang Berbasis Web","Alexander Dharmawan, S.T., M.Kom.","Jutono Gondohanindijo, M.Kom.","Teknik Informatika - S1","Angkatan 38");
INSERT INTO tblskripsi VALUES("223130019","Franstorian Ahitofel","Aplikasi WEB Promosi Pada SD Kristen Terang Bagi Bangsa Pati","Suwarno, S.Si., M.Kom.","Dra. Tri Karyanti, M.Hum.","Teknik Informatika - S1","Angkatan 38");
INSERT INTO tblskripsi VALUES("223130040","Sofater Yonesky Simamora","Aplikasi Flash Card Kids EE Menggunakan Phonegap Berbasis Multi Platform di GBAP","Sinta Tridian Galih, S.T., M.Kom.","Satrio Agung Prakoso, S.T.","Teknik Informatika - S1","Angkatan 38");
INSERT INTO tblskripsi VALUES("223130050","Haris Sastro Barneo","Aplikasi Pemesanan Makanan Jasa Delivery Berbasis Android Di Idola Food Semarang","Yohana Tri Widayati, S.E., M.Kom.","Jutono Gondohanindijo, M.Kom.","Teknik Informatika - S1","Angkatan 37");
INSERT INTO tblskripsi VALUES("223140","Tan Akira Richardo Darmawan","Pengenalan Tata Surya Planet Dengan Augmented Reality","Yohana Tri Widayati, S.E., M.Kom.","Jutono Gondohanindijo, M.Kom.","Teknik Informatika - S1","Angkatan 41");
INSERT INTO tblskripsi VALUES("223140003","Ezra Yoga Irawan","Aplikasi Sistem Informasi Gereja Berbasis Web","Suwarno, S.Si., M.Kom.","Yusup, S.Si., M.Kom.","Teknik Informatika - S1","Angkatan 40");
INSERT INTO tblskripsi VALUES("223140004","Jannatun Naim","Aplikasi Pembayaran Seumbangan Pembinaan Pendidikan (SPP) Berbasis Web dan SMS Gateway Pada SMK PGRI 1 Mejobo Kudus","Yani Prihati, S.Si., M.Kom.","Yusup, S.Si., M.Kom.","Teknik Informatika - S1","Angkatan 39");
INSERT INTO tblskripsi VALUES("223140005","Linda Purwasih","Sistem Penilaian Kinerja Staf TU dan Penilaian Kinerja Guru Pada SMK PGRI 1 Mejobo Kudus","Yohana Tri Widayati, S.E., M.Kom.","Satrio Agung Prakoso, S.T.","Teknik Informatika - S1","Angkatan 39");
INSERT INTO tblskripsi VALUES("223140006","Eko Amirul Sofik","Implementasi Clonning untuk Instalasi Jaringan PC Pada Universitas AKI Semarang","Suwarno, S.Si., M.Kom.","Sinta Tridian Galih, S.T., M.Kom.","Teknik Informatika - S1","Angkatan 41");
INSERT INTO tblskripsi VALUES("223140007","Zulia Puji Lestari","Penerapan Data Mining dalam Proses Analisis Efisiensi Jasa Service Printer Pada CV. Soerya Com Kudus Berbasis Web","Alexander Dharmawan, S.T., M.Kom.","Sinta Tridian Galih, S.T., M.Kom.","Teknik Informatika - S1","Angkatan 40");
INSERT INTO tblskripsi VALUES("223140008","Nurchamim","Sistem Informasi Pengolahan Data Nilai Siswa Berbasis Web Pada SMK Hidayah Semarang","Alexander Dharmawan, S.T., M.Kom.","Dr. Harries Arizonia Ismail, S.E., M.M., M.Kom.","Teknik Informatika - S1","Angkatan 41");
INSERT INTO tblskripsi VALUES("223140009","Eli Tias Tutik","Analisa Loyalitas Pelanggan CV. Soerya Com Kudus Berbasis Metode Data Mining dengan Algoritma C4.5","Yani Prihati, S.Si., M.Kom.","Dr. Harries Arizonia Ismail, S.E., M.M., M.Kom.","Teknik Informatika - S1","Angkatan 40");
INSERT INTO tblskripsi VALUES("223140010","Eka Nur Siswanti","Implementasi Algoritma C4.5 untuk Evaluasi Kinerja Karyawan Pada CV. Soeya Com","Yani Prihati, S.Si., M.Kom.","Satrio Agung Prakoso, S.T.","Teknik Informatika - S1","Angkatan 40");
INSERT INTO tblskripsi VALUES("223140013","Stephani Sari Tanaka","Aplikasi Pemantauan Inventori Berbasis Android Pada PT. Wahana Cipta Multigraha","Alexander Dharmawan, S.T., M.Kom.","Dra. Tri Karyanti, M.Hum.","Teknik Informatika - S1","Angkatan 40");
INSERT INTO tblskripsi VALUES("223140017","Ferra Oky Netasa","Aplikasi Pendataan Jemaat Pada Gereja Injil di Tanah Jawa (GITJ) Puring Jepara Berbasis Web","Yani Prihati, S.Si., M.Kom.","Yusup, S.Si., M.Kom.","Teknik Informatika - S1","Angkatan 40");
INSERT INTO tblskripsi VALUES("223140019","Rocky Marciano Hendico Sianturi","Aplikasi Mapping Ruang Gedung Kampus Universitas AKI di Jl. Imam Bonjol No. 15-17 Semarang","Alexander Dharmawan, S.T., M.Kom.","Yusup, S.Si., M.Kom.","Teknik Informatika - S1","Angkatan 40");
INSERT INTO tblskripsi VALUES("223140020","Ardwi Jaya Nowama","Klasifikasi Pengujian Kendaraan Bermotor Tipe Angkutan Barang dan Orang di Dinas Perhubungan Kabupaten Demak Menggunakan Algoritma C4.5","Yani Prihati, S.Si., M.Kom.","Ana Wahyuni, S.Si., M.Kom.","Teknik Informatika - S1","Angkatan 40");
INSERT INTO tblskripsi VALUES("223150020","Demas Ardi Wicaksono","Implementasi POM-QM Untuk Optimalisasi Antrian Nasabah (Studi Pada Bank Central Asia KCU Semarang)","Yani Prihati, S.Si., M.Kom.","Jutono Gondohanindijo, M.Kom.","Teknik Informatika - S1","Angkatan 39");
INSERT INTO tblskripsi VALUES("223150072","Aris Syarifudin","Sistem Informasi Pengendalian Persediaan Berbasis Web pada CV. Karya Usaha Mandiri Semarang","Alexander Dharmawan, S.T., M.Kom.","Dr. Harries Arizonia Ismail, S.E., M.M., M.Kom.","Teknik Informatika - S1","Angkatan 40");
INSERT INTO tblskripsi VALUES("223160014","Frida Vivi Rosalina","Penatalayan Gereja Bala Keselamatan Korps 3 Surakarta Berbasis Web Telegram Bot","Suwarno, S.Si., M.Kom.","Satrio Agung Prakoso, S.T.","Teknik Informatika - S1","Angkatan 40");



