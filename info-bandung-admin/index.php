<?php
include "koneksi/koneksi.php";
session_start();
if (!isset($_SESSION['username'])){
header ("location:login/login.php");
}
?>
<html>
<head>
	<title>Selamat Datang <?php echo $_SESSION['username']; ?></title>
	<link rel="stylesheet" href="css/style.css" />
	<link rel="icon" href="gambar/logo3.png">
	<link rel="shortcut icon" href="gambar/logo3.png">
</head>
<body>
	<div class="content">
		<header>
			<div class="judul">
				<center>
					<table>
						<tr>
							<td>
								<div id="gambar">
									<a href= "#">
										<img src="gambar/logo3.png">
									</a>
								</div>
							</td>
							<td>
								<div>
									<center>
										<h1>Selamat Datang <?php echo $_SESSION['username']; ?></h1>
									</center>
								</div>
							</td>
							<td>
								<div id="logout">
									<a href= "login/logout.php">
										<img src="gambar/shutdown1.png" id="shutdown" title="Logout">
									</a>
								</div>
							</td>
						</tr>
					</table>
				</center>
			</div>
		</header>
		<div class="isi">
			<center>
			<div id="kotak">
				<table id="tabel-home-atas" border="0" cellspacing="2" cellpadding="2" align="center" width="100%">
					<tr>
						<td colspan="4">
							<div>	
								<h4>Pilih menu yang akan di edit :</h4>
							</div>
						</td>	
					</tr>
					<tr>
						<td>
							<center>
								<a href="edit-kategori/index.php">
									<div id="kotak-1">	
										<h2>Kategori Informasi</h2>
									</div>
								</a>
							</center>
						</td>
						<td>
							<center>
								<a href="edit-jenis/index.php">
									<div id="kotak-1">	
										<h2>Jenis</br> Informasi</h2>
									</div>
								</a>
							</center>
						</td>	
						<td>
							<center>
								<a href="edit-contoh/index.php">
									<div id="kotak-1">	
										<h2>Contoh Informasi</h2>
									</div>
								</a>
							</center>
						</td>
						<td>
							<center>
								<a href="edit-informasi/index.php">
									<div id="kotak-1">	
										<h2>Detail Informasi</h2>
									</div>
								</a>
							</center>
						</td>
					</tr>
				</table>
				<table id="tabel-home-bawah" border="0" cellspacing="2" cellpadding="2" align="center" width="100%">
					<tr>	
						<td>
							<center>
								<a href="edit-gallery/index.php">
									<div id="kotak-1">	
										<h2>Gallery Informasi</h2>
									</div>
								</a>
							</center>
						</td>
						<td>
							<center>
								<a href="edit-info-harga/index.php">
									<div id="kotak-1">	
										<h2>Info</br> Harga</h2>
									</div>
								</a>
							</center>
						</td>
						<td>
							<center>
								<a href="edit-gambar-socmed/index.php">
									<div id="kotak-1">	
										<h2>Gambar Social Media</h2>
									</div>
								</a>
							</center>
						</td>
						<td>
							<center>
								<a href="edit-social-media/index.php">
									<div id="kotak-1">	
										<h2>Social</br> Media</h2>
									</div>
								</a>
							</center>
						</td>	
						<td>
							<center>
								<a href="edit-call-center/index.php">
									<div id="kotak-1">	
										<h2>Call</br> Center</h2>
									</div>
								</a>
							</center>
						</td>	
					</tr>
				</table>
			</div>	
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