<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>HOMOLOGAÇÃO - Prefeitura de São Bernardo do Campo - Sihisb</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="SIHISB - Planejamento e monitoramento da Política Habitacional no Município" />
<meta name="keywords" content="SEHAB SIHISP MAPA HABITAÇÃO MONITORAMENTO MAPEAMENTO" />
<META HTTP-EQUIV="CACHE-CONTROL" CONTENT="NO-CACHE">
<META HTTP-EQUIV="PRAGMA" CONTENT="NO-CACHE">

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
		

		<div id="menu">
			<ul id="lista-menu">
				<li><a href="index.html">HOME</a></li>
				<li>

					<a href="javascript: void()" onclick="abreBusca()" class="btMapa"/>

						<img src="images/bt_mapa3.png" class="btSearch2 align-left" /> MAPA

					</a>

					<div id="iframeBusca" style="display: none">

						<a href="/geoexplorer/composer/" target="_blank" class="colorBlue"><img src="images/ponteiro.png" /> ABRIR O MAPA</a>

						<hr style="margin: 10px 0 10px 0"/>

						Ou pesquisar:

						<iframe src="search_geoexplorer.html?home=true" frameborder="0" width="100%" height="300"></iframe>

					</div>

				</li>
<li>

					<a href="faq.jsp">DÚVIDAS FREQUENTES</a>

				</li>

				
			
			<li class="dropMenuDown"><a href="#"><img src="images/intranet.png" class="align-left"/></a>
					<ul class="homeLogin">
						<li>
							<div>
							<form method="post" action="validaLogin.do">
								<label>Matricula:</label>
								<input type="text" class="cxInput" name="nome"/>
								
								<label>Senha:</label>
								<input type="password" class="cxInput" name="senha"/>
								<br/><br/>
								<input type="submit" value="ACESSAR"  class="btOk"/>
								<a href="recuperarSenha.jsp" class="linkComun">Esqueceu a senha?</a>
							</form>
							</div>
						</li>
					</ul>
				</li>
				

			</ul>
		</div>
		<div style="clear: both;"></div>
	</div>
	
	
	<div id="content">
	<%if(request.getAttribute("mensagem") != null){%>
			<div id="secess">
				<%=request.getAttribute("mensagem") %>
			</div>
			<%}%>

		

		<h1>SIHISB - SÃO BERNARDO DO CAMPO</h1>

		<div id="wrapper">
		</div>

		<div id="rodape">
			Copyright © 2012 - SECRETARIA DE HABITAÇÃO DE SÃO BERNARDO DO CAMPO - homologação
				<br/>
				Rua Jacquey, 61 Rudge Ramos - CEP 09634 - 000
				<br/>
				PABX 4367 - 6400
		</div>
	</div>


</body>
<script type="text/javascript">
$(document).ready(function() {      
	if(navigator.appName.indexOf('Internet Explorer')>0){
		alert('AVISO:\nEsse site é melhor visualizado em Google Chrome ou Mozilla Firefox.');
	}
});
</script>
</html>