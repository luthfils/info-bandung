<?php
	session_start();
	include "config/koneksi.php";
?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		
		<title>Info Bandung</title>
		<link rel="stylesheet" href="css/jquery.mobile-1.3.1.css" />
		<link rel="stylesheet" href="css/jquery.mobile.theme.css" />
		<link rel="stylesheet" href="css/jquery.mobile.structure-1.3.1.min.css" />
		<link rel="stylesheet" href="css/style.css" />
		<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700">

		<script src="js/jquery.js"></script>
		<script src="js/jquery.mobile-1.3.1.min.js"></script>
		
		<!-- Nivo slider-->
		<link rel="stylesheet" href="nivo-slider/themes/default/default.css" type="text/css" media="screen" />
		<link rel="stylesheet" href="nivo-slider/themes/light/light.css" type="text/css" media="screen" />
		<link rel="stylesheet" href="nivo-slider/themes/dark/dark.css" type="text/css" media="screen" />
		<link rel="stylesheet" href="nivo-slider/themes/bar/bar.css" type="text/css" media="screen" />
		<link rel="stylesheet" href="nivo-slider/nivo-slider.css" type="text/css" media="screen" />
		<link rel="stylesheet" href="nivo-slider/demo/style.css" type="text/css" media="screen" />
		
	    <script type="text/javascript" src="nivo-slider/demo/scripts/jquery-1.9.0.min.js"></script>
		<script type="text/javascript" src="nivo-slider/jquery.nivo.slider.js"></script>
		

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
				<a href="#nav-panel" data-icon="menu" data-iconpos="notext" data-shadow="false" data-iconshadow="false" class="ui-icon-nodisc">Menu Admin</a>
				<a href="#right-panel" data-icon="grid" data-iconpos="notext" data-shadow="false" data-iconshadow="false" class="ui-icon-nodisc">Menu Info Bandung</a>
				<h2>Info Bandung</h2>
			</div>
			<div data-role="content" data-theme="a">
		    <center>
				<div class="slider-wrapper theme-default">
					<div id="slider" class="nivoSlider">
						<img src="nivo-slider/demo/images/info.png" data-thumb="nivo-slider/demo/images/info.png" alt="" title="Info Bandung Mobile Apps" />
						<img src="nivo-slider/demo/images/gemah.png" data-thumb="nivo-slider/demo/images/gemah.png" alt="" title="Logo Kota Bandung" />
						<img src="nivo-slider/demo/images/gedung-sate-bandung.jpg" data-thumb="nivo-slider/demo/images/gedung-sate-bandung.jpg" alt="" title="Gedung Sate" />
						<img src="nivo-slider/demo/images/Mesjid_Agung_Bandung.jpg" data-thumb="nivo-slider/demo/images/Mesjid_Agung_Bandung.jpg" alt="" title="Mesjid Agung Bandung" />
						<img src="nivo-slider/demo/images/monumen-perjuangan-rakyat-jabar.jpg" data-thumb="nivo-slider/demo/images/monumen-perjuangan-rakyat-jabar.jpg" alt="" title="Monumen Perjuangan" />
						<img src="nivo-slider/demo/images/gedung-merdeka.jpg" data-thumb="nivo-slider/demo/images/gedung-merdeka.jpg" alt="" title="Gedung Merdeka" />
						<img src="nivo-slider/demo/images/pasopatibridge4.jpg" data-thumb="nivo-slider/demo/images/Mesjid_Agung_Bandung.jpg" alt="" title="Jembatan Layang Pasopati" />
						<img src="nivo-slider/demo/images/jalak.jpg" data-thumb="nivo-slider/demo/images/jalak.jpg" alt="" title="Stadion Si Jalak Harupat" />
						<img src="nivo-slider/demo/images/persib-bandung.jpg" data-thumb="nivo-slider/demo/images/persib-bandung.jpg" alt="" title="Persib Bandung" />						
					</div>
				</div>
			</center>
				<a href="kategori.php" data-icon="kategori" data-iconpos="kategori" data-corners="false" data-role="button" data-theme="a" data-transition="slidefade" class="kategori"></a>
			</div>
			<div data-role="panel" data-position-fixed="true" data-theme="aedit" id="nav-panel" data-display="push">
				
				<div data-role="listview" class="list">
				<ul data-icon="arrow-r" data-role="listview" data-theme="a" >
					<li data-icon="close"><a href="#home" data-rel="close"><img src="icon/circle_close.png" alt="close" class="ui-li-icon">Close</a></li>
					<li><a href="profil_admin.php" data-ajax="false"><img src="icon/profil_admin2.png" alt="profil_admin" class="ui-li-icon">Profil Admin</a></li>
				</ul>
				</div>
				<div data-role="collapsible-set" data-theme="c"  data-inset="false" data-collapsed-icon="plus" data-expanded-icon="minus" data-iconpos="right" class="collaps">
					<div data-role="collapsible" data-theme="a"  data-inset="false">
						<h2 class="collaps-font"><img src="icon/kontak_admin.png" alt="kontak_admin" class="collaps-icon" >Kontak Admin</h2>
						<ul data-icon="arrow-r" data-role="listview" data-theme="a" data-content-theme="c" data-icon="false" >
							<li><a href="#twitter" data-inline="true" data-rel="popup"><img src="icon/twitter3.png" class="ui-li-icon">Twitter</a></li>
							<li><a href="#facebook" data-inline="true" data-rel="popup"><img src="icon/facebook3.png" class="ui-li-icon">Facebook</a></li>
							<li><a href="#email" data-transition="pop" data-inline="true" data-rel="popup"><img src="icon/mail3.png" class="ui-li-icon">Email</a></li>
							<li><a href="#telepon" data-transition="pop" data-inline="true" data-rel="popup"><img src="icon/phone3.png" class="ui-li-icon">Telepon</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div data-role="popup" id="email" data-corners="false" data-theme="a">
				<a href="http://www.gmail.com" data-corners="false" data-role="button" data-theme="aedit" data-transition="slidefade" >luthfils12@gmail.com</a>
			</div>
			<div data-role="popup" id="twitter" data-corners="false" data-theme="a">	
				<a href="http://www.twitter.com/luthfilsn" data-corners="false" data-role="button" data-theme="aedit" data-transition="slidefade" >luthfilsn</a>
			</div>
			<div data-role="popup" id="facebook" data-corners="false" data-theme="a">
				<a href="http://www.facebook.com/luthfi12"  data-corners="false" data-role="button" data-theme="aedit" data-transition="slidefade" >Luthfi Lisan Shidqi</a>	
			</div>
			<div data-role="popup" id="telepon" data-corners="false" data-theme="a">
				<a href="tel:085722406728"  data-corners="false" data-role="button" data-theme="aedit" data-transition="slidefade" >085722406728</a>	
			</div>
			<div data-role="panel" id="right-panel" data-display="overlay" data-position="right" data-theme="aedit">
				<ul data-icon="arrow-r" data-role="listview" data-theme="a" data-icon="false">
					<li data-icon="close"><a href="#home" data-rel="close"><img src="icon/circle_close.png" alt="close" class="ui-li-icon">Close</a></li>
					<li><a href="info_bandung.php" data-ajax="false"><img src="icon/info_bandung.png" alt="info_bandung" class="ui-li-icon">About Info Bandung</a></li>
					<li><a href="walikota.php" data-ajax="false"><img src="icon/walikota_bandung.png" alt="walikota_bandung" class="ui-li-icon">Walikota Bandung</a></li>
					<li><a href="social_media.php" data-ajax="false"><img src="icon/social_media.png" alt="social_media" class="ui-li-icon">Social Media</a></li>
					<li><a href="call_center.php" data-ajax="false"><img src="icon/call_center.png" alt="call_center" class="ui-li-icon">Call Center</a></li>
				</ul>
			</div><!-- /panel -->
			<div data-role="footer" data-position="fixed" data-theme="a">	
				<h2>&copy 2014 | Info Bandung</h2>
			</div>
		</div>
		
		<!-- Javascrip slider -->
		<script type="text/javascript">
		$(window).load(function() {
			$('#slider').nivoSlider();
		});
		</script>
		
	</body>
</html>