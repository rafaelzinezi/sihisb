<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">

<%@page import="br.gov.sp.saobernardo.sehab.loginBean.LoginBean"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Prefeitura de São Bernardo do Campo - Sihisb</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="SIHISB - Planejamento e monitoramento da Política Habitacional no município" />
<meta name="keywords" content="SEHAB SIHISP MAPA HABITAÇÃO MONITORAMENTO MAPEAMENTO" />
<META HTTP-EQUIV="CACHE-CONTROL" CONTENT="NO-CACHE">
<META HTTP-EQUIV="PRAGMA" CONTENT="NO-CACHE">
<link rel="stylesheet" href="css/style.css" type="text/css"	media="screen" />
<link rel="stylesheet" href="css/box.css" type="text/css"	media="screen" />
<link rel="stylesheet" href="css/jquery-ui-1.8.11.custom.css" type="text/css" />
<link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/sliding.form.js"></script>
<script type="text/javascript" src="js/global.js"></script>
<script type="text/javascript" src="js/box.js"></script>
<script type="text/javascript" src="js/jquery-ui.min.js"></script>
<%  
LoginBean usuario = (LoginBean)session.getAttribute("user"); 
if(usuario == null){
%>  
<% response.sendRedirect("index2.jsp");%>
<%}%>

<style type="text/css">
.B, .C, .D, .E, .F{display:none}
</style>
</head>

<body>
	<a name="topo"></a>
	<div id="header"></div>
	<div id="top-site">
		<div id="logo"></div>
		<div id="logo_sihisb"></div>

		<div style="position: absolute;right:200px;top:140px">Olá <%=usuario.getLogin() %></div>

	<div id="menu">
				<ul id="lista-menu">
					<li><a href="paginaInicial">HOME</a></li>
						<li class="administradorOnly"><a href="#">USUÁRIOS</a>
					<ul>
						<li>
							<div>
								<a href="localizaCadastroUsuario">Consultar/Editar</a>
								<a href="cadastroLogin">Cadastrar</a>
							</div>

							</li>
						</ul>
					</li>
					<li class="B"><a href="#">ASSENTAMENTOS</a>
					
						<ul>
							<li>
								<div>
								<a href="localizarCaracterizacao">Consultar/Editar</a>
								<form id="form1" name="form1" action="cadastroCaracterizacao" method="post">
								</form>
								</div>
							</li>
						
							
						</ul>
					</li>
					<li class="C" ><a href="#">CADASTRO <br/> FAMILIAS</a>
					
						<ul>
							<li>
								<div>
								<a href="localizarProjeto">Consultar/Editar</a>
								<form id="form2" name="form2" action="cadastroProjeto" method="get">
								<a href="#" onClick=document.form2.submit()>Cadastrar</a>
								</form>
								</div>
							</li>
						
							
						</ul>
					</li>


					<li class="F"><a href="#">EMPREENDIMENTOS</a>

					<ul>

						<li>

							<div>

								<a href="empLocalizaCad">Consultar/Editar</a>

								<a href="empCadastro">Cadastrar</a>

							</div>

						</li>

					</ul>

				</li>  
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

				<li><a href="index2.jsp" style="color: #b71111">SAIR</a></li>
			</ul>
		</div>
		<div style="clear: both;"></div>
	</div>
		
	
	

		<div id="content">

		<h1>SIHISB - SÃO BERNARDO DO CAMPO</h1>

		<div id="wrapper">


		</div>



		<div id="rodape">
			Copyright © 2012 - SECRETARIA DE HABITAÇÃO DE SÃO BERNARDO DO CAMPO
				<br/>
				Rua Jacquey, 61 Rudge Ramos - CEP 09634 - 000
				<br/>
				PABX 4367 - 6400
		</div>
	</div>

	<input type="hidden" id="grupo" value="<%=usuario.getGrupo() %>"/>
	<input type="hidden" id="modulo1" value="<%=usuario.getModulo1()%>"/>
	<script>
		var grupo = $("#grupo").val();
		
		if (grupo==1)
		{	
			$(".administradorOnly").show();
			
		}
		else
			{
			
			$(".administradorOnly").hide();
			}

	</script>
	<script>
		var modulo1 = $("#modulo1").val();
					
			
			$(modulo1).show();
		
		

	</script>
	


</body>



</html>