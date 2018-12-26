<html>
<head>
	<title>Detail Informasi</title>
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
					<h3>Detail Informasi</h3>
				</center>
			</div>
		</header>
		<div class="isi">
			<center>

<?php
include "../koneksi/koneksi.php";
if(isset($_POST['submit'])){

	$id_informasi=$_POST['id_informasi'];
	$id_contoh=addslashes(htmlentities($_POST['id_contoh']));
	$nama=addslashes(htmlentities(ucwords($_POST['nama'])));
	$alamat=addslashes(htmlentities($_POST['alamat']));
	$no_tlp=addslashes(htmlentities($_POST['no_tlp']));
	$email=addslashes(htmlentities($_POST['email']));
	$website=addslashes(htmlentities($_POST['website']));
	$facebook=addslashes(htmlentities($_POST['facebook']));
	$twitter=addslashes(htmlentities($_POST['twitter']));
	$keterangan=addslashes(htmlentities($_POST['keterangan']));
	$judul_info_harga=addslashes(htmlentities($_POST['judul_info_harga']));
	$latlong=addslashes(htmlentities($_POST['latlong']));
	
	$gambar_lama=$_POST['gambar_lama'];
	$nama_gambar=$_FILES['gambar']['name'];
	
	if(empty($nama) || empty($id_contoh) || empty($alamat) || empty($no_tlp) || empty($email) || empty($website) || empty($facebook) || empty($twitter) || empty($keterangan) || empty($judul_info_harga) || empty($latlong)){
		echo "Maaf, form belum lengkap!!</br></br>";
		?><a href=edit.php?id_informasi=<?php echo $id_informasi;?>><input type='button' class='formstyletwo-warning' value='Silahkan ulangi'></a><?php
	}else{  
			if(empty($_FILES['gambar']['name'])){
				$nama_file_upload=$gambar_lama;	
				$query=mysql_query("update t_informasi set id_contoh='$id_contoh',nama='$nama',alamat='$alamat',no_tlp='$no_tlp',email='$email',website='$website',facebook='$facebook',twitter='$twitter',gambar='$nama_file_upload',keterangan='$keterangan',judul_info_harga='$judul_info_harga',latlong='$latlong' where id_informasi='$id_informasi'");
			}else{		
				$type = $_FILES['gambar']['type'];
				$uploaddir='../../gambar/info_bandung/gambar_keterangan/';
				$rnd=date(His);				
				$nama_file_upload=$rnd.'-'.$nama_gambar;
				$alamatfile=$uploaddir.$nama_file_upload;
				
				if($type != "image/gif"  &&  $type != "image/jpg"  && $type != "image/jpeg" && $type != "image/png") {
						echo "File harus jpg,jpeg,png,gif!!</br></br></a>";
						?><a href=edit.php?id_informasi=<?php echo $id_informasi;?>><input type='button' class='formstyletwo-warning' value='Silahkan ulangi'></a><?php
				}else{
					if($ukuran>1000000){
						echo "File harus berukuran kurang dari 1MB!!</br></br></a>";
						?><a href=edit.php?id_informasi=<?php echo $id_informasi;?>><input type='button' class='formstyletwo-warning' value='Silahkan ulangi'></a><?php
					}else{				
						unlink("../../gambar/info_bandung/gambar_keterangan/".$gambar_lama);
						$upload=move_uploaded_file($_FILES['gambar']['tmp_name'],$alamatfile);
						$query=mysql_query("update t_informasi set id_contoh='$id_contoh',nama='$nama',alamat='$alamat',no_tlp='$no_tlp',email='$email',website='$website',facebook='$facebook',twitter='$twitter',gambar='$nama_file_upload',keterangan='$keterangan',judul_info_harga='$judul_info_harga',latlong='$latlong' where id_informasi='$id_informasi'");
					}
				}
			}
			
			if($query){
				echo "Data Anda berhasil disimpan </br></br><a href=view_data.php> <input type='button' class='formstyletwo-warning' value='View Detail Informasi'></a>";
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