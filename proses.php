<?php
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

<script type="text/javascript">
	function showDaftarTamu() {
		var formTamu = document.getElementById('buktam-form');
		var daftarTamu = document.getElementById('daftar-tamu');

		daftarTamu.style.display = 'block';
		formTamu.style.display = 'none';
	}

	function showFormTamu() {
		var formTamu = document.getElementById('buktam-form');
		var daftarTamu = document.getElementById('daftar-tamu');

		daftarTamu.style.display = 'none';
		formTamu.style.display = 'block';
	}

	function showCariForm() {
		var formCari = document.getElementById('search-form');
		var resultBuku = document.getElementById('search-result');

		resultBuku.style.display = 'none';
		formCari.style.display = 'block';
	}

	function showCariResult() {
		var formCari = document.getElementById('search-form');
		var resultBuku = document.getElementById('search-result');

		resultBuku.style.display = 'block';
		formCari.style.display = 'none';
	}

	function setActiveTab(tab) {
		var hash = '#tab'.tab,
	    lis = $("ul.resp-tabs-list > li");
		lis.removeClass("resp-tab-active");
		$("a[href='" + hash + "']").addClass("resp-tab-active");
		alert(hash);
	}

</script>