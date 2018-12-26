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
			$id_kategori = $_GET['id_kategori'];
			
			$query = "SELECT * FROM t_kategori WHERE id_kategori = '$id_kategori' ";
			$proses = mysql_query($query);
			$r = mysql_fetch_array($proses);
		?>
		<title><?php echo $r['kategori']; ?></title>
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
			<a href="kategori.php" data-icon="back" data-iconpos="notext" >Kembali</a>
			<a href="home.php" data-ajax="false" data-icon="home" data-iconpos="notext">Rumah</a>
				<h1><?php echo $r['kategori']; ?></h1>
		</div><!-- /header -->
	<div data-role="content" data-theme="a">
		<ul data-icon="arrow-r" data-role="listview" data-filter="true" data-filter-placeholder="Pencarian..." data-inset="false">	
			<?php
				$id_kategori = $_GET['id_kategori'];
				$query = "SELECT * FROM t_jenis WHERE id_kategori= '$id_kategori' ORDER BY id_jenis asc";
				$proses = mysql_query($query);	
				while($data=mysql_fetch_array($proses)){
			?>
			<li>
				<a href="contoh.php?id_jenis=<?php echo $data['id_jenis'] ?>">
				<?php echo "<img src='gambar/info_bandung/gambar_jenis/$data[gambar]' height='96%'>" ?>
				<p class="batas"><?php echo $data['jenis'] ?></p>
				</a>
			</li>
			<?php } ?>
		</ul>
	</div>		
	<div data-role="footer" data-position="fixed">
		<h1>&copy 2014 | Info Bandung</h1>
	</div>
	</div>
</body>
</html>