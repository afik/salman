<?php
	include 'DBConfig.php';

	if(isset($_GET['state'])) 
	{
		if ($_GET['state']==1) //buat cari
		{
			$link = init();
			$row = cari($link, $_GET['buku'], $_GET['pengarang'], $_GET['kategori']);
			
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
			for($i = 1; $i<count($row)+1; $i++) {
					if($row[$i]['status_pinjam']==1){
						$status = 'Dipinjam';
					}
					else {
						$status = 'Tersedia';
					}
					echo'<tr>';
						echo'<td>'.$i.'</td>';
						echo'<td>'.$row[$i]['judul'].'</td>';
						echo'<td>'.$row[$i]['penulis'].'</td>';
						echo'<td>Rak '.$row[$i]['lokasi'].'</td>';
						echo'<td>'.$status.'</td>';
					echo'</tr>';
			}
				echo'</tbody>';
			echo'</table>';

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
		echo '<script> setActiveTab(3) </script>';
	}

	function cari($link, $buku, $pengarang, $kategori){
		if ($buku =! "" && $pengarang == "" && $kategori == ""){
			$query = "SELECT * FROM buku WHERE judul LIKE '%$judul%'";
		}
		else if ($buku == "" && $pengarang =! "" && $kategori == ""){
			$query = "SELECT * FROM buku WHERE pengarang LIKE '%$pengarang%'";
		}
		else if ($buku == "" && $pengarang == "" && $kategori =! ""){
			$query = "SELECT * FROM buku WHERE kategori LIKE '%$kategori%'";
		}
		else if ($buku == "" && $pengarang == "" && $kategori =! ""){
			$query = "SELECT * FROM buku WHERE pengarang LIKE '%$pengarang%' AND judul like '%$judul%'";
		}
		else if ($buku == "" && $pengarang =! "" && $kategori == ""){
			$query = "SELECT * FROM buku WHERE kategori LIKE '%$kategori%' AND judul like '%$judul%'";
		}
		else if ($buku =! "" && $pengarang == "" && $kategori == ""){
			$query = "SELECT * FROM buku WHERE kategori LIKE '%$kategori%' AND pengarang like '%$pengarang%'";
		}
		else if ($buku == "" && $pengarang == "" && $kategori == ""){
			$query = "SELECT * FROM buku WHERE kategori LIKE '%$kategori%' AND pengarang like '%$pengarang%' AND buku like '%$judul%'";
		}

		$result = mysqli_query($link,$query);
        while($row[] = mysqli_fetch_array($result));
        
        return $row;

	}

?>