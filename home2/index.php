<?php require_once "libs/libGeral.php"; ?>
<!DOCTYPE HTML>
<html lang="pt-br">
	<head>
		<title>TUATEC</title>
		<meta charset="UTF-8">
		<LINK REL="shortcut icon" HREF="imgs/icons/sbl_tuatec.png">
		<link rel="sitemap" type="application/xml" title="Sitemap" href="../sitemap.xml" />
		
		<!--
		<meta name="viewport" content="width=380">
		<link rel="stylesheet" href="estilo_mobile.css" media="(max-width:380px)">
		<link rel="stylesheet" href="estilo_geral.css" media="screen">
		-->
		<meta name="viewport" content="width=device-width, initial-scale=1.0">

		<link rel="stylesheet" href="estilo_geral.css">
		
		<script>
			/*
			@licstart  The following is the entire license notice for the
			JavaScript code in this page.

			Copyright (C) 2015 Lunovox ( ͡° ͜ʖ ͡°)

			The JavaScript code in this page is free software: you can
			redistribute it and/or modify it under the terms of the GNU
			General Public License (GNU GPL) as published by the Free Software
			Foundation, either version 3 of the License, or (at your option)
			any later version.  The code is distributed WITHOUT ANY WARRANTY;
			without even the implied warranty of MERCHANTABILITY or FITNESS
			FOR A PARTICULAR PURPOSE.  See the GNU GPL for more details.

			As additional permission under GNU GPL version 3 section 7, you
			may distribute non-source (e.g., minimized or compacted) forms of
			that code without the copy of the GNU GPL normally required by
			section 4, provided you include this license notice and a URL
			through which recipients can access the Corresponding Source.

			@licend  The above is the entire license notice
			for the JavaScript code in this page.
			*/
		</script>
		<script language="JavaScript" src="functions.js"></script>

		<script_ src="libs/tinymce/tinymce.min.js"></script>

		
		<script language="JavaScript">
			window.onload=function(){
				var $myQuery = getUrlVar("q");
				if($myQuery!=undefined && $myQuery!=""){
					mnuBuscar.style.display='none'; 
					mnuBuscador.style.display='block'; 
					txtQuery.value=$myQuery;
				}
			}
		</script>
	</head>
	<body style_="background:url(imgs/backgrounds/matrix-black-green.gif);">
		<center>
			<header>
				<nav>
					<?php require_once "menu.php"; ?>
				</nav>
				<a href="/">
					<img id="imgHeader"	src="imgs/header/header_1200x230px.png"/>
				</a>
			</header>
			<section>
				<?php 
					$sub=Propriedade("sub")!=""?Propriedade("sub"):"home";
					$url="subs/$sub.php";
					$url=file_exists($url)?$url:"subs/erro.php";
					require_once $url;
				?>
			</section>
			<aside><!-- Aqui vai ficar qualquer banner de propaganda --></aside>
			<br/><br/>
			<footer>
				Soluções de informática em nuvem para micro e pequenas empresas. <br/>
				<img src="imgs/selos/selo_tuatec_softwares.jpg" />
			</footer>
		</center>
	</body>
</html>
