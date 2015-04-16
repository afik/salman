
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
		alert('aaaa');
		var formCari = document.getElementById('search-form');
		var resultBuku = document.getElementById('search-result');

		resultBuku.style.display = 'block';
		formCari.style.display = 'none';

		var nama = document.getElementByName('formbuku').value;
		var pengarang = document.getElementByName('formpengarang').value;
		var kategori = document.getElementByName('formkategori').value;

		var xmlhttp;
	    if (window.XMLHttpRequest)
	    {// code for IE7+, Firefox, Chrome, Opera, Safari
	        xmlhttp=new XMLHttpRequest();
	    }
	    else
	    {// code for IE6, IE5
	        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	    }
	    xmlhttp.onreadystatechange=function()
	    {
	        if (xmlhttp.readyState==4 && xmlhttp.status==200)
	        {
	            document.getElementById("search-result").innerHTML=xmlhttp.responseText;
	        }
	    }
	    xmlhttp.open("GET","proses.php?state=1&buku="+nama+"&pengarang="+pengarang+"&kategori="+kategori,true);
	    xmlhttp.send();
	}

	function setCariActive() {
        alert('cariactive');
        var $tabAria = "tab_item-1";
        var $respTabs = document.getElementById('horizontalTab');
        $respTabs.find('.resp-tab-active').removeClass('resp-tab-active');
        $respTabs.find('.resp-tab-content-active').removeAttr('style').removeClass('resp-tab-content-active').removeClass('resp-accordion-closed');
        $respTabs.find("[aria-controls=" + $tabAria + "]").addClass('resp-tab-active');
        $respTabs.find('.resp-tab-content[aria-labelledby = ' + $tabAria + ']').addClass('resp-tab-content-active').attr('style', 'display:block');
    }

	function doCari() {
		alert('masuk');
		//showCariResult();
		// var nama = document.getElementByName('formbuku').value;
		// var pengarang = document.getElementByName('formpengarang').value;
		// var kategori = document.getElementByName('formkategori').value;

		// var xmlhttp;
	 //    if (window.XMLHttpRequest)
	 //    {// code for IE7+, Firefox, Chrome, Opera, Safari
	 //        xmlhttp=new XMLHttpRequest();
	 //    }
	 //    else
	 //    {// code for IE6, IE5
	 //        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	 //    }
	 //    xmlhttp.onreadystatechange=function()
	 //    {
	 //        if (xmlhttp.readyState==4 && xmlhttp.status==200)
	 //        {
	 //            document.getElementById("search-result").innerHTML=xmlhttp.responseText;
	 //        }
	 //    }
	 //    xmlhttp.open("GET","proses.php?state=1&buku="+nama+"&pengarang="+pengarang+"&kategori="+kategori,true);
	 //    xmlhttp.send();
	}
