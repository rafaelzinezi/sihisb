﻿<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Prefeitura de São Bernardo do Campo - Sihisb</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="SIHISB - Planejamento e monitoramento da Política Habitacional no município" />
<meta name="keywords" content="SEHAB SIHISP MAPA HABITAÇÃO MONITORAMENTO MAPEAMENTO" />
<link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />
<link rel="stylesheet" href="css/style.css" type="text/css"	media="screen" />
<link rel="stylesheet" href="css/box.css" type="text/css"	media="screen" />
<link rel="stylesheet" href="css/jquery-ui-1.8.11.custom.css" type="text/css" />

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/sliding.form.js"></script>
<script type="text/javascript" src="js/global.js"></script>
<script type="text/javascript" src="js/box.js"></script>
<script type="text/javascript" src="js/jquery-ui.min.js"></script>

</head>

<body>
	<a name="topo"></a>
	<div id="header"></div>
	<div id="top-site">
		<div id="logo"></div>
		<div id="logo_sihisb"></div>
		<div style="clear: both;"></div>
	</div>
	
	
	<div id="content">
	<%if(request.getAttribute("mensagem") != null){%>
			<div id="secess">
				<%=request.getAttribute("mensagem") %>
			</div>
			<%}%>

		<h1>SIHISB - SÃO BERNARDO DO CAMPO</h1>
		<div id="login">
			<form method="post" action="validaLogin.do">
				<label>Matricula:</label>
				<input type="text" class="cxInput" name="nome"/>
				<br>
				<label>Senha:</label>
				<input type="password" class="cxInput" name="senha"/>
				<br><br>
				<input type="submit" value="ACESSAR"  class="btOk"/>
				<a href="recuperarSenha.jsp" class="linkComun">Esqueceu a senha?</a>
			</form>
		</div>
		<div id="wrapper">

		
	<h1>Ocorreu um erro, entre no sistema novamente, caso o erro persista entre em contato com o Suporte.</h1>
		


			

		</div>

		<div id="rodape">
		Copyright © 2012 - SECRETARIA DE HABITAÇÃO DE SÃO BERNARDO DO CAMPO
				<br/>
				Rua Jacquey, 61 Rudge Ramos - CEP 09634 - 000
				<br/>
				PABX 4367 - 6400
		</div>
	</div>

</body>

</html>