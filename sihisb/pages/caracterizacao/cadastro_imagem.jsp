<%@ page language="java" contentType="text/html"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">

<%@page import="br.gov.sp.saobernardo.sehab.bean.CaracterizacaoBean" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Prefeitura de São Bernardo do Campo - Sihisb</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="SIHISB - Planejamento e monitoramento da Política Habitacional no município" />
<meta name="keywords" content="SEHAB SIHISP MAPA HABITAÇÃO MONITORAMENTO MAPEAMENTO" />
<link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />
<link rel="stylesheet" href="/css/style.css" type="text/css"	media="screen" />


<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/sliding.form.js"></script>
<script type="text/javascript" src="js/global.js"></script>
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
				<li><a href="#">MAPA</a></li>
				<li><a href="#">GABINETE</a>
					<ul>
						<li>
							<div>
								<a href="localizarCaracterizacao">Consultar/Editar</a>
								<a href="cadastroCaracterizacao">Cadastrar</a>
							</div>
						</li>
					</ul>
				</li>
				<li><a href="#">HABITACIONAL</a>
					<ul>
						<li>
							<div>
								<a href="consultar.html">Consultar/Editar</a>
								<a href="cadastrohabitacional.jsp">Cadastrar</a>
							</div>
						</li>
					</ul>
				</li>
				<li>
					<div>BUSCA <input type="text"  placeholder="Procure por palavra-chave..." class="cxInput" size="25" onclick="this.value=''"/> 
					<input type="button" class="btSearch" value=""/>
					</div>
				</li>
			</ul>
		</div>
		<div style="clear: both;"></div>
	</div>
	
	<div id="content">
		<h1>SIHISB - Consulta de Assentamentos</h1>
		
		<div id="erros" style="display: none;">
			Favor, verifique os campos destacados em <b>vermelho</b> no formulário.
		</div>
		
		<div id="wrapper">
		<div id="steps">
		<form id="formElem" name="formElem" action="cadastroImagem" method="post" enctype="multipart/form-data">
			<fieldset class="step">
				<table border="0">
					<tr>
						<th><img src="images/arrow_more.png" /> <b>Nº Funep</b></th>
						<th><img src="images/arrow_more.png" /> <b>Nome</b></th>
					</tr>
					<tr>
						<td><%=request.getAttribute("codFunep") %></td>
						<td><%=request.getAttribute("nomeArea") %></td>
					</tr>
					
					<tr>
						<td colspan="2"><input type="file" name="file" size="150" /></td>
					</tr>					
					
					<tr>
						<td colspan="2"><input type="submit" value="Carregar Imagem" style="FONT-SIZE: small;"/></td>
					</tr>					
				</table>
			</fieldset>

		</form>					
		</div></div>
		
		<div id="rodape">
			Copyright © 2012 - SECRETARIA DE HABITAÇÃO DE SÃO BERNARDO DO CAMPO
			<br/>
			Praça Samuel Sabatini, 50 - CEP 09750-001
			<br/>
			PABX 4348-1000 - 1043
		</div>
	</div>

</body>

</html>