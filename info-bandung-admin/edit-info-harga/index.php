<?php
include "../koneksi/koneksi.php";
session_start();
if (!isset($_SESSION['username'])){
header ("location:../login/login.php");
}
?>
<html>
<head>
	<title>Input Info Harga</title>
	<link rel="stylesheet" href="../css/style.css" />
	<link rel="icon" href="../gambar/logo3.png">
	<link rel="shortcut icon" href="../gambar/logo3.png">
</head>
<body>
	<div class="content-jenis">
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
					<h3>Input Info Harga</h3>
				</center>
			</div>
		</header>
		<div class="isi">
			<div class="box">
				<div id="formwrap">
					<form  id="submitform" action="simpan.php" enctype="multipart/form-data" method="post" name="postform">
						<center>
							<table>
								<tr>
									<td width="125">Id Informasi</td>
									<td width="30">&nbsp;</td>
									<td width="292"><input type="text" placeholder="Id informasi" class="formstyle-id" title="Id Informasi" name="id_informasi" /></td>
								</tr>
								<tr>
									<td width="125">Nama Judul</td>
									<td width="30">&nbsp;</td>
									<td width="292"><input type="text" placeholder="Nama judul" class="formstyle" title="Nama Judul" name="nama_judul" /></td>
								</tr>
								<tr>
									<td width="125">Harga</td>
									<td width="30">&nbsp;</td>
									<td width="292"><input type="text" placeholder="Harga" class="formstyle" title="Harga" name="harga" /></td>
								</tr>
								<tr>
									<td width="125">Keterangan</td>
									<td width="30">&nbsp;</td>
									<td width="292"><textarea placeholder="Keterangan" class="formstyle" title="Keterangan" name="ket" cols="20" rows="5"></textarea></td>
								</tr>
								<tr>
									<td colspan="3"><p></p></td>
								</tr>
								<tr>
									<td><input class="formstyletwo" type="submit" name="submit" value="Submit" onClick="return confirm('Apakah Anda yakin dengan inputan Anda?')" /></td>
									<td>&nbsp;</td>
									<td>
									<a href="view_data.php">
										<input type="button" class="formstyletwo"  value="View Info Harga"> 
									</a>
								  </td>
								</tr>
							</table>
						</center>
					</form>
				</div>
			</div>	
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