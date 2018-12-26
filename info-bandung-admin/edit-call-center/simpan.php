<html>
<head>
	<title>Call Center</title>
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
					<h3>Call Center</h3>
				</center>
			</div>
		</header>
		<div class="isi">
			<center>

<?php
include "../koneksi/koneksi.php";
if(isset($_POST['submit'])){

	$nama=addslashes(htmlentities(ucwords($_POST['nama'])));
	$no_tlp=addslashes(htmlentities($_POST['no_tlp']));

	$nama_gambar=$_FILES['gambar']['name'];
	$type = $_FILES['gambar']['type'];
	$ukuran=$_FILES['gambar']['size'];
	
	if(empty($nama) ||  empty($nama_gambar) || empty($no_tlp)){
		echo "Maaf, form belum lengkap!! </br></br> <a href=index.php><input type='button' class='formstyletwo-warning' value='Silahkan ulangi'></a>";
	}else{  
		$query_nama=mysql_query("select * from t_call_center where nama='$nama'");
		$cek=mysql_num_rows($query_nama);
		if($cek>0){
			echo "Maaf, nama call center sudah dipakai!! </br></br> <a href=index.php><input type='button' class='formstyletwo-warning' value='Silahkan ulangi'></a>";
		}else{
			if($type != "image/gif"  &&  $type != "image/jpg"  && $type != "image/jpeg" && $type != "image/png") {
				echo "File harus jpg,jpeg,png,gif!! </br></br> <a href=index.php><input type='button' class='formstyletwo-warning' value='Silahkan ulangi'></a>";
			}else{
				if($ukuran>1000000){
					echo "File harus berukuran kurang dari 1MB!! </br></br> <a href=index.php><input type='button' class='formstyletwo-warning' value='Silahkan ulangi'></a>";
				}else{
					$uploaddir='../../gambar/info_bandung/gambar_call_center/';
					$rnd=date(His);				
					$nama_file_upload=$rnd.'-'.$nama_gambar;
					$alamatfile=$uploaddir.$nama_file_upload;
					
					if (move_uploaded_file($_FILES['gambar']['tmp_name'],$alamatfile))
					{
						$query=mysql_query("insert into t_call_center(nama,no_tlp,gambar) 
									values('$nama','$no_tlp','$nama_file_upload')");
							
						if($query){
							echo "Data Anda berhasil disimpan </br></br> <a href=view_data.php> <input type='button' class='formstyletwo-warning' value='View Call Center'></a>";
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