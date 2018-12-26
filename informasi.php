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
		<script type="text/javascript">
		function kembali() {
			window.history.back()
		}
		</script>		
		<a href="#" data-icon="back" data-iconpos="notext" onclick="kembali()" >Back</a>
		<a href="home.php" data-ajax="false" data-icon="home" data-iconpos="notext">Home</a> 
			<h1></h1>
		</div><!-- /header -->
		<div data-role="content" data-theme="a">
		</br>					
			<center>					
				<div class="slider-wrapper theme-default">
					<div id="slider" class="nivoSlider">
						<?php
							$id_informasi = $_GET['id_informasi'];
							$query = "SELECT * FROM t_gambar WHERE id_informasi= '$id_informasi' ORDER BY id_gambar asc";
							$proses = mysql_query($query);
							while($data = mysql_fetch_array($proses))
							{
						?>
						<?php echo "<img src='gambar/info_bandung/gallery/$data[gambar]' width='100%' height='100%' >" ?>
						<?php } ?>
						<?php
							$id_informasi = $_GET['id_informasi'];
							$query = "SELECT * FROM t_informasi WHERE id_informasi= '$id_informasi' ORDER BY id_informasi ASC ";
							$proses = mysql_query($query);
							while($data = mysql_fetch_array($proses))
							{
						?>
						<?php echo "<img src='gambar/info_bandung/gambar_keterangan/$data[gambar]' width='100%' height='100%'>" ?>
						<?php } ?>
					</div>						
				</div>				
			</center>
		
						<?php
							$id_informasi = $_GET['id_informasi'];
							$query = "SELECT * FROM t_informasi WHERE id_informasi= '$id_informasi' ORDER BY nama ASC ";
							$proses = mysql_query($query);
							while($data = mysql_fetch_array($proses))
							{
						?>
						
			<div data-role="content" data-theme="a">
						<h1><p class="header-informasi"><?php echo $data['nama'] ?></p></h1> 
						<p class="edit-text-informasi"><?php echo $r['keterangan'] ?></p>
					<div class="collaps-info">	
						<div data-role="collapsible-set" data-inset="true" data-corners="false" data-iconpos="right" data-theme="aedit" data-content-theme="aedit" data-collapsed-icon="arrow-r" data-expanded-icon="arrow-d" class="collaps-informasi">
							<div data-role="collapsible" data-theme="aedit">
								<h2 class="collaps-font"><img src="icon/alamat.png" alt="" class="collaps-icon" >Alamat</h2>
								<p class="edit-text"><?php echo $r['alamat'] ?></p>									
							</div><!-- /collapsible -->
							<div data-role="collapsible" data-theme="aedit">
								<h2 class="collaps-font"><img src="icon/notlp.png" alt="" class="collaps-icon" >No Telepon</h2>
								<p class="edit-text"><?php echo $r['no_tlp'] ?></p>
							</div><!-- /collapsible -->
							<div data-role="collapsible" data-theme="aedit">
								<h2 class="collaps-font"><img src="icon/earth.png" alt="" class="collaps-icon" >Website</h2>
								<p class="edit-text"><?php echo $r['website'] ?></p>
							</div><!-- /collapsible -->
							<div data-role="collapsible"data-theme="aedit">
								<h2 class="collaps-font"><img src="icon/email.png" alt="" class="collaps-icon" >Email</h2>
								<p class="edit-text"><?php echo $r['email'] ?></p>
							</div><!-- /collapsible -->
							<div data-role="collapsible" data-theme="aedit">
								<h2 class="collaps-font"><img src="icon/facebook.png" alt="" class="collaps-icon" >Facebook</h2>
								<p class="edit-text">Account ID : <?php echo $r['facebook'] ?></p>
							</div><!-- /collapsible -->
							<div data-role="collapsible" data-theme="aedit">
								<h2 class="collaps-font"><img src="icon/twitter.png" alt="" class="collaps-icon" >Twitter</h2>
								<p class="edit-text">Account ID : <?php echo $r['twitter'] ?></p>
							</div><!-- /collapsible -->
							<div data-role="collapsible" data-theme="aedit">
								<h2 class="collaps-font"><img src="icon/harga.png" alt="" class="collaps-icon" >Info Harga</h2>
								<?php
									$id_informasi = $_GET['id_informasi'];
									$query = "SELECT * FROM t_info_harga WHERE id_informasi= '$id_informasi' ORDER BY id_info_harga ASC ";
									$proses = mysql_query($query);
									while($data = mysql_fetch_array($proses))
									{
								?>
								<table data-role="table" id="movie-table" data-mode="reflow" class="ui-responsive table-stroke">
									 <thead>
										<tr>
										  <th data-priority="persist"><?php echo $r['judul_info_harga'] ?></th>
										  <th data-priority="2">Harga</th>
										  <th data-priority="2">Keterangan</th>
										</tr>
									 </thead>
									 <tbody>
										<tr style="opacity:0.5;">
											<td><?php echo $data['nama_judul'] ?></td>
											<td><?php echo $data['harga'] ?></td>
											<td><?php echo $data['ket'] ?></td>
										</tr>
									</tbody>
								</table>
								<?php } ?>
							</div><!-- /collapsible -->
						</div><!-- /collapsible-set -->
						<?php } ?>
					</div>					
			</div>
		</div>
		<div data-role="footer" data-theme="a">
			<?php
				$id_informasi = $_GET['id_informasi'];
				$query = "SELECT * FROM t_informasi WHERE id_informasi= '$id_informasi' ORDER BY nama ASC ";
				$proses = mysql_query($query);
				while($data = mysql_fetch_array($proses))
				{
			?>
			
			
			<div data-role="navbar" data-position="fixed" data-fullscreen="true">    
				<ul>  				
					<li><a href="maps.php?id_informasi=<?php echo $data['id_informasi'];?>" data-icon="lokasi" data-rel="dialog" data-theme="a" data-transition="flow">Lokasi</a></li>   	
					<li><a href="http://<?php echo $data['website']; ?>" data-icon="web">Website</a></li>
					<li><a href="kategori.php" data-icon="kategori2">Kategori</a></li>   
					<li><a href="tel:<?php echo $data['no_tlp']; ?>" data-icon="panggil" data-rel="dialog" data-theme="a" data-transition="flow">Call</a></li> 					
					<li><a href="photo.php?id_informasi=<?php echo $data['id_informasi']; ?>" data-ajax="false" data-icon="gambar" data-transition="slidefade">Gallery</a></li>
				<?php } ?>
				</ul>   
			</div> 
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