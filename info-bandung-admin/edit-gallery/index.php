<?php
include "../koneksi/koneksi.php";
session_start();
if (!isset($_SESSION['username'])){
header ("location:../login/login.php");
}
?>
<html>
<head>
	<title>Input Gallery Informasi</title>
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
					<h3>Input Gallery Informasi</h3>
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
									<td width="125">Judul Gambar</td>
									<td width="30">&nbsp;</td>
									<td width="292"><input type="text" placeholder="Judul gambar" class="formstyle" title="Judul Gambar" name="judul" /></td>
								</tr>
								<tr>
									<td>Gambar</td>
									<td>&nbsp;</td>
									<td><input type="file"  class="formstyle" title="Input Gambar" name="gambar" /></td>
								</tr>
								<tr>
									<td width="125">Keterangan Gambar</td>
									<td width="30">&nbsp;</td>
									<td width="292"><textarea placeholder="Keterangan gambar" class="formstyle" title="Keterangan Gambar" name="deskripsi" cols="20" rows="5"></textarea></td>
								</tr>
								<tr>
									<td colspan="3"><p></p></td>
								</tr>
								<tr>
									<td><input class="formstyletwo" type="submit" name="submit" value="Submit" onClick="return confirm('Apakah Anda yakin dengan inputan Anda?')" /></td>
									<td>&nbsp;</td>
									<td>
									<a href="view_data.php">
										<input type="button" class="formstyletwo"  value="View Gallery Informasi"> 
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