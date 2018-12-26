<html>
<head>
	<title>Daftar !</title>
	<link rel="stylesheet" href="../css/style.css" />
	<link rel="icon" href="../gambar/logo3.png">
	<link rel="shortcut icon" href="../gambar/logo3.png">
</head>
<body>
	<div class="content">
		<header>
			<div class="judul">
				<div id="home">
					
				</div>
				<div id="kiri">

				</div>
				<center>
					<h3>Daftar !</h3>
				</center>
			</div>
		</header>
		<div class="isi">
			<div class="box">
				<div id="formwrap">
					<form  id="submitform" method="post" name="pendaftaran" action="proses_daftar.php">
						<center>
							<table>
								<tr>
									<td width="125">Nama</td>
									<td width="30">&nbsp;</td>
									<td width="292"><input type="text" placeholder="Nama" class="formstyle" title="Nama" name="nama" /></td>
								</tr>
								<tr>
									<td width="125">Email</td>
									<td width="30">&nbsp;</td>
									<td width="292"><input type="text" placeholder="Email" class="formstyle" title="Email" name="email" /></td>
								</tr>
								<tr>
									<td width="125">Username</td>
									<td width="30">&nbsp;</td>
									<td width="292"><input type="text" placeholder="Username" class="formstyle" title="Username" name="username" /></td>
								</tr>
								<tr>
									<td width="125">Password</td>
									<td width="30">&nbsp;</td>
									<td width="292"><input type="text" placeholder="Password" class="formstyle" title="Password" name="password" /></td>
								</tr>
								<tr>
									<td colspan="3"><p></p></td>
								</tr>
								<tr>
									<td>
										<a href="login.php">
											<input type="button" class="formstyletwo"  value="Login"> 
										</a>
									</td>
									<td>&nbsp;</td>
									<td><input class="formstyletwo" type="submit" name="submit" value="Daftar" /></td>
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