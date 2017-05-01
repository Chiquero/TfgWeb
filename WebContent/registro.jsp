<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<% 
 	String nextPage = (String)request.getAttribute("nextPage");
	System.out.println("D - Estoy en: " +nextPage);
	System.out.println();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>Registro - Muestra sensores</title>
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
<article id="registro">
	<form id="registrarse" method="POST" action="./LoginServlet">
    	<h1>Datos de registro</h1>
       	<p>
            <label for="billFName">Usuario:</label>
            <input id="billFName" name="user" type="text" required="true"><span class="alert">*</span>
        </p>
        <p>
            <label for="billLName">Contraseña:</label>
            <input id="billLName" name="pass" type="password" required="true"><span class="alert">*</span>
        </p>
		<p>
            <label for="billLName">Repita la contraseña:</label>
            <input id="billLName" name="password2" type="text" required="true"><span class="alert">*</span>
        </p>
        <p>
            <label for="billAddress1">Dirección:</label>
            <input id="billAddress1" name="billAddress1" type="text" required="true"><span class="alert">*</span>
        </p>
        <p>
            <label for="billAddress2">&nbsp;</label>
            <input id="billAddress2" name="billAddress2" type="text">
        </p>
        <p>
            <label for="billCity">Ciudad:</label>
            <input id="billCity" name="billCity" type="text" required="true"><span class="alert">*</span>
        </p>
        <p>
            <label for="billCountry">Pais:</label>
            <select id="billCountry" name="billCountry" onchange="javascript:startDisplay();" required="true">
                <option value="AR">Argentina</option>
                <option value="AW">Aruba</option>
                <option value="AU">Australia</option>
                <option value="BS">Bahamas</option>
                <option value="BB">Barbados</option>
                <option value="BE">Belgium</option>
                <option value="BM">Bermuda</option>
                <option value="BR">Brazil</option>
                <option value="CA">Canada</option>
                <option value="KY">Cayman Islands</option>
                <option value="CL">Chile</option>
                <option value="CN">China (People's Republic)</option>
                <option value="CX">Christmas Island</option>
                <option value="CR">Costa Rica</option>
                <option value="CY">Cyprus</option>
                <option value="DK">Denmark</option>
                <option value="EG">Egypt</option>
                <option value="FI">Finland</option>
                <option value="FR">France</option>
                <option value="DE">Germany</option>
                <option value="GR">Greece</option>
                <option value="GU">Guam</option>
                <option value="GT">Guatemala</option>
                <option value="HK">Hong Kong</option>
                <option value="IS">Iceland</option>
                <option value="IE">Ireland (Republic of Ireland)</option>
                <option value="IL">Israel</option>
                <option value="IT">Italy</option>
                <option value="JM">Jamaica</option>
                <option value="JP">Japan</option>
                <option value="KW">Kuwait</option>
                <option value="LU">Luxembourg</option>
                <option value="MW">Malawi</option>
                <option value="MX">Mexico</option>
                <option value="MC">Monaco</option>
                <option value="NL">Netherlands (Holland)</option>
                <option value="AN">Netherlands Antilles</option>
                <option value="NZ">New Zealand</option>
                <option value="NO">Norway</option>
                <option value="PA">Panama</option>
                <option value="PE">Peru</option>
                <option value="PH">Philippines</option>
                <option value="PL">Poland</option>
                <option value="PT">Portugal</option>
                <option value="PR">Puerto Rico</option>
                <option value="SA">Saudi Arabia</option>
                <option value="SG">Singapore</option>
                <option value="ZA">South Africa</option>
                <option value="KP">South Korea (Republic of Korea)</option>
                <option value="ES" selected="selected">España</option>
                <option value="SE">Sweden</option>
                <option value="CH">Switzerland</option>
                <option value="TW">Taiwan</option>
                <option value="TH">Thailand</option>
                <option value="TT">Trinidad and Tobago</option>
                <option value="TR">Turkey</option>
                <option value="AE">United Arab Emirates</option>
                <option value="GB">United Kingdom</option>
                <option value="US">United States</option>
                <option value="UM">United States Minor Outlying Islands</option>
                <option value="VE">Venezuela</option>
                <option value="VG">Virgin Islands (British)</option>
            </select>
        </p>
        <p>
            <label for="billZip">Código Postal</label>
            <input id="billZip" name="billZip" type="text" required="true"><span class="alert">*</span>
        </p>
        <p>
            <label for="email">Email:</label>
            <input id="email" name="email" type="email" required="true"><span class="alert">*</span>
        </p>
    	<p>
            <label for="phone">Teléfono:</label>
            <span style="display: none;" class="helper">Por favor introduce <strong>tu número de telefono</strong>.<br>We might need to contact you with regards to your order.</span>
            <input id="phone" name="phone" type="tel" required="true"><span class="alert">*</span>
        </p>
        <input type="hidden" name="thisPage" value="registro.jsp">
        <input type="hidden" name="nextPage" value="registro.jsp">
		<label>&nbsp;</label><button class="continue" onclick="javascript: submitform('registrarse')">Registrarse</button>
    </form>
</article>
<footer id="footer">
	<div class="wrapper">
		<br/>Avenida de la Universidad 30 28911 Leganés - Spain <a href="https://www.google.es/maps/place/Universidad+Carlos+III/@40.3305025,-3.7601445,16z/data=!4m2!3m1!1s0xd41898bcb3a2717:0xe3653d21e7158416" target="_blank" title="Localización Uc3m" >Mapa del sitio</a><br/><br/>
    	Contacto: Javier Rodríguez Chiquero <a href="mailto:soporte@talaveramica.es">100290709@alumnos.uc3m.es</a> <a href="privacidad.html">Términos &amp; Condiciones</a> <br/>
    </div>
</footer>
</body>
</html>