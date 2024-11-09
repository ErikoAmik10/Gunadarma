<?php
session_start();
include('config/koneksi.php');

// Terima data dari form login
$pass = $_POST['pass'];
$username = $_POST['username'];
$password = md5($pass);

// Cek username pada tabel admin
$query = mysql_query("SELECT * FROM admin WHERE username='$username'");
if(mysql_num_rows($query) == 1) {
    $data = mysql_fetch_array($query);
    if(password_verify($pass, $data['password'])){
        $_SESSION["login"] = 'admin';
        $_SESSION['username'] = $data['username'];
        $_SESSION['nama_adm'] = $data['nama_lengkap'];
        $_SESSION['foto_adm'] = $data['foto'];
        $_SESSION['level'] = 'admin';
        header("location:administrator/homepage.php");
    } else {
        echo "<script>alert('Password tidak sesuai!')</script>";
        echo "<script>document.location='index.php'</script>";
    }
}
// Cek username pada tabel mahasiswa
else {
    $query = mysql_query("SELECT * FROM mahasiswa WHERE nim='$username'");
    if(mysql_num_rows($query) == 1) {
        $data = mysql_fetch_array($query);
        if(password_verify($pass, $data['password'])) {
            $_SESSION["login"] = 'mahasiswa';
            $_SESSION['username'] = $data['nim'];
            $_SESSION['nama_mhs'] = $data['nama_lengkap'];
            $_SESSION['foto_mhs'] = $data['foto'];
            $_SESSION['level'] = 'mahasiswa';
            header("location:mahasiswa/homepage.php");
        } else {
            echo "<script>alert('Password tidak sesuai!')</script>";
            echo "<script>document.location='index.php'</script>";
        }
    }
    // Cek username pada tabel dosen
    else {
        $query = mysql_query("SELECT * FROM dosen WHERE nidn='$username'");
        if(mysql_num_rows($query) == 1) {
            $data = mysql_fetch_array($query);
            if(password_verify($pass, $data['password'])) {
                $_SESSION["login"] = 'dosen';
                $_SESSION['username'] = $data['nidn'];
                $_SESSION['nama_do'] = $data['nama_lengkap'];
                $_SESSION['foto_do'] = $data['foto'];
                $_SESSION['level'] = 'dosen';
                header("location:dosen/homepage.php");
            } else {
                echo "<script>alert('Password tidak sesuai!')</script>";
                echo "<script>document.location='index.php'</script>";
            }
        }
        // Cek username pada tabel kaprodi
        else {
            $query = mysql_query("SELECT * FROM kaprodi WHERE nidn='$username'");
            if(mysql_num_rows($query) == 1) {
                $data = mysql_fetch_array($query);
                if(password_verify($pass, $data['password'])) {
                    $_SESSION["login"] = 'kaprodi';
                    $_SESSION['username'] = $data['nidn'];
                    $_SESSION['nama_kpd'] = $data['nama_lengkap'];
                    $_SESSION['program_studi'] = $data['program_studi'];
                    $_SESSION['foto_kpd'] = $data['foto'];
                    $_SESSION['level'] = 'kaprodi';
                    header("location:kaprodi/homepage.php");
                } else {
                    echo "<script>alert('Password tidak sesuai!')</script>";
                    echo "<script>document.location='index.php'</script>";
                }
            }
            else {
                echo "<script>alert('Username atau password tidak sesuai!')</script>";
                echo "<script>document.location='index.php'</script>";
            }
        }
    }
}
?>
