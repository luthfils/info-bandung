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
				<h1>Walikota Bandung</h1>
			</div><!-- /header -->
			<div data-role="content" data-theme="a">
				<a href="#" data-role="button" class="ui-disabled" data-icon="walikota" data-iconpos="walikota" data-corners="false"></a>
				<div data-role="collapsible-set" data-inset="true" data-corners="false" data-iconpos="right" data-theme="aedit" data-content-theme="aedit" data-collapsed-icon="arrow-r" data-expanded-icon="arrow-d" class="collaps-informasi">
					<div data-role="collapsible">
						<h2 class="collaps-font">Nama</h2>
						<ul style="padding:0em;" data-theme="zedit" data-role="listview" id="edit-profil">
							<li><img src="icon/4.png" class="ui-li-icon ui-corner-none">Mochammad Ridwan Kamil</li>
						</ul>									
					</div><!-- /collapsible -->
					<div data-role="collapsible">
						<h2 class="collaps-font">Tempat, tanggal lahir</h2>
						<ul style="padding:0em;" data-theme="zedit" data-role="listview" id="edit-profil">
							<li><img src="icon/4.png" class="ui-li-icon ui-corner-none">Bandung, 4 Oktober 1971</li>
						</ul>	
					</div><!-- /collapsible -->
					<div data-role="collapsible">
						<h2 class="collaps-font">Agama</h2>
						<ul style="padding:0em;" data-theme="zedit" data-role="listview" id="edit-profil">
							<li><img src="icon/4.png" class="ui-li-icon ui-corner-none">Islam</li>
						</ul>	
					</div><!-- /collapsible -->
					<div data-role="collapsible">
						<h2 class="collaps-font">Istri</h2>
						<ul style="padding:0em;" data-theme="zedit" data-role="listview" id="edit-profil">
							<li><img src="icon/4.png" class="ui-li-icon ui-corner-none">Atalia Praratya Kamil</li>
						</ul>	
					</div><!-- /collapsible -->
					<div data-role="collapsible">
						<h2 class="collaps-font">Partai Politik</h2>
						<ul style="padding:0em;" data-theme="zedit" data-role="listview" id="edit-profil">
							<li><img src="icon/4.png" class="ui-li-icon ui-corner-none">Gerindra</li>
						</ul>	
					</div><!-- /collapsible -->
					<div data-role="collapsible">
						<h2 class="collaps-font">Pendidikan</h2>
						<ul style="padding:0em;" data-theme="zedit" data-role="listview" id="edit-profil">
							<li><img src="icon/4.png" class="ui-li-icon ui-corner-none">Institut Teknologi Bandung</li>
							<li><img src="icon/4.png" class="ui-li-icon ui-corner-none">University of California, Berkeley</li>
						</ul>	
					</div><!-- /collapsible -->
					<div data-role="collapsible">
						<h2 class="collaps-font">Karir</h2>
						<ul style="padding:0em;" data-theme="zedit" data-role="listview" id="edit-profil">
							<li><img src="icon/4.png" class="ui-li-icon ui-corner-none">Arsitek</li>
							<li><img src="icon/4.png" class="ui-li-icon ui-corner-none">Dosen ITB</li>
							<li><img src="icon/4.png" class="ui-li-icon ui-corner-none">Walikota Bandung periode 2013-2018</li>
						</ul>	
					</div><!-- /collapsible -->
					<div data-role="collapsible">
						<h2 class="collaps-font">Social Media</h2>
						<ul style="padding:0em;" data-theme="zedit" data-role="listview" id="edit-profil">
							<li><img src="icon/earth.png" class="ui-li-icon ui-corner-none">www.ridwankamil.net</li>
							<li><img src="icon/twitter1.png" class="ui-li-icon ui-corner-none">@ridwankamil</li>
						</ul>	
					</div><!-- /collapsible -->
					<div data-role="collapsible">
						<h2 class="collaps-font">Biografi</h2>
						<ul style="padding:0em;" data-theme="zedit" data-role="listview" id="edit-profil">
							<li>Mochammad Ridwan Kamil atau biasa dipanggil Emil ini adalah Walikota Bandung periode 2013-2018. Sebelum menjadi walikota, ia bekerja sebagai arsitek, dosen dan aktif sebagai aktivis sosial di Indonesia.t</li>
							<li>Ia menyelesaikan pendidikan tingginya di jurusan Arsitektur ITB, prestasi gemilangnya membawanya meraih beasiswa untuk melanjutkan studi dan lulus S2 di University of California Berkeley. Kemudian, ia melanjutkan pekerjaan profesional sebagai arsitek di berbagai firma di Amerika Serikat.</li>
							<li>Bersama timnya, ia telah mengerjakan lebih dari 50 proyek arsitektur dan urban design di benua Amerika, Timur tengah dan Asia dan meraih penghargaan lebih dari 20 kali.</li>
							<li>Bermodalkan ilmu pendidikan Urban Design, ia diangkat sebagai penasihat arsitektur kota Jakarta, penasehat ekonomi kreatif Taiwan dan penasehat pembangunan kota Surabaya.</li>
							<li>Kini Ridwan Kamil aktif menjabat sebagai Prinsipal PT. Urbane Indonesia, Dosen Jurusan Teknik Arsitektur Institut Teknologi Bandung, dan juga sebagai Senior Urban Design Consultant SOM, EDAW (Hong Kong & San Francisco), dan SAA (Singapura).</li>
						</ul>	
					</div><!-- /collapsible -->
				</div>
			</div>
			<div data-role="footer" data-position="fixed">
				<h1>&copy 2014 | Info Bandung</h1>
			</div>
		</div>
	</body>
</html>