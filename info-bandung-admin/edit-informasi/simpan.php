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

	$nama_gambar=$_FILES['gambar']['name'];
	$type = $_FILES['gambar']['type'];
	$ukuran=$_FILES['gambar']['size'];
	
	if(empty($id_contoh) || empty($nama) || empty($alamat) || empty($no_tlp) || empty($email) || empty($website) || empty($facebook) || empty($twitter) || empty($keterangan) || empty($judul_info_harga) || empty($latlong)|| empty($nama_gambar)){
		echo "Maaf, form belum lengkap!! </br></br> <a href=index.php><input type='button' class='formstyletwo-warning' value='Silahkan ulangi'></a>";
	}else{  
		$query_nama=mysql_query("select * from t_informasi where nama='$nama'");
		$cek=mysql_num_rows($query_nama);
		if($cek>0){
			echo "Maaf, nama informasi sudah dipakai!! </br></br> <a href=index.php><input type='button' class='formstyletwo-warning' value='Silahkan ulangi'></a>";
		}else{
			if($type != "image/gif"  &&  $type != "image/jpg"  && $type != "image/jpeg" && $type != "image/png") {
				echo "File harus jpg,jpeg,png,gif!! </br></br> <a href=index.php><input type='button' class='formstyletwo-warning' value='Silahkan ulangi'></a>";
			}else{
				if($ukuran>1000000){
					echo "File harus berukuran kurang dari 1MB!! </br></br> <a href=index.php><input type='button' class='formstyletwo-warning' value='Silahkan ulangi'></a>";
				}else{
					$uploaddir='../../gambar/info_bandung/gambar_keterangan/';
					$rnd=date(His);				
					$nama_file_upload=$rnd.'-'.$nama_gambar;
					$alamatfile=$uploaddir.$nama_file_upload;
					
					if (move_uploaded_file($_FILES['gambar']['tmp_name'],$alamatfile))
					{
						$query=mysql_query("insert into t_informasi(id_contoh,nama,alamat,no_tlp,email,website,facebook,twitter,gambar,keterangan,judul_info_harga,latlong) 
											values('$id_contoh','$nama','$alamat','$no_tlp','$email','$website','$facebook','$twitter','$nama_file_upload','$keterangan','$judul_info_harga','$latlong')");
							
						if($query){
							echo "Data Anda berhasil disimpan </br></br> <a href=view_data.php> <input type='button' class='formstyletwo-warning' value='View Detail Informasi'></a>";
						}else{
							echo mysql_query();
						}
					}else{
						echo "<p>Proses upload gagal, kode error = " . $_FILES['location']['error']."</p>";
					}
				}
			}
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