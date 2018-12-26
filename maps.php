<?php 
	include "config/koneksi.php";
?>

<html lang="en">
<head>
	<meta charshet="utf-8" />
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
	<script src="js/jquery.js"></script>
	<script src="js/jquery.mobile-1.3.1.min.js"></script>
			<style>
				img.fullscreen {
					max-height: 100%;
					max-width: 100%;
				}
			</style>
</head>
<body>
	<div data-role="page" data-theme="a">
		<div data-role="header" data-position="fixed">
				<h1 style="margin:10px 25px 10px 25px;"><center>Lokasi </br><?php echo $r['nama']; ?></center></h1>
		</div>
		<div data-role="content" data-theme="b">
			<?php
			$id_informasi = $_GET['id_informasi'];
			$query = "SELECT latlong FROM t_informasi WHERE id_informasi = '$id_informasi' ";
			$proses = mysql_query($query);
			
			while($r = mysql_fetch_array($proses))
			{		
			?>
			<iframe width="100%" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.com/maps?daddr=<?php echo $r['latlong']; ?>&amp;ie=UTF8&amp;t=m&amp;ll=<?php echo $r['latlong']; ?>&amp;spn=0.001864,0.001062&amp;z=15&amp;output=embed"></iframe>
			<?php }?>
		</div>
	</div>
</body>
</html>