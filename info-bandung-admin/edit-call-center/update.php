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

	$id_call_center=$_POST['id_call_center'];
	$nama=addslashes(htmlentities(ucwords($_POST['nama'])));
	$no_tlp=addslashes(htmlentities($_POST['no_tlp']));
	
	$gambar_lama=$_POST['gambar_lama'];
	$nama_gambar=$_FILES['gambar']['name'];
	
	if(empty($nama) || empty($no_tlp)){
		echo "Maaf, Form belum lengkap!!</br></br>";
		?><a href=edit.php?id_call_center=<?php echo $id_call_center;?>><input type='button' class='formstyletwo-warning' value='Silahkan ulangi'></a><?php
	}else{  
			if(empty($_FILES['gambar']['name'])){
				$nama_file_upload=$gambar_lama;	
				$query=mysql_query("update t_call_center set nama='$nama',no_tlp='$no_tlp',gambar='$nama_file_upload' where id_call_center='$id_call_center'");
			}else{		
				$type = $_FILES['gambar']['type'];
				$uploaddir='../../gambar/info_bandung/gambar_call_center/';
				$rnd=date(His);				
				$nama_file_upload=$rnd.'-'.$nama_gambar;
				$alamatfile=$uploaddir.$nama_file_upload;
				
				if($type != "image/gif"  &&  $type != "image/jpg"  && $type != "image/jpeg" && $type != "image/png") {
						echo "File harus jpg,jpeg,png,gif!!</br></br></a>";
						?><a href=edit.php?id_call_center=<?php echo $id_call_center;?>><input type='button' class='formstyletwo-warning' value='Silahkan ulangi'></a><?php
				}else{
					if($ukuran>1000000){
						echo "File harus berukuran kurang dari 1MB!!</br></br></a>";
						?><a href=edit.php?id_call_center=<?php echo $id_call_center;?>><input type='button' class='formstyletwo-warning' value='Silahkan ulangi'></a><?php
					}else{				
						unlink("../../gambar/info_bandung/gambar_call_center/".$gambar_lama);
						$upload=move_uploaded_file($_FILES['gambar']['tmp_name'],$alamatfile);
						$query=mysql_query("update t_call_center set nama='$nama',no_tlp='$no_tlp',gambar='$nama_file_upload' where id_call_center='$id_call_center'");
					}
				}
			}
			
			if($query){
				echo "Data Anda berhasil disimpan </br></br> <a href=view_data.php><input type='button' class='formstyletwo-warning' value='View Call Center'></a>";
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