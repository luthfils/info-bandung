<?php
include "../koneksi/koneksi.php";
session_start();
if (!isset($_SESSION['username'])){
header ("location:../login/login.php");
}
?>
<?php require_once('../koneksi/koneksi.php'); ?>
<?php
if (!function_exists("GetSQLValueString")) {
function GetSQLValueString($theValue, $theType, $theDefinedValue = "", $theNotDefinedValue = "") 
{
  if (PHP_VERSION < 6) {
    $theValue = get_magic_quotes_gpc() ? stripslashes($theValue) : $theValue;
  }

  $theValue = function_exists("mysql_real_escape_string") ? mysql_real_escape_string($theValue) : mysql_escape_string($theValue);

  switch ($theType) {
    case "text":
      $theValue = ($theValue != "") ? "'" . $theValue . "'" : "NULL";
      break;    
    case "long":
    case "int":
      $theValue = ($theValue != "") ? intval($theValue) : "NULL";
      break;
    case "double":
      $theValue = ($theValue != "") ? doubleval($theValue) : "NULL";
      break;
    case "date":
      $theValue = ($theValue != "") ? "'" . $theValue . "'" : "NULL";
      break;
    case "defined":
      $theValue = ($theValue != "") ? $theDefinedValue : $theNotDefinedValue;
      break;
  }
  return $theValue;
}
}

mysql_select_db($database,$koneksi);
$query = "SELECT * FROM t_gambar";
$datatables = mysql_query($query, $koneksi) or die(mysql_error());
$row_datatables = mysql_fetch_assoc($datatables);
$totalRows_datatables = mysql_num_rows($datatables);
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>View Gallery Informasi</title>
	<link rel="stylesheet" href="../css/style.css" />
	<link rel="icon" href="../gambar/logo3.png">
	<link rel="shortcut icon" href="../gambar/logo3.png">
	
	<style type="text/css" title="currentStyle">
		@import "../media/css/demo_table_jui.css";
		@import "../media/css/ui-lightness/jquery-ui-1.8.4.custom.css";
		
		body{
			font-family: Corbert;
			font-size: 12px;	
		}
	</style>

	<script type="text/javascript" language="javascript" src="../media/js/jquery.js"></script>
	<script type="text/javascript" language="javascript" src="../media/js/jquery.dataTables.js"></script>

	<script>
	$(document).ready( function () {
		 var oTable = $('#example').dataTable( {
						"bJQueryUI": true,
						"sPaginationType": "full_numbers",
					} );		
	} );
	</script>
</head>

<body>
	<div class="content-gallery">
		<header>
			<div class="judul">
				<div id="kanan">
					<a href= "../login/logout.php">
						<img src="../gambar/shutdown1.png" id="shutdown" title="Logout">
					</a>			
				</div>
				<div id="kiri">
					<a href="../index.php">
						<img src="../gambar/home1.png" id="rumah" title="Home">
					</a>
				</div>
				<center>
					<h3>View Gallery Informasi</h3>
				</center>
			</div>
		</header>
		<div class="isi">
			<center>
				<a href="index.php">
					<input type="button" class="tombol"  value="Input Gallery Informasi"> 
				</a>
				</br></br></br>
				<div class="border">
					<table align="center" cellspacing="3" cellpadding="3" align="center" border="0" class="display" id="example">
						<thead>
							 <tr>
								<th>No</th>
								<th>Id Gambar</th>
								<th>Id Informasi</th>
								<th width="120px">Judul</th>
								<th>Gambar</th>
								<th width="170px">Keterangan</th>
								<th width="90px">Aksi</th>
							 </tr>
						 </thead>  
					  <tbody>
					  <?php do { ?>
						<tr>
							<td><?php echo $c=$c+1;?></td>
							<td><?php echo $row_datatables['id_gambar']; ?></td>
							<td><?php echo $row_datatables['id_informasi']; ?></td>
							<td><?php echo $row_datatables['judul']; ?></td>						
							<td><a href="../../gambar/info_bandung/gallery/<?php echo $row_datatables['gambar'];?>" target="_blank"><img src="../../gambar/info_bandung/gallery/<?php echo $row_datatables['gambar'];?>" width="100" height="100" title="<?php echo $row_datatables['gambar'];?>"></a></td>
							<td><?php echo $row_datatables['deskripsi']; ?></td>
							<td id ="edit-links">
								<a href="delete.php?id_gambar=<?php echo $row_datatables['id_gambar']; ?>" onClick="return confirm('Apakah Anda yakin akan menghapus data ini?')">Delete</a> |
								<a href="edit.php?id_gambar=<?php echo $row_datatables['id_gambar']; ?>">Edit</a>
							</td>		
						</tr>
						<?php } while ($row_datatables = mysql_fetch_assoc($datatables)); ?>
					   </tbody>
					</table>
				</div>
			</center>
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
<?php
mysql_free_result($datatables);
?>
