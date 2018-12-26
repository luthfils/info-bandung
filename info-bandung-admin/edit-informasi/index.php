<?php
include "../koneksi/koneksi.php";
session_start();
if (!isset($_SESSION['username'])){
header ("location:../login/login.php");
}
?>
<html>
<head>
	<title>Input Detail Informasi</title>
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
					<h3>Input Detail Informasi</h3>
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
									<td width="125">Id Contoh</td>
									<td width="30">&nbsp;</td>
									<td width="292"><input type="text" placeholder="Id contoh" class="formstyle-id" title="Id contoh" name="id_contoh" /></td>
								</tr>
								<tr>
									<td width="125">Nama</td>
									<td width="30">&nbsp;</td>
									<td width="292"><input type="text" placeholder="Nama" class="formstyle" title="Nama" name="nama" /></td>
								</tr>
								<tr>
									<td width="125">Alamat</td>
									<td width="30">&nbsp;</td>
									<td width="292"><input type="text" placeholder="Alamat" class="formstyle" title="Alamat" name="alamat" /></td>
								</tr>
								<tr>
									<td width="125">No Telepon</td>
									<td width="30">&nbsp;</td>
									<td width="292"><input type="text" placeholder="No telepon" class="formstyle" title="No telepon" name="no_tlp" /></td>
								</tr>
								<tr>
									<td width="125">Email</td>
									<td width="30">&nbsp;</td>
									<td width="292"><input type="text" placeholder="Email" class="formstyle" title="Email" name="email" /></td>
								</tr>
								<tr>
									<td width="125">Website</td>
									<td width="30">&nbsp;</td>
									<td width="292"><input type="text" placeholder="Website" class="formstyle" title="Website" name="website" /></td>
								</tr>
								<tr>
									<td width="125">Facebook</td>
									<td width="30">&nbsp;</td>
									<td width="292"><input type="text" placeholder="Facebook" class="formstyle" title="Facebook" name="facebook" /></td>
								</tr>
								<tr>
									<td width="125">Twitter</td>
									<td width="30">&nbsp;</td>
									<td width="292"><input type="text" placeholder="Twitter" class="formstyle" title="Twitter" name="twitter" /></td>
								</tr>
								<tr>
									<td>Gambar Informasi</td>
									<td>&nbsp;</td>
									<td><input type="file"  class="formstyle" title="Gambar Informasi" name="gambar" /></td>
								</tr>
								<tr>
									<td width="125">Keterangan</td>
									<td width="30">&nbsp;</td>
									<td width="292"><textarea placeholder="Keterangan" class="formstyle" title="Keterangan" name="keterangan" cols="20" rows="5"></textarea></td>
								</tr>
								<tr>
									<td width="125">Judul Info Harga</td>
									<td width="30">&nbsp;</td>
									<td width="292"><input type="text" placeholder="Judul info harga" class="formstyle" title="Judul Info Harga" name="judul_info_harga" /></td>
								</tr>
								<tr>
									<td width="125">Latlong</td>
									<td width="30">&nbsp;</td>
									<td width="292"><input type="text" placeholder="Latlong" class="formstyle" title="Latlong" name="latlong" /></td>
								</tr>
								<tr>
									<td colspan="3"><p></p></td>
								</tr>
								<tr>
									<td><input class="formstyletwo" type="submit" name="submit" value="Submit" onClick="return confirm('Apakah Anda yakin dengan inputan Anda?')" /></td>
									<td>&nbsp;</td>
									<td>
									<a href="view_data.php">
										<input type="button" class="formstyletwo"  value="View Detail Informasi"> 
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