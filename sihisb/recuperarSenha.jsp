<%@ page language="java" contentType="text/html"%>
    
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

 <%@ page import="br.gov.sp.saobernardo.sehab.loginBean.LoginBean" %>
<html>

<head>

	<title>Prefeitura de S�o Bernardo do Campo - Sihisb</title>




	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta name="description" content="SIHISB - Planejamento e monitoramento da Pol�tica Habitacional no munic�pio" />
	<meta name="keywords" content="SEHAB SIHISP MAPA HABITA��O MONITORAMENTO MAPEAMENTO" />
	<META HTTP-EQUIV="CACHE-CONTROL" CONTENT="NO-CACHE">
<META HTTP-EQUIV="PRAGMA" CONTENT="NO-CACHE">
	<link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />




	<link rel="stylesheet" href="css/style.css" type="text/css"	media="screen" />

	<link rel="stylesheet" href="css/print.css" type="text/css"	media="print" />

	<link rel="stylesheet" href="css/jquery.alerts.css" type="text/css"	media="screen" />

	<link rel="stylesheet" href="css/box.css" type="text/css"	media="screen" />



	<script type="text/javascript" src="js/jquery.min.js"></script>

	<script type="text/javascript" src="js/sliding.form.js"></script>

	<script type="text/javascript" src="js/alerts.js"></script>

	<script type="text/javascript" src="js/global.js"></script>

	<script type="text/javascript" src="js/jquery.ui.draggable.js"></script>

	<script type="text/javascript" src="js/input.js"></script>

	<script type="text/javascript" src="js/box.js"></script>

	<script type="text/javascript" src="js/jquery.wymeditor.min.js"></script>

	

	

	<link rel="stylesheet" type="text/css" href="akzhan/lib/blueprint/screen.css" media="screen, projection" />

	<link rel="stylesheet" type="text/css" href="akzhan/lib/blueprint/print.css" media="print" />

	<!--[if lt IE 8]><link rel="stylesheet" href="akzhan/lib/blueprint/ie.css" type="text/css" media="screen, projection" /><![endif]-->

	<link rel="stylesheet" href="akzhan/jquery.wysiwyg.css" type="text/css"/>

	<script type="text/javascript" src="akzhan/lib/jquery.js"></script>

	<script type="text/javascript" src="akzhan/jquery.wysiwyg.js"></script>

	<script type="text/javascript" src="akzhan/controls/wysiwyg.image.js"></script>

	<script type="text/javascript" src="akzhan/controls/wysiwyg.link.js"></script>

	<script type="text/javascript" src="akzhan/controls/wysiwyg.table.js"></script>

</head>



<body>

	<a name="topo"></a>

	<div id="header"></div>

	<div id="top-site">

		<div id="logo"></div>
				<div id="logo_sihisb"></div>
		

		<div id="menu">

			<ul id="lista-menu">

				<li><a href="index.html">HOME</a></li>
				<li>

					<a href="javascript: void()" onclick="abreBusca()" class="btMapa">

						<img src="images/bt_mapa3.png" class="btSearch2 align-left" /> MAPA

					</a>

					<div id="iframeBusca" style="display: none">

						<a href="/geoexplorer/composer/" target="_blank" class="colorBlue"><img src="images/ponteiro.png" /> ABRIR O MAPA</a>

						<hr style="margin: 10px 0 10px 0"/>

						Ou pesquisar:

						<iframe src="search_geoexplorer.html?home=true" frameborder="0" width="100%" height="300"></iframe>

					</div>

				</li>

			</ul>
		</div>
		<div style="clear: both;"></div>
	</div>

	

	<div id="content">

		<h1>SIHISB - Recuperar Senha</h1>

		

		<div id="erros" style="display: none;">

			Favor, verifique os campos destacados em <b>vermelho</b> no formul�rio.

		</div>

	

		<div id="wrapper">

			<div id="steps">

				<form  method="post" action="recuperarSenha" >

					<fieldset class="step">

						<legend>Recuperar Senha</legend>
						
						<%if(request.getAttribute("msg") != null){%>
						<div id="secess">
						<%=request.getAttribute("msg") %>
						</div>
						<%}%>

							<p class="width100" style="padding: 20px 0 20px 0">Digite no campo abaixo o e-mail que voc� cadastrou anteriormente para que sua senha seja enviada para seu e-mail.</p>

							<p class="width100" style="margin-top: 20px">

								<label for="email" >E-mail</label> 

								<input type="text" id="email" name="email" class="required" tabindex="1" />

							</p>

							<div><button id="registerButton" type="submit" style="margin: 0 0 40px 60px">ENVIAR</button></div>

							<script type="text/javascript">

							$("#registerButton").click(function() {      

								var email_recupera = $("#email").val();

								if(email_recupera == '')

								{

									alert('Preencha o campo email.');

									$("#email").focus();

									return false;

								}

								return true;

							});

							</script>

					</fieldset>





				</form>



			</div>



			



		</div>

		

		<div id="rodape">

		Copyright � 2012 - SECRETARIA DE HABITA��O DE S�O BERNARDO DO CAMPO
				<br/>
				Rua Jacquey, 61 Rudge Ramos - CEP 09634 - 000
				<br/>
				PABX 4367 - 6400
		</div>

	</div>

</body>



</html>