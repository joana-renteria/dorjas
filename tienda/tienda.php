<!DOCTYPE html>
<html lang="es">

<head>
	<title>Drogas</title>
	<link rel="stylesheet" type="text/css" href="../css/estilos.css" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta charset="utf-8">
	<!-- Aqui ponemos el logo de la web en la barra de pestañas -->
	<link rel="shortcut icon" href="imgs/logo.jpg">
</head>

<body>
        <header>
            <!-- Aqui creamos un div que va a hacer de contenedor de todo el contenido del header -->
            <div class="cont">
                <!-- Aqui ira todo lo que va a ser el menu del header -->
                <div class="head">
                    <ul>
                        <li><a class="none" href="../index.html"><img src="../imgs/logo.jpg" width="140" alt="logo"></a></li>
                        <li class="dropdown"><a>Articulos</a>
                            <div class="dropdown-content">
                                <a href="../index.html">Drogas</a>
                                <a href="../articulos/cultura.html">Cultura</a>
                            </div>
                        </li>
                        <li><a href="../articulos/QuienesSomos.html">Quienes somos</a></li>
                        <li><a href="tienda/tienda.html">Tienda</a></li>
                        <li class="derecha"><a href="../tienda/login.html">Log In</a></li>
                    </ul>
                </div>
                <!-- Por ultimo esto sera el buscador que hemos puesto en el header -->
                <div class="right" >
                    <input type="search" id="site-search" name="q">
                    <button>Search</button>;
                </div>
            </div>
        </header>
	<article>
		<!-- Aqui de nuevo creamos un div que va a hacer de contenedor de todo el contenido del article -->
		<div class="cont">
			<?php
			
			$xml = new DOMDocument;
			
			$xml->load('../xml/PericoYKetaXML.xml');
			
			$xsl = new DOMDocument;
			
			$xsl->load('../transformaciones/productos.xsl');
			
			$proc = new XSLTProcessor;
			
			$proc->importStyleSheet($xsl);
			
			echo $proc->transformToXML($xml);
			
			?>
		</div>
	</article>
	<footer>
		<!-- Aqui de nuevo creamos un div que va a hacer de contenedor de todo el contenido del footer -->
		<div class="cont">
			<!-- En este div ponemos una referencia a la pagina de quienes somos -->
			<div>
				<h4>PERICO Y KETA</h4>
				<ul>
					<li><a href="articulos/QuienesSomos.html">Quienes somos</a></li>
					<li><a href="articulos/QuienesSomos.html#efectos">Horario</a></li>
					<li><a href="articulos/QuienesSomos.html#duracion">Voluntariado</a></li>
				</ul>
			</div>
			<div>
				<!-- Aqui un link nos mandara a la pagina de la lista de drogas y orto sera un link 
				externo a una pagina del gobierno sobre las leyes de las drogas -->
				<h4>INFODROGAS</h4>
				<ul>
					<li><a href="index.html">Sustancias</a></li>
					<li><a href="https://pnsd.sanidad.gob.es/pnsd/legislacion/docs/LE_SISTEMA.pdf">Leyes y drogas</a>
					</li>
				</ul>
			</div>
			<!-- Aqui un link a la pagina de ArticulosCientificos -->
			<div class="padding">
				<h4>RECURSOS</h4>
				<ul>
					<li><a href="articulosCientificos.html">Articulos Cientificos</a>
					<li>
				</ul>
			</div>
			<!-- Por ultimo aqui se muestra una imagen de el logo de la pagina junto con un pequeño 
			texto y un mapa de imagenes -->
			<div>
				<img class="logo" alt="logo" src="imgs/logo.jpg">

				<p>©2021 Perico y Keta</p>

				<img src="imgs/logos1.png" alt="logos" usemap="#image-map">

				<!-- Aqui cada "title" representa el link de cada apartado del mapa -->
				<map name="image-map">
					<area alt="facebook" title="facebook" href="https://www.facebook.com/" coords="19,17,13"
						shape="circle">
					<area alt="twitter" title="twitter" href="https://twitter.com/home?lang=es" coords="49,18,13"
						shape="circle">
					<area alt="instagram" title="instagram" href="https://www.instagram.com/?hl=es" coords="80,18,13"
						shape="circle">
					<area alt="youtube" title="youtube" href="https://www.youtube.com/" coords="110,18,13"
						shape="circle">
				</map>
			</div>
		</div>
	</footer>
</body>

</html>
