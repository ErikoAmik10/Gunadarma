<!DOCTYPE html>
<?php
include 'config/koneksi.php';
include 'config/fungsi_indotgl.php';
?>

<?php $sql =  mysql_query("SELECT * FROM pengumuman"); ?>

<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Bimbingan Skripsi</title>

	<link rel="icon" href="ug3.png">
	<link rel="shortcut icon" href="ug3.png">
	<!-- Normalize -->
	<link rel="stylesheet" type="text/css" href="dist/css/normalize.css">
	<!-- Bootstrap -->
	<link rel="stylesheet" type="text/css" href="dist/css/bootstrap.css">
	<!-- Owl -->
	<link rel="stylesheet" type="text/css" href="dist/css/owl.css">
	<!-- Animate.css -->
	<link rel="stylesheet" type="text/css" href="dist/css/animate.css">
	<!-- Font Awesome -->
	<link rel="stylesheet" type="text/css" href="dist/fonts/font-awesome-4.1.0/css/font-awesome.min.css">
	<!-- Elegant Icons -->
	<link rel="stylesheet" type="text/css" href="dist/fonts/eleganticons/et-icons.css">
	<!-- Main style -->
	<link rel="stylesheet" type="text/css" href="dist/css/cardio.css">
</head>

<body>

	<div class="preloader">
		<img src="dist/img/loader.gif" alt="Preloader image">
	</div>
	
			<!-- <div class="navbar-header">
				
				
			</div> -->
			
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>
	<header id="intro">
		<div class="container">
			<div class="table">
				<div class="header-text">
					<div class="row">
						<div class="col-md-12 text-center">	
							<h1 class="white typed"><span>
							Sistem Monitoring Bimbingan Skripsi
							</span></h1><br>
							<h2 class="typed-cursor">UNIVERSITAS <a href='#' title='U-G' target='_blank'><font color="yellow">GUNADARMA</font></a>
							</h2><br><br>
							<a href="#" data-toggle="modal" data-target="#modal1" class="btn btn-blue" style= "border-radius: 15px"><span class='fa fa-share'></span> LOGIN</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>

	<div class="modal fade" id="modal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content modal-popup">
            <a href="#" class="close-link"><i class="icon_close_alt2"></i></a>
            <!-- Ganti <h3> dengan gambar logo -->
            <div class="logo-container">
                <img src="ug4.png" alt="Logo" width="400">
            </div>

            <form method="POST" action="cek_login.php" class="popup-form">
                <a class="white"><i>Silahkan masukkan username dan password dengan benar!</i></a>
                <input type="text" style="border-radius: 20px" class="form-control form-white" placeholder="Username" name="username" required>
                <input type="password" style="border-radius: 20px" class="form-control form-white" placeholder="Password" name="pass" required>
                <button type="submit" class="btn btn-primary" style="border-radius: 20px" class="btn btn-submit" name="login">Login</button>
                <br>
                <br>
                <center>
                    <p style="color: white;">Universitas <a href='#' title='U-TER' target='_blank'><font color="yellow">Gunadarma </font>|<font color="white"> <?php echo date ('d-M-Y') ?></font></a></p>
                </center>
            </form>
        </div>
    </div>
</div>
	<!-- <footer>
		
	</footer> -->
	<!-- Holder for mobile navigation -->
	<div class="mobile-nav">
		<ul>
		</ul>
		<a href="#" class="close-link"><i class="arrow_up"></i></a>
	</div>
	<!-- Scripts -->
	<script src="dist/js/jquery-1.11.1.min.js"></script>
	<script src="dist/js/owl.carousel.min.js"></script>
	<script src="dist/js/bootstrap.min.js"></script>
	<script src="dist/js/wow.min.js"></script>
	<script src="dist/js/typewriter.js"></script>
	<script src="dist/js/jquery.onepagenav.js"></script>
	<script src="dist/js/main.js"></script>
</body>

</html>