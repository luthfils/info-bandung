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
		<title>Gallery | <?php echo $r['nama']; ?></title>
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
		
		<a href="#" data-icon="back" data-iconpos="notext" onclick="kembali()" >Back</a>
		<a href="home.php" data-ajax="false" data-icon="home" data-iconpos="notext">Home</a>
			<h1>Gallery</h1>
		</div><!-- /header -->
		
	<div data-role="content" data-theme="a">
	
			<ul data-role="listview" data-split-icon="info" data-split-theme="a" data-filter="true" data-filter-placeholder="Pencarian..." data-inset="false">
				
				<?php
					$id_informasi = $_GET['id_informasi'];
					$query = "SELECT * FROM t_gambar WHERE id_informasi= '$id_informasi' ORDER BY id_gambar asc";
					$proses = mysql_query($query);
					while($data = mysql_fetch_array($proses))
					{
				?>
				<li>
						<a href="#<?php echo $data['id_gambar'] ?>" data-rel="popup" data-position-to="window" data-transition="fade">
						<?php echo "<img src='gambar/info_bandung/gallery/$data[gambar]' width='100%' height='100%' style='border-radius:50px; margin-top:4px; margin-buttom:0px;'>" ?>
						<p class="batas1"><?php echo $data['judul'] ?> </p>	
						<p class="batas2">Klik untuk memperbesar</p>
						</a>
						<a href="#i<?php echo $data['id_gambar'] ?>" data-rel="popup" data-position-to="window" data-transition="pop">Informasi gambar</a>
						
						<div data-role="popup" id="<?php echo $data['id_gambar'] ?>" data-overlay-theme="a" data-theme="a" data-corners="false"  style="max-width:512px;">
							<a href="#" data-rel="back" data-role="button" data-theme="a" data-icon="close" data-iconpos="notext" class="ui-btn-right">Close</a>
							<?php echo "<img src='gambar/info_bandung/gallery/$data[gambar]' width='100%' height='100%'>" ?>							
						</div>
						<div data-role="popup" id="i<?php echo $data['id_gambar'] ?>" data-theme="aedit" data-overlay-theme="aedit" class="ui-content" data-corners="false" style="max-width:340px; padding-bottom:2em;">
							<h3><?php echo $data['judul'] ?></h3>
								<p class="ui-li-desc-info"><?php echo $data['deskripsi'] ?> </p>
								<a href="#" data-rel="back" data-role="button" data-theme="a" data-icon="close" data-iconpos="notext" class="ui-btn-right">Close</a>
						</div>				
					<?php } ?>
				</li> 
				
			</ul>	
				
			
						
	</div>
	<div data-role="footer" data-position="fixed">
		<h1>&copy 2014 | Info Bandung</h1>
	</div>
	</div>
</body>
</html>