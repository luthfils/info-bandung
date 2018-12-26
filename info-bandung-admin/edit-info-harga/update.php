<html>
<head>
	<title>Info Harga</title>
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
					<h3>Info Harga</h3>
				</center>
			</div>
		</header>
		<div class="isi">
			<center>

<?php
include "../koneksi/koneksi.php";
if(isset($_POST['submit'])){

	$id_info_harga=$_POST['id_info_harga'];
	$id_informasi=addslashes(htmlentities($_POST['id_informasi']));
	$nama_judul=addslashes(htmlentities(ucwords($_POST['nama_judul'])));
	$harga=addslashes(htmlentities(ucwords($_POST['harga'])));
	$ket=addslashes(htmlentities($_POST['ket']));
	
	
	if(empty($nama_judul) || empty($ket) || empty($harga) || empty($id_informasi)){
		echo "Maaf, form belum lengkap!!</br></br>";
		?><a href=edit.php?id_info_harga=<?php echo $id_info_harga;?>><input type='button' class='formstyletwo-warning' value='Silahkan ulangi'></a><?php
	}else{  	
		$query=mysql_query("update t_info_harga set nama_judul='$nama_judul',id_informasi='$id_informasi',harga='$harga',ket='$ket' where id_info_harga='$id_info_harga'");
			
			if($query){
				echo "Data Anda berhasil disimpan </br></br> <a href=view_data.php><input type='button' class='formstyletwo-warning' value='View Info Harga'></a>";
			}else{
				echo mysql_query();
			}
		
	}
}else{
	unset($_POST['submit']);
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