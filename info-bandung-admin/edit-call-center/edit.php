<html>
<head>
	<title>Edit Call Center</title>
	<link rel="stylesheet" href="../css/style.css" />
	<link rel="icon" href="../gambar/logo3.png">
	<link rel="shortcut icon" href="../gambar/logo3.png">
</head>
<body>
	<?php
	include "../koneksi/koneksi.php";
	$id_call_center=$_GET['id_call_center'];
	$row=mysql_fetch_array(mysql_query("select * from t_call_center where id_call_center='$id_call_center'"));

	$nama=$row['nama'];
	$no_tlp=$row['no_tlp'];
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
					<h3>Edit Call Center</h3>
				</center>
			</div>
		</header>
		<div class="isi">
			<div class="box">
				<div id="formwrap">
					<form  id="submitform" action="update.php" enctype="multipart/form-data" method="post" name="postform">
						<input type="hidden" name="id_call_center" value="<?php echo $id_call_center;?>" />
						<input type="hidden" name="nama" value="<?php echo $nama;?>" />
						<input type="hidden" name="no_tlp" value="<?php echo $no_tlp;?>" />
						<input type="hidden" name="gambar_lama" value="<?php echo $gambar?>" />
						<input type="hidden" name="type" value="<?php echo $type?>" />
						
						<center>
							<table>
								<tr>
									<td width="125">Nama</td>
									<td width="30">&nbsp;</td>
									<td width="292"><input type="text" class="formstyle" name="nama" value="<?php echo $nama; ?>" size="30"/></td>
								</tr>
								<tr>
									<td width="125">No Telepon</td>
									<td width="30">&nbsp;</td>
									<td width="292"><input type="text" class="formstyle" name="no_tlp" value="<?php echo $no_tlp; ?>" size="30"/></td>
								</tr>
								<tr>
									<td>Gambar Sebelumnya</td>
									<td>&nbsp;</td>
									<td>
										<img src="../../gambar/info_bandung/gambar_call_center/<?php echo $gambar;?>" id="gambar-sebelumnya" width="100" height="100">
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
											<input type="button" class="formstyletwo"  value="View Call Center"> 
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