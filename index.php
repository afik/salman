<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<head>
<title>Salman Reading Corner</title>
<link href="css/style.css" rel='stylesheet' type='text/css' />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Elegent Tab Forms,Login Forms,Sign up Forms,Registration Forms,News latter Forms,Elements"./>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
</script>
<script src="js/jquery.min.js"></script>
<script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
<script src="js/main.js"></script>
	<script type="text/javascript">
		$(document).ready(function () {
			$('#horizontalTab').easyResponsiveTabs({
				type: 'default', //Types: default, vertical, accordion           
				width: 'auto', //auto or any width like 600px
				fit: true   // 100% fit in a container
			});
		});
	   </script>
<!--webfonts-->
<link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,400,600,700,200italic,300italic,400italic,600italic|Lora:400,700,400italic,700italic|Raleway:400,500,300,600,700,200,100' rel='stylesheet' type='text/css'>
<!--//webfonts-->
</head>
<body>
<?php 
	include 'proses.php';

	$link = init();
	if (isset($_POST["buktam"])) {
		tambahPengunjung($link, $_POST["nama"], $_POST["asal"], $_POST["pekerjaan"]);
	}
	if (isset($_POST["daftar"])) {
		daftar($link, $_POST["nama"], $_POST["ktp"], $_POST["alamat"], $_POST["pekerjaan"], $_POST["hp"]);
	}
	

	closeConnection($link);
?>
<div class="main">
	<h1>Salman Reading Corner</h1>
	<div class="sap_tabs">	
		<div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
			<ul class="resp-tabs-list">
			  	<li class="resp-tab-item" aria-controls="tab_item-0" role="tab">
			  		<a href ="#tab1">
		  			<div class="top-img">
		  			<img src="images/tamu.png" alt=""/>
			  		</div>
			  		<span>Buku tamu</span>
			  		</a>
				</li>
				<li class="resp-tab-item" aria-controls="tab_item-1" role="tab" id="caritab">
					<a href="#tab2">
					<div class="top-img">
						<img src="images/search.png" alt=""/>
					</div>
					<span>Cari Buku</span>
					</a>
				</li>
			  	<li class="resp-tab-item" aria-controls="tab_item-2" role="tab">
			  		<a href="#tab3">
		  			<div class="top-img">
			  			<img src="images/daftar.png" alt=""/>
			  		</div>
			  		<span>Pendaftaran</span>
			  		</a>
			  	</li>
				<div class="clear"></div>
			</ul>		
			  <!---->		  	 
			<div class="resp-tabs-container">
				<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-0">
					<div class="facts" style="display:block" id="buktam-form">
						<div class="register">
							<form id="bukutamu" method="POST" action="index.php">
								<p>Nama*</p>
								<input type="text" class="text" value="" name="nama" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}" required>
								<p>Asal </p>
								<input type="text" class="text" value="" name="asal" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}" >
								<p>Pekerjaan </p>
								<input type="text" class="text" value="" name="pekerjaan" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}" >
								
								<div class="sign-up">
									<p class="keterangan">* harus diisi</p>
									<input type="submit" value="Submit" name="buktam">
									<input type="submit" value="Lihat Buku Tamu" onClick="javascript: showDaftarTamu()">
									<div class="clear"> </div>
								</div>
							</form>
						</div>
					</div>

					<div class="facts" style="display:none" id="daftar-tamu">
					
					</div>
				</div>		
				<div class="tab-2 resp-tab-content" aria-labelledby="tab_item-1">
			 		<div class="facts" style="display:block" id="search-form">
					 <div class="login">
						<form method="post" action="javascript:getCariForm()">
							<input type="text" class="text" id ="formbuku" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}" placeholder="Judul Buku"></input>
							
							<div class="find">
								<p> atau </p>
							</div>
							
							<input type="text" class="text" id ="formpengarang" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}" placeholder="Nama Pengarang"></input>

							<div class="find">
								<p> atau </p>
							</div>
							
							<input type="text" class="text" id="formkategori" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}" placeholder="Kategori" ></input>


							<div class="p-container">
								<div class="submit two">
									<input type="submit" value="Cari" name="cari" onclick="javascript:getCariForm()">
								</div>
								<div class="clear"> </div>
							</div>

						</form>
						</div>
					</div> 

					<div class="facts" style="display:none" id="search-result">
						
					</div>
				</div> 			        					 
			 	<div class="tab-3 resp-tab-content" aria-labelledby="tab_item-2">
				    <div class="facts">	
				     	<div class="register">
							<form class="sub" id="daftar" method="POST" action="index.php">
								<p>Nama* </p>
								<input type="text" value="" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}" name="nama" required>
								<p>No KTP* </p>
								<input type="text" value="" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}" name="ktp" id="ktpform" required>
								<p>Alamat* </p>
								<input type="text" value="" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}" name="alamat" required>
								<p>Pekerjaan/Sekolah* </p>
								<input type="text" value="" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}" name="pekerjaan" required>
								<p>No HP* </p>
								<input type="text" value="" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}" name="hp" id="hpform" required>
								
								<div class="sign-up">
									<p class="keterangan" id="keterangan">* harus diisi</p>
									<input type="submit" value="Daftar" name="daftar">
								</div>
							</form>
						</div>
					</div>
	         	</div>   
	        </div>
	    </div>
	</div>
	<!--start-copyright-->
	<div class="copy-right">
		<div class="wrap">
			<p>Copyright Salman Reading Corner; 2015 | Design by <a href="http://w3layouts.com">W3layouts</a></p>
		</div>
	</div>
	<!--//end-copyright-->
</div>
</body>
</html>