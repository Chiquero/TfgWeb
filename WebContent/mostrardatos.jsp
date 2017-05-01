<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>Mostrar datos</title>
<link rel="stylesheet" href="css/style.css" />
<link href='http://fonts.googleapis.com/css?family=Terminal+Dosis' rel='stylesheet' type='text/css'>
<!-- The below script Makes IE understand the new html5 tags are there and applies our CSS to it -->
<!--[if IE]>
  <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
</head>
<body>
<header>
	<div class="wrapper">
        <img src="images/logo-uc3m.png" alt="Logo Uc3m" style="width:280px;height:80px;">
    </div>
</header>

<article id="basket">		
			<h1>Busqueda de datos</h1>
       	<p>
            <label for="billFName">Indique el nombre de usuario:</label><br>
            <input id="billFName" name="billFName" type="text" required="true">
			<button class="continue2" type="button">Buscar</button>
        </p>
			<br><h1>Resultados de la busqueda</h1>
		<table width="100" border="1">
			<tr>
				<th scope="col" class="description">Usuario</th>
				<th scope="col" class="description">Acelerómetro</th>
				<th scope="col" class="description">Giroscopio</th>
			</tr>
		</table>
		<table>
			<tr>
				<td align="left" valign="top" class="description"><p>Vasija griega<br/></p>
				<td align="left" valign="top" class="description">
					<dl>
						<dt>ID de producto</dt>
						<dd>6442567</dd>
						<dt>Color:</dt>
						<dd>Light blue</dd>
						<dt>Tamaño:</dt>
						<dd>S</dd>
						<dt>Cantidad:</dt>
						<dd>1</dd>
					</dl>
				</td>
				<td align="right" valign="top" class="description">91&euro;</td>
			</tr>
		</table>

</article>
<footer id="footer">
	<div class="wrapper">
		<br/>Avenida de la Universidad 30 28911 Leganés - Spain <a href="https://www.google.es/maps/place/Universidad+Carlos+III/@40.3305025,-3.7601445,16z/data=!4m2!3m1!1s0xd41898bcb3a2717:0xe3653d21e7158416" target="_blank" title="Localización Uc3m" >Mapa del sitio</a><br/><br/>
    	Contacto: Javier Rodríguez Chiquero <a href="mailto:soporte@talaveramica.es">100290709@alumnos.uc3m.es</a> <a href="privacidad.html">Términos &amp; Condiciones</a> <br/>
    </div>
</footer>
</body>
</html>