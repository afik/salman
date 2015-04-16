<?php
	function init(){
		$link=mysqli_connect("localhost","root","","salman");
        // Cek koneksi ke database
        if (mysqli_connect_errno()) {
          echo "Failed to connect to MySQL: " . mysqli_connect_error();
        }
        return $link;
	}

	function closeConnection($link){
		mysqli_close($link);
	}
?>
