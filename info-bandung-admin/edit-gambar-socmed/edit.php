<html>
<head>
	<title>Edit Gambar Social Media</title>
	<link rel="stylesheet" href="../css/style.css" />
	<link rel="icon" href="../gambar/logo3.png">
	<link rel="shortcut icon" href="../gambar/logo3.png">
</head>
<body>
	<?php
	include "../koneksi/koneksi.php";
	$id_gambar_socmed=$_GET['id_gambar_socmed'];
	$row=mysql_fetch_array(mysql_query("select * from t_gambar_socmed where id_gambar_socmed='$id_gambar_socmed'"));

	$nama_gambar_socmed=$row['nama_gambar_socmed'];
	$gambar=$row['gambar'];
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
					<h3>Edit Gambar Social Media</h3>
				</center>
			</div>
		</header>
		<div class="isi">	
			<div class="box">
				<div id="formwrap">
					<form  id="submitform" action="update.php" enctype="multipart/form-data" method="post" name="postform">
						<input type="hidden" name="id_gambar_socmed" value="<?php echo $id_gambar_socmed;?>" />
						<input type="hidden" name="nama_gambar_socmed" value="<?php echo $nama_gambar_socmed;?>" />
						<input type="hidden" name="gambar_lama" value="<?php echo $gambar?>" />
						<input type="hidden" name="type" value="<?php echo $type?>" />
						
						<center>
							<table>
								<tr>
									<td width="125">Nama Gambar</td>
									<td width="30">&nbsp;</td>
									<td width="292"><input type="text" class="formstyle" name="nama_gambar_socmed" value="<?php echo $nama_gambar_socmed; ?>" size="30"/></td>
								</tr>
								<tr>
									<td>Gambar Sebelumnya</td>
									<td>&nbsp;</td>
									<td>
										<img src="../../gambar/info_bandung/gambar_socmed/<?php echo $gambar;?>" id="gambar-sebelumnya" width="100" height="100">
									</td>
								</tr>
								<tr>
									<td></td>
									<td></td>
									<td><i><font color="#b6c9dc">*Kosongkan gambar jika tidak diubah </font></i></td>
								</tr>
								<tr>
									<td>Gambar</td>
									<td>&nbsp;</td>
									<td><input type="file" class="formstyle" name="gambar" size="30"/></td>
								</tr>
								<tr>
									<td colspan="3"><p></p></td>
								</tr>
								<tr>
									<td><input type="submit" class="formstyletwo" name="submit"  value="Update" onclick="return confirm('Apakah Anda yakin akan mengubah data?')"/></td>
									<td>&nbsp;</td>
									<td>
										<a href="view_data.php">
											<input type="button" class="formstyletwo"  value="View Gambar Social Media"> 
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