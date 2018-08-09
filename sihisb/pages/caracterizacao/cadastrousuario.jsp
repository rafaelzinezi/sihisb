<%@ page language="java" contentType="text/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="br.gov.sp.saobernardo.sehab.loginBean.LoginBean" %>
<%  
LoginBean usuario = (LoginBean)session.getAttribute("user");  
%>  
<html>
<head>
	<title>Prefeitura de São Bernardo do Campo - Sihisb</title>

	
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta name="description" content="SIHISB - Planejamento e monitoramento da Política Habitacional no município" />
	<meta name="keywords" content="SEHAB SIHISP MAPA HABITAÇÃO MONITORAMENTO MAPEAMENTO" />
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
					<li><a href="#">ASSENTAMENTOS</a>
					
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
					<li><a href="#">CADASTRO <br/>DE FAMILIAS</a>
					
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
					 <li><a href="#">EMPREENDIMENTOS</a>

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
		<h1>SIHISB - Cadastro de Usuários</h1>
		
		<div id="erros" style="display: none;">
			Favor, verifique os campos destacados em <b>vermelho</b> no formulário.
		</div>

		<div id="wrapper">
			
			<div id="steps">
					<%if(request.getAttribute("update") != null){%>
					<form id="formElem" name="formElem" method="post" action="alterarCadastroUsuario">
						<input type="hidden" name="update" value="update">
					<%}else{%>
					<form id="formElem" name="formElem" method="post" action="cadastroLogin">
					<%}%>				
				
					<fieldset class="step">
						<legend>Dados do Usuário</legend>
							<p class="width100">
								<label for="nome_usuario" >Nome do Usuário</label> 
								<input type="text" id="nome_usuario" name="nome_usuario" class="required" AUTOCOMPLETE=OFF  value="<%=((LoginBean)request.getAttribute("cadastro")).getLogin() %>" />
							</p>
							<p class="width100">
								<label for="matricula" >Matrícula</label> 
								<input type="text" id="matricula" name="matricula" class="required" AUTOCOMPLETE=OFF  value="<%=((LoginBean)request.getAttribute("cadastro")).getMatricula() %>" />
							</p>
							<p class="width100">
								<label for="grupo" >Grupo de Usuário</label> 
								<select id="grupo" name="grupo" class="required">
									<option value="-1">Selecione</option>
									<option value="1" <%= ((LoginBean)request.getAttribute("cadastro")).getGrupo() == 1 ? "SELECTED" : ""%> >Administrador</option>
									<option value="2" <%= ((LoginBean)request.getAttribute("cadastro")).getGrupo() == 2 ? "SELECTED" : ""%> >Usuário Edição</option>
									<option value="3" <%= ((LoginBean)request.getAttribute("cadastro")).getGrupo() == 3 ? "SELECTED" : ""%> >Usuário</option>
									<option value="1" <%= ((LoginBean)request.getAttribute("cadastro")).getGrupo() == 4 ? "SELECTED" : ""%> >Administrador Usuario</option>
									
								</select>
							</p>
							<p class="width100">
								<label for="modulo" >Módulo de Acesso</label> 
								<select id="modulo" name="modulo" class="required">
									<option value="-1">Selecione</option>
								<option value="1" <%= ((LoginBean)request.getAttribute("cadastro")).getModulo() == 1 ? "SELECTED" : ""%> >BCDEF</option>
								<option value="2" <%= ((LoginBean)request.getAttribute("cadastro")).getModulo() == 2 ? "SELECTED" : ""%> >BCDE</option>
								<option value="3" <%= ((LoginBean)request.getAttribute("cadastro")).getModulo() == 3 ? "SELECTED" : ""%> >BCD</option>
								<option value="4" <%= ((LoginBean)request.getAttribute("cadastro")).getModulo() == 4 ? "SELECTED" : ""%> >BC</option>
								<option value="5" <%= ((LoginBean)request.getAttribute("cadastro")).getModulo() == 5 ? "SELECTED" : ""%> >B</option>
								<option value="6" <%= ((LoginBean)request.getAttribute("cadastro")).getModulo() == 6 ? "SELECTED" : ""%> >CDEF</option>
								<option value="7" <%= ((LoginBean)request.getAttribute("cadastro")).getModulo() == 7 ? "SELECTED" : ""%> >CDE</option>
								<option value="8" <%= ((LoginBean)request.getAttribute("cadastro")).getModulo() == 8 ? "SELECTED" : ""%> >CD</option>
								<option value="9" <%= ((LoginBean)request.getAttribute("cadastro")).getModulo() == 9 ? "SELECTED" : ""%> >C</option>
								<option value="10" <%= ((LoginBean)request.getAttribute("cadastro")).getModulo() == 10 ? "SELECTED" : ""%> >DEF</option>
								<option value="11" <%= ((LoginBean)request.getAttribute("cadastro")).getModulo() == 11 ? "SELECTED" : ""%> >DE</option>
								<option value="12" <%= ((LoginBean)request.getAttribute("cadastro")).getModulo() == 12 ? "SELECTED" : ""%> >D</option>
								<option value="13" <%= ((LoginBean)request.getAttribute("cadastro")).getModulo() == 13 ? "SELECTED" : ""%> >EF</option>
								<option value="14" <%= ((LoginBean)request.getAttribute("cadastro")).getModulo() == 14 ? "SELECTED" : ""%> >E</option>
								<option value="14" <%= ((LoginBean)request.getAttribute("cadastro")).getModulo() == 15 ? "SELECTED" : ""%> >F</option>
									
								</select>
							</p>
							 <p class="width100">
								<label for="email" >Email</label> 
								<input type="text" id="email" name="email" class="required" AUTOCOMPLETE=OFF value="<%=((LoginBean)request.getAttribute("cadastro")).getEmail() %>" />
							</p> 


							<%if(request.getAttribute("update") != null){%>
								 <p class="width100">
									<label for="senha" >Senha</label> 
									<input type="password" id="senha" name="senha" AUTOCOMPLETE=OFF value="<%=((LoginBean)request.getAttribute("cadastro")).getSenha() %>" readonly="true"/>
								</p> 
								 <p class="width100">
									<label for="novaSenha" >Nova Senha</label> 
									<input type="password" id="novaSenha" name="novaSenha" AUTOCOMPLETE=OFF value=""/>
								</p> 
								 <p class="width100">
									<label for="novaSenhaConf" >Repetir Nova Senha</label> 
									<input type="password" id="novaSenhaConf" name="novaSenhaConf" AUTOCOMPLETE=OFF value="" value=""/>
								</p> 

							<%}%>
					</fieldset>



					<fieldset class="step">
						<legend>Confirme</legend>
						<br /><br />
						<div style="width: 1000px;text-align:center; ">
							<h2>Confirmar cadastro Usuário?</h2>
						</div>
						<br />
						<center>
						<table border="0" style="width: 200px">
							<tr>
								<td><button id="registerButton" type="submit" onclick="return verificaSubmit()">Sim</button></td>
								<td><button type="Button" onClick="$('#aDadosGerais').click();">Não</button></td>
							</tr>
						</table>
						</center>
					</fieldset>

				</form>

			</div>
			
			<script>
			function verificaFormulario(){
			/*
				var pwd_nova		= $("#novaSenha").val();
				var pwd_confirma	= $("#novaSenhaConf").val();

				if(pwd_nova.length < 6){
					$("#novaSenha").focus();
					$("#aDadosGerais").click();
					return false;
				}

				if(pwd_confirma.length < 6){
					$("#novaSenhaConf").focus();
					$("#aDadosGerais").click();
					return false;
				}
				if(pwd_nova != pwd_confirma){
					$("#novaSenha").val("");
					$("#novaSenhaConf").val("");
					$("#nova_senha").focus();
					$("#aDadosGerais").click();
					return false;
				}
				return verificaSubmit();
			*/	
			}
			</script>

			<div id="navigation" style="display: none;">
				<ul>
					<li class="selected"><a id="aDadosGerais" href="#" onclick="location.href='#topo';">Dados Gerais</a></li>
					<li><a href="#topo" onclick="location.href='#topo'">Confirme</a></li>
				</ul>
			</div>

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
		<input type="hidden" id="modulo" value="<%=usuario.getModulo()%>"/>
<script>
	var grupo = $("#grupo").val();
	
	if (grupo==1||grupo==4)
	{	
		$(".administradorOnly").show();
		
	}
	else
		{
		
		$(".administradorOnly").hide();
		}

	</script>
	<script>
	var modulo = $("#modulo").val();
	if(modulo==2 || modulo==1)
		
	{	
		$(".administradorOnlyProj3").show();
	
	}
	else
		{
		
		$(".administradorOnlyProj3").hide();
		
		
		}
	</script>
	<script>
	var modulo = $("#modulo").val();
	if(modulo==3 || modulo==1)
	{	
		$(".administradorOnlyProj2").show();
	}
	else
		{
		
		$(".administradorOnlyProj2").hide();
		}
	</script>
	<script>
	var modulo = $("#modulo").val();
	if(modulo==4 || modulo==1)
	{	
		$(".usuariorenda").show();
	
	}
	else
		{
		$(".usuariorenda").hide();
		
		}
	</script>
	<script>
	var modulo = $("#modulo").val();
	if(modulo==5 || modulo==1)
	{	
		$(".usuariodemanda").show();
		
	}
	else
		{
		$(".usuariodemanda").hide();
				
		}
	</script>

</body>

</html>