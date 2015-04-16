<?php
	include 'DBConfig.php';

	if(isset($_GET['state'])) 
	{
		if ($_GET['state']==1) //buat cari
		{
			$link = init();
			$query = cari($_GET['buku'], $_GET['pengarang'], $_GET['kategori']);
			
			$result = mysqli_query($link,$query);

			if($result === FALSE) { 
				die(mysql_error()); // TODO: better error handling
			}
			if (mysqli_num_rows($result) > 0) {	
				echo '<h2> Hasil pencarian untuk : '.$_GET['buku']." ".$_GET['pengarang']." ".$_GET['kategori'].'</h2>';
				echo '<table class="table-result">';
					echo '<thead>';
						echo '<tr>';
							echo '<th style="width: 5%">No</th>';
							echo '<th style="width: 30%">Judul Buku </th>';
							echo '<th style="width: 30%">Pengarang </th>';
							echo '<th style="width: 20%">Lokasi </th>';
							echo '<th style="width: 15%">Status </th>';
						echo '</tr>';
					echo'</thead>';
					echo'<tbody>';	
				$j = 1;	
				while($row = mysqli_fetch_assoc($result)) {
						if($row['status_pinjam']==1){
							$status = 'Dipinjam';
						}
						else {
							$status = 'Tersedia';
						}
						echo'<tr>';
							echo'<td>'.$j.'</td>';
							echo'<td>'.$row['judul'].'</td>';
							echo'<td>'.$row['penulis'].'</td>';
							echo'<td>Rak '.$row['lokasi'].'</td>';
							echo'<td>'.$status.'</td>';
						echo'</tr>';
						$j++;
				}
					echo'</tbody>';
				echo'</table>';

			}
			else {
				echo '<h2> Tidak ditemukan pencarian untuk : '.$_GET['buku']." ".$_GET['pengarang']." ".$_GET['kategori'].'</h2>';
			}				
			echo'<div class="p-container">';
					echo'<div class="submit two">';
						echo'<input type="submit" onclick="javascript: showCariForm()" value="Kembali" >';
					echo'</div>';
					echo'<div class="clear"> </div>';
				echo'</div>';
			closeConnection($link);
		}		
	}

	function tambahPengunjung($link, $nama, $alamat, $pekerjaan) {
		$query = "INSERT INTO pengunjung(nama, alamat, pekerjaan)
					VALUES ('$nama', '$alamat', '$pekerjaan')";
		if (mysqli_query($link, $query)) {
		    //echo '<script> alert("asads")</script>';
		} else {
		    //echo '<script> alert("error")</script>';
		}
	}

	function daftar($link, $nama, $ktp, $alamat, $pekerjaan, $hp) {
		$query = "INSERT INTO anggota(nama, alamat, pekerjaan, nomor_ktp, nomor_hp, status_aktif)
					VALUES ('$nama', '$alamat', '$pekerjaan', '$ktp', '$hp', '1')";
		if (mysqli_query($link, $query)) {
		    // echo '<script> alert("asads")</script>';
		} else {
		    // echo '<script> alert("error")</script>';
		}
	}

	function cari($buku, $pengarang, $kategori){
		if ($buku != "" && $pengarang == "" && $kategori == ""){
			$query = "SELECT * FROM buku WHERE judul LIKE '%".$buku."%'";
		}
		else if ($buku == "" && $pengarang != "" && $kategori == ""){
			// echo '2';
			$query = "SELECT * FROM buku WHERE penulis LIKE '%$pengarang%'";
		}
		else if ($buku == "" && $pengarang == "" && $kategori != ""){
			// echo '3';
			$query = "SELECT * FROM buku WHERE klasifikasi LIKE '%$kategori%'";
		}
		else if ($buku == "" && $pengarang == "" && $kategori != ""){
			// echo '4';
			$query = "SELECT * FROM buku WHERE penulis LIKE '%$pengarang%' AND judul like '%$buku%'";
		}
		else if ($buku == "" && $pengarang != "" && $kategori == ""){
			// echo '5';
			$query = "SELECT * FROM buku WHERE klasifikasi LIKE '%$kategori%' AND judul like '%$buku%'";
		}
		else if ($buku != "" && $pengarang == "" && $kategori == ""){
			// echo '6';
			$query = "SELECT * FROM buku WHERE klasifikasi LIKE '%$kategori%' AND penulis like '%$pengarang%'";
		}
		else if ($buku != "" && $pengarang != "" && $kategori != ""){
			// echo '7';
			$query = "SELECT * FROM buku WHERE klasifikasi LIKE '%$kategori%' AND penulis like '%$pengarang%' AND judul like '%$buku%'";
		}
		else {
			$query = "SELECT * from buku";
		}

		return $query;

		
	}

?>