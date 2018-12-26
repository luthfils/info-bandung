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
$nama = $_POST['nama'];
$email = $_POST['email'];
$username = $_POST['username'];
$password = $_POST['password'];
$query_duplikat=mysql_query("select * from users where nama='$nama' OR email='$email' OR username='$username' OR password='$password' ");
$cek=mysql_num_rows($query_duplikat);

if (empty($nama)){
	echo "<script>alert('Nama belum diisi')</script>";
	echo "<meta http-equiv='refresh' content='1 url=daftar.php'>";
}else if (empty($email)){
	echo "<script>alert('Email belum diisi')</script>";
	echo "<meta http-equiv='refresh' content='1 url=daftar.php'>";
}else if(empty($username)){
	echo "<script>alert('Username belum diisi')</script>";
	echo "<meta http-equiv='refresh' content='1 url=daftar.php'>";
}else if (empty($password)){
	echo "<script>alert('Password belum diisi')</script>";
	echo "<meta http-equiv='refresh' content='1 url=daftar.php'>";
}else if($cek>0){
	echo "<script>alert('Maaf data nama, email, username, dan password sudah ada yang pakai, silahkan diganti')</script>";
	echo "<meta http-equiv='refresh' content='1 url=daftar.php'>";
}else{
	$daftar = mysql_query("INSERT INTO users (nama,email,username,password) values ('$nama','$email','$username','$password')");
	if ($daftar){
		echo "<script>alert('Berhasil Mendaftar')</script>";
		echo "<meta http-equiv='refresh' content='1 url=daftar.php'>";
	}else{
		echo "<script>alert('Gagal Mendaftar')</script>";
		echo "<meta http-equiv='refresh' content='1 url=daftar.php'>";
	}
}
?>
</body>
</html>