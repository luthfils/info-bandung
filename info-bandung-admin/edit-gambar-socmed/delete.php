<html>
<head>
	<title>Gambar Social Media</title>
	<link rel="stylesheet" href="../css/style.css" />
	<link rel="icon" href="../gambar/logo3.png">
	<link rel="shortcut icon" href="../gambar/logo3.png">
</head>
<body>
	<div class="content">
		<header>
			<div class="judul">
				<div id="kanan">
					<a href= "../login/logout.php">
						<img src="../gambar/shutdown1.png" id="shutdown" title="Logout">
					</a>			
				</div>
				<div id="kiri">
					<a href="../index.php">
						<img src="../gambar/home1.png" id="rumah" title="Home">
					</a>
				</div>
				<center>
					<h3>Gambar Social Media</h3>
				</center>
			</div>
		</header>
		<div class="isi">
			<center>

<?php
include "../koneksi/koneksi.php";
$id_gambar_socmed=$_GET['id_gambar_socmed'];
$row=mysql_fetch_array(mysql_query("select * from t_gambar_socmed where id_gambar_socmed='$id_gambar_socmed'"));
$gambar=$row['gambar'];

$query=mysql_query("delete from t_gambar_socmed where id_gambar_socmed='$id_gambar_socmed'");
if($query){
	$nama_file="../../gambar/info_bandung/gambar_socmed/".$gambar;
	unlink($nama_file);
	echo "Data sudah di hapus! </br></br> <a href=view_data.php><input type='button' class='formstyletwo-warning' value='View Gambar Sosial Media'></a>";
}
?>

		</center>
	</div>
		<div class="footer">
			<center>
				<ul id ="footer-links">
					<li>
						<p>&copy 2014 | Info Bandung</p>					
					</li>
				</ul>
			</center>
		</div>
	</div>
</body>
</html>