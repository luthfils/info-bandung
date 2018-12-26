<html>
<head>
	<title>Edit Detail Informasi</title>
	<link rel="stylesheet" href="../css/style.css" />
	<link rel="icon" href="../gambar/logo3.png">
	<link rel="shortcut icon" href="../gambar/logo3.png">
</head>
<body>
	<?php
	include "../koneksi/koneksi.php";
	$id_informasi=$_GET['id_informasi'];
	$row=mysql_fetch_array(mysql_query("select * from t_informasi where id_informasi='$id_informasi'"));
	
	$id_contoh=$row['id_contoh'];
	$nama=$row['nama'];
	$alamat=$row['alamat'];
	$no_tlp=$row['no_tlp'];
	$email=$row['email'];
	$website=$row['website'];
	$facebook=$row['facebook'];
	$twitter=$row['twitter'];
	$gambar=$row['gambar'];
	$keterangan=$row['keterangan'];
	$judul_info_harga=$row['judul_info_harga'];
	$latlong=$row['latlong'];
	?>
	
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
					<h3>Edit Detail Informasi</h3>
				</center>
			</div>
		</header>
		<div class="isi">
			<div class="box">
				<div id="formwrap">
					<form  id="submitform" action="update.php" enctype="multipart/form-data" method="post" name="postform">
						<input type="hidden" name="id_informasi" value="<?php echo $id_informasi;?>" />
						<input type="hidden" name="nama" value="<?php echo $nama;?>" />
						<input type="hidden" name="id_contoh" value="<?php echo $id_contoh;?>" />
						<input type="hidden" name="alamat" value="<?php echo $alamat;?>" />
						<input type="hidden" name="no_tlp" value="<?php echo $no_tlp;?>" />
						<input type="hidden" name="email" value="<?php echo $email;?>" />
						<input type="hidden" name="website" value="<?php echo $website;?>" />
						<input type="hidden" name="facebook" value="<?php echo $facebook;?>" />
						<input type="hidden" name="twitter" value="<?php echo $twitter;?>" />
						<input type="hidden" name="gambar_lama" value="<?php echo $gambar?>" />
						<input type="hidden" name="keterangan" value="<?php echo $keterangan;?>" />
						<input type="hidden" name="judul_info_harga" value="<?php echo $judul_info_harga;?>" />
						<input type="hidden" name="latlong" value="<?php echo $latlong;?>" />
						<input type="hidden" name="type" value="<?php echo $type?>" />
						
						<center>
							<table>
								
								<tr>
									<td width="125">Id contoh</td>
									<td width="30">&nbsp;</td>
									<td width="292"><input type="text" class="formstyle-id" name="id_contoh" value="<?php echo $id_contoh; ?>" size="30"/></td>
								</tr>
								<tr>
								  <td width="125">Nama</td>
								  <td width="30">&nbsp;</td>
								  <td width="292"><input type="text" class="formstyle" name="nama" value="<?php echo $nama; ?>" size="30"/></td>
								</tr>
								<tr>
								  <td width="125">Alamat</td>
								  <td width="30">&nbsp;</td>
								  <td width="292"><input type="text" class="formstyle" name="alamat" value="<?php echo $alamat; ?>" size="30"/></td>
								</tr>
								<tr>
								  <td width="125">No Telepon</td>
								  <td width="30">&nbsp;</td>
								  <td width="292"><input type="text" class="formstyle" name="no_tlp" value="<?php echo $no_tlp; ?>" size="30"/></td>
								</tr>
								<tr>
								  <td>Email</td>
								  <td>&nbsp;</td>
								  <td><input type="text" name="email" class="formstyle" value="<?php echo $email; ?>" size="30"/></td>
								</tr>
								<tr>
								  <td width="125">Website</td>
								  <td width="30">&nbsp;</td>
								  <td width="292"><input type="text" class="formstyle" name="website" value="<?php echo $website; ?>" size="30"/></td>
								</tr>
								<tr>
								  <td width="125">Facebook</td>
								  <td width="30">&nbsp;</td>
								  <td width="292"><input type="text" class="formstyle" name="facebook" value="<?php echo $facebook; ?>" size="30"/></td>
								</tr>
								<tr>
								  <td width="125">Twitter</td>
								  <td width="30">&nbsp;</td>
								  <td width="292"><input type="text" class="formstyle" name="twitter" value="<?php echo $twitter; ?>" size="30"/></td>
								</tr>
								<tr>
									<td>Gambar Sebelumnya</td>
									<td>&nbsp;</td>
									<td>
										<img src="../../gambar/info_bandung/gambar_keterangan/<?php echo $gambar;?>" id="gambar-sebelumnya" width="100" height="100">
									</td>
								</tr>
								<tr>
									<td></td>
									<td></td>
									<td><i><font color="#b6c9dc">*Kosongkan gambar jika tidak diubah </font></i></td>
								</tr>
								<tr>
									<td>Gambar Informasi</td>
									<td>&nbsp;</td>
									<td><input type="file" class="formstyle" name="gambar" size="30"/></td>
								</tr>
								<tr>
									<td colspan="3"><p></p></td>
								</tr>
								<tr>
								  <td width="125">Keterangan</td>
								  <td width="30">&nbsp;</td>
								  <td width="292"><textarea class="formstyle" name="keterangan" cols="20" rows="5"><?php echo $keterangan; ?></textarea></td>
								</tr>
								<tr>
								  <td width="125">Judul Info Harga</td>
								  <td width="30">&nbsp;</td>
								  <td width="292"><input type="text" class="formstyle" name="judul_info_harga" value="<?php echo $judul_info_harga; ?>" size="30"/></td>
								</tr>
								<tr>
								  <td width="125">Latlong</td>
								  <td width="30">&nbsp;</td>
								  <td width="292"><input type="text" class="formstyle" name="latlong" value="<?php echo $latlong; ?>" size="30"/></td>
								</tr>
								<tr>
								  <td colspan="3"><p></p></td>
								</tr>								
								<tr>
									<td><input type="submit" class="formstyletwo" name="submit"  value="Update" onclick="return confirm('Apakah Anda yakin akan mengubah data?')"/></td>
									<td>&nbsp;</td>
									<td>
										<a href="view_data.php">
											<input type="button" class="formstyletwo"  value="View Data Kategori"> 
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