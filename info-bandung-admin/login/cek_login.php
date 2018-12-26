<html>
<head>
	<title>Info Bandung</title>
	<link rel="stylesheet" href="../css/style.css" />
	<link rel="icon" href="../gambar/logo3.png">
	<link rel="shortcut icon" href="../gambar/logo3.png">
</head>
<body>

<?php
include "../koneksi/koneksi.php";
$username = $_POST['username'];
$password = $_POST['password'];
if (empty($username)){
echo "<script>alert('Username belum diisi')</script>";
echo "<meta http-equiv='refresh' content='1 url=login.php'>";
}else if (empty($password)){
echo "<script>alert('Password belum diisi')</script>";
echo "<meta http-equiv='refresh' content='1 url=login.php'>";
}else{
session_start();
$login = mysql_query("select * from users where username='$username' and password='$password'");
if (mysql_num_rows($login) > 0){
$_SESSION['username'] = $username;
header("location:../index.php");
}else{
echo "<script>alert('Username atau Password salah')</script>";
echo "<meta http-equiv='refresh' content='1 url=login.php'>";
}
}

?>


</body>
</html>