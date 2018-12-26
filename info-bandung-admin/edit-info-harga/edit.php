<html>
<head>
	<title>Edit Info Harga</title>
	<link rel="stylesheet" href="../css/style.css" />
	<link rel="icon" href="../gambar/logo3.png">
	<link rel="shortcut icon" href="../gambar/logo3.png">
</head>
<body>
	<?php
	include "../koneksi/koneksi.php";
	$id_info_harga=$_GET['id_info_harga'];
	$row=mysql_fetch_array(mysql_query("select * from t_info_harga where id_info_harga='$id_info_harga'"));
	
	$id_informasi=$row['id_informasi'];
	$nama_judul=$row['nama_judul'];
	$harga=$row['harga'];
	$ket=$row['ket'];
	?>
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
					<h3>Edit Info Harga</h3>
				</center>
			</div>
		</header>
		<div class="isi">
			<div class="box">
				<div id="formwrap">
					<form  id="submitform" action="update.php" enctype="multipart/form-data" method="post" name="postform">
						<input type="hidden" name="id_info_harga" value="<?php echo $id_info_harga;?>" />
						<input type="hidden" name="id_informasi" value="<?php echo $id_informasi;?>" />
						<input type="hidden" name="nama_judul" value="<?php echo $nama_judul;?>" />
						<input type="hidden" name="harga" value="<?php echo $harga?>" />
						<input type="hidden" name="ket" value="<?php echo $ket?>" />
						
						<center>
							<table>
								<tr>
									<td width="125">Id Informasi</td>
									<td width="30">&nbsp;</td>
									<td width="292"><input type="text" class="formstyle-id" name="id_informasi" value="<?php echo $id_informasi; ?>" size="30"/></td>
								</tr>
								<tr>
									<td width="125">Nama Judul</td>
									<td width="30">&nbsp;</td>
									<td width="292"><input type="text" class="formstyle" name="nama_judul" value="<?php echo $nama_judul; ?>" size="30"/></td>
								</tr>
								<tr>
									<td width="125">Harga</td>
									<td width="30">&nbsp;</td>
									<td width="292"><input type="text" class="formstyle" name="harga" value="<?php echo $harga; ?>" size="30"/></td>
								</tr>
								<tr>
								  <td width="125">Keterangan</td>
								  <td width="30">&nbsp;</td>
								  <td width="292"><textarea class="formstyle" name="ket" cols="20" rows="5"><?php echo $ket; ?></textarea></td>
								</tr>
								<tr>
									<td colspan="3"><p></p></td>
								</tr>
								<tr>
									<td><input type="submit" class="formstyletwo" name="submit"  value="Update" onclick="return confirm('Apakah Anda yakin akan mengubah data?')"/></td>
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