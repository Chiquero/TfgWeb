<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <% 
 	String nextPage2 = (String)request.getAttribute("nextPage");
	String thisPage2 = (String)request.getAttribute("thisPage");
	System.out.println("C - Estoy en: " +nextPage2);
	System.out.println("C - Estoy en: " +thisPage2);
	System.out.println();
	%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
   	<meta charset="utf-8">
	<title>Iniciar Sesión - Muestra sensores</title>
	<link rel="stylesheet" href="css/style.css" />

<link href='http://fonts.googleapis.com/css?family=Terminal+Dosis' rel='stylesheet' type='text/css'>
 </head>
<body>
	<header>
	<div class="wrapper">
        <img src="images/logo-uc3m.png" alt="Logo Uc3m" style="width:280px;height:80px;">
    </div>
	</header>
<article id="login">
	<form id="iniciarSesion" method="POST" action="./LoginServlet">
    	<h1>Iniciar Sesión</h1>
        <p><label for="email">Usuario</label>
        <input type="user" name="user" /></p>
        <p><label for="pasword">Password</label>
        <input type="password" name="password" /></p>
        <input type="hidden" name="thisPage" value="login.jsp">
        <input type="hidden" name="nextPage" value="login.jsp">
        <p><button class="continue" onclick="javascript: submitform('iniciarSesion')">Entrar</button>
    </form>
    <section>
    	<h2>¿Eres nuevo usuario?</h2>
        <p><button class="continue" type="button" onclick="location.href='registro.jsp'">Registrate</button></p>
    </section>
</article>
<footer id="footer">
	<div class="wrapper">
		<br/>Avenida de la Universidad 30 28911 Leganés - Spain <a href="https://www.google.es/maps/place/Universidad+Carlos+III/@40.3305025,-3.7601445,16z/data=!4m2!3m1!1s0xd41898bcb3a2717:0xe3653d21e7158416" target="_blank" title="Localización Uc3m" >Mapa del sitio</a><br/><br/>
    	Contacto: Javier Rodríguez Chiquero <a href="mailto:soporte@talaveramica.es">100290709@alumnos.uc3m.es</a> <a href="privacidad.html">Términos &amp; Condiciones</a> <br/>
    </div>
</footer>
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="js/bootstrap.min.js"></script>
 </body>
</html>
