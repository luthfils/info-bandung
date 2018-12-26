<?php
	error_reporting(0);
	include "config/koneksi.php";
?>
<!DOCTYPE HTML>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<?php
			$id_informasi = $_GET['id_informasi'];
			$query = "SELECT * FROM t_informasi WHERE id_informasi = '$id_informasi' ";
			$proses = mysql_query($query);
			$r = mysql_fetch_array($proses);
		?>
	<title><?php echo $r['nama']; ?></title>		
		<link rel="stylesheet" href="css/jquery.mobile-1.3.1.css" />
		<link rel="stylesheet" href="css/jquery.mobile.theme.css" />
		<link rel="stylesheet" href="css/jquery.mobile.structure-1.3.1.min.css" />
		<link rel="stylesheet" href="css/style.css" />
		<script src="js/jquery.js"></script>
		<script src="js/jquery.mobile-1.3.1.min.js"></script>

		<!-- Gallery -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="keywords" content="mobile portfolio, mobile portfolio site">
        <meta name="author" content="sam deering">
        <meta name="viewport" content="width=device-width, initial-scale=1">
      
	   <link href="gallery1/css/photoswipe.css" rel="stylesheet">
        <link href="gallery1/css/style.css" rel="stylesheet">
        <script src="gallery1/js/script.js"></script>
        <script src="gallery1/js/settings.js"></script>
        <script src="gallery1/js/klass.min.js"></script>
        <script src="gallery1/js/code.photoswipe.jquery-3.0.5.min.js"></script>	

		<!-- Nivo slider-->
		<link rel="stylesheet" href="nivo-slider/themes/default/default.css" type="text/css" media="screen" />
		<link rel="stylesheet" href="nivo-slider/themes/light/light.css" type="text/css" media="screen" />
		<link rel="stylesheet" href="nivo-slider/themes/dark/dark.css" type="text/css" media="screen" />
		<link rel="stylesheet" href="nivo-slider/themes/bar/bar.css" type="text/css" media="screen" />
		<link rel="stylesheet" href="nivo-slider/nivo-slider.css" type="text/css" media="screen" />
		<link rel="stylesheet" href="nivo-slider/demo/style.css" type="text/css" media="screen" />
		
	    <script type="text/javascript" src="nivo-slider/demo/scripts/jquery-1.9.0.min.js"></script>
		<script type="text/javascript" src="nivo-slider/jquery.nivo.slider.js"></script>
		<script type="text/javascript">
		$(window).load(function() {
			$('#slider').nivoSlider();
		});
		</script>
	
		
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
		<a href="#" data-icon="back" data-iconpos="notext" onclick="kembali()" >Back</a>
		<a href="home.php" data-ajax="false" data-icon="home" data-iconpos="notext">Home</a> 
			<h1><?php echo $r['nama']; ?></h1>
		</div><!-- /header -->
		<div data-role="content" data-theme="a">
							
			                <!-- gallery images -->
                <ul id="gallery2" class="gallery">
					<?php
						$id_informasi = $_GET['id_informasi'];
						$query = "SELECT * FROM t_gambar WHERE id_informasi= '$id_informasi' ORDER BY id_gambar asc";
						$proses = mysql_query($query);
						while($data = mysql_fetch_array($proses))
						{
					?>
                    <li>   
						<a href="<?php echo "<img src='gambar/info_bandung/gallery/$data[nama]' width='100%' height='100%'>" ?>" rel="external" > <?php echo "<img src='gambar/info_bandung/gallery/$data[nama]' width='100%' height='100%'>" ?></a>
					</li>
					<?php } ?>
				</ul>
		</div>	
	</div>		
</body>
</html>