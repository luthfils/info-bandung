<?php
	session_start();
	include "config/koneksi.php";
?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Info Bandung | Mobile Apps</title>
		<link rel="stylesheet" href="css/jquery.mobile-1.3.1.css" />
		<link rel="stylesheet" href="css/jquery.mobile.theme.css" />
		<link rel="stylesheet" href="css/jquery.mobile.structure-1.3.1.min.css" />
		<link rel="stylesheet" href="css/style.css" />
		<script src="js/jquery.js"></script>
		<script src="js/jquery.mobile-1.3.1.min.js"></script>
		

		<!-- Icons -->
		<link rel="icon" href="icon/logo3.png">
		<link rel="shortcut icon" href="icon/logo3.png">
		
		<link rel="apple-touch-icon" href="icon/logo3.png" sizes="57x57">
		<link rel="apple-touch-icon" href="icon/logo3.png" sizes="114x114">
		<link rel="apple-touch-icon" href="icon/logo3.png" sizes="72x72">
		<link rel="apple-touch-icon" sizes="80x80" href="icon/logo3.png">
		<link rel="apple-touch-icon-precomposed" sizes="android-only" href="icon/logo3.png">
		
		<!-- If we want to have a chrome-less webapp -->
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		
		<link rel="apple-touch-startup-image" href="_assets/default.png" media="(max-device-width: 480px)">
		<link rel="apple-touch-startup-image" href="images/launch-iPad-p.png" media="screen and (min-device-width: 481px) and (max-device-width: 1024px) and (orientation:portrait)">
		<link rel="apple-touch-startup-image" href="images/launch-iPad-l.png" media="screen and (min-device-width: 481px) and (max-device-width: 1024px) and (orientation:landscape)">
		
		
	</head>
	<body>
		<div data-role="page" data-theme="a">
			<div data-role="header" data-position="fixed">
			<script type="text/javascript">
			function kembali() {
				window.history.back()
			}
			</script>
			
			<a href="#" data-ajax="false" data-icon="back" data-iconpos="notext" onclick="kembali()" >Back</a>
			<a href="home.php" data-ajax="false" data-icon="home" data-iconpos="notext">Home</a>
				<h1>About Info Bandung</h1>
			</div><!-- /header -->
			<div data-role="content" data-theme="a">
				<a href="#" data-role="button" class="ui-disabled" data-icon="infobdg" data-iconpos="infobdg" data-corners="false"></a>
				<ul style="padding:1em" data-theme="zedit" data-role="listview">
				<li><img src="icon/4.png" class="ui-li-icon ui-corner-none">About Info Bandung</li>
				</ul>
				<div class="ui-body-b" style="padding:1em;">
					<ul style="padding:0em;" data-theme="b" data-role="listview" id="edit-profil">
							<li><i><b>Info Bandung Mobile Apps</b></i> merupakan aplikasi mobile web yang memuat informasi seputar tempat-tempat wisata, wisata kuliner, wisata belanja dan tempat-tempat menarik lainnya yang ada di kota Bandung.</li>
							<li>Aplikasi ini harus terhubung atau terkoneksi dengan internet untuk melihat loksai suatu tempat menggunakan <i><b>Google Maps</b></i>.</li>
						</ul>
				</div>
			</div>
			<div data-role="footer" data-position="fixed">
				<h1>&copy 2014 | Info Bandung</h1>
			</div>
		</div>
	</body>
</html>