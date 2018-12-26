<?php
include "../koneksi/koneksi.php";
session_start();
if (!isset($_SESSION['username'])){
header ("location:../login/login.php");
}
?>
<html>
<head>
	<title>Input Social Media</title>
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
					<h3>Input Social Media</h3>
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
									<td width="125">Id Gambar</td>
									<td width="30">&nbsp;</td>
									<td width="292"><input type="text" placeholder="Id gambar" class="formstyle-id" title="Id Gambar" name="id_gambar_socmed" /></td>
								</tr>
								<tr>
									<td width="125">Nama</td>
									<td width="30">&nbsp;</td>
									<td width="292"><input type="text" placeholder="Nama sosial media" class="formstyle" title="Nama Sosial Media" name="nama_socmed" /></td>
								</tr>
								<tr>
									<td width="125">User Id</td>
									<td width="30">&nbsp;</td>
									<td width="292"><input type="text" placeholder="User Id sosial media" class="formstyle" title="User Id Sosial Media" name="userid_socmed" /></td>
								</tr>
								<tr>
									<td width="125">Alamat</td>
									<td width="30">&nbsp;</td>
									<td width="292"><input type="text" placeholder="Alamat sosial media" class="formstyle" title="Alamat Sosial Media" name="alamat_socmed" /></td>
								</tr>
								<tr>
									<td>Gambar</td>
									<td>&nbsp;</td>
									<td><input type="file"  class="formstyle" title="Input Gambar" name="gambar" /></td>
								</tr>
								<tr>
									<td colspan="3"><p></p></td>
								</tr>
								<tr>
									<td><input class="formstyletwo" type="submit" name="submit" value="Submit" onClick="return confirm('Apakah Anda yakin dengan inputan Anda?')" /></td>
									<td>&nbsp;</td>
									<td>
									<a href="view_data.php">
										<input type="button" class="formstyletwo"  value="View Sosial Media"> 
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