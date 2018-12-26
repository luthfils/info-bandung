<?php
include "../koneksi/koneksi.php";
session_start();
if (isset($_SESSION['username'])){
header ("location:../index.php");
}
?>
<html>
<head>
	<title>Login !</title>
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
					<h3>Login !</h3>
				</center>
			</div>
		</header>
		<div class="isi">
			<div class="box">
				<div id="formwrap">
					<form  id="submitform" method="post" name="login" action="cek_login.php">
						<center>
							<table>
								<tr>
									<td width="60">
										<center>
											<div id="username">											
												<img src="../gambar/user.png" id="user">
											</div>
										</center>
									</td>
									<td width="30">&nbsp;</td>
									<td width="200"><input type="text" placeholder="Username" class="formstyle" title="Username" name="username" /></td>
								</tr>
								<tr>
									<td width="60">
										<center>
											<div id="username">											
												<img src="../gambar/password.png" id="password">
											</div>
										</center>
									</td>
									<td width="30">&nbsp;</td>
									<td width="200"><input type="password" placeholder="Password" class="formstyle" title="Password" name="password" /></td>
								</tr>
								<tr>
									<td colspan="3"><p></p></td>
								</tr>
								<tr>
									<td>
										<a href="daftar.php">
											<input type="button" class="formstyletwo"  value="Daftar"> 
										</a>
									</td>
									<td>&nbsp;</td>
									<td><input class="formstyletwo" type="submit" name="submit" value="Login" /></td>
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