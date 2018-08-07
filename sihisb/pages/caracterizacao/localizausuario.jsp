<%@ page language="java" contentType="text/html"%>
    
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">

<%@page import="br.gov.sp.saobernardo.sehab.bean.CaracterizacaoBean" %>
<%@page import="br.gov.sp.saobernardo.sehab.loginBean.LoginBean" %>
<%@page import="java.util.ArrayList" %>
<%  
LoginBean usuario = (LoginBean)session.getAttribute("user");  
LoginBean grupo = (LoginBean)session.getAttribute("grupo");
LoginBean modulo = (LoginBean)session.getAttribute("modulo");
%>  
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Prefeitura de São Bernardo do Campo - Sihisb</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="SIHISB - Planejamento e monitoramento da Política Habitacional no município" />
<meta name="keywords" content="SEHAB SIHISP MAPA HABITAÇÃO MONITORAMENTO MAPEAMENTO" />
<META HTTP-EQUIV="CACHE-CONTROL" CONTENT="NO-CACHE">
<META HTTP-EQUIV="PRAGMA" CONTENT="NO-CACHE">
<link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />
<link rel="stylesheet" href="css/style.css" type="text/css"	media="screen" />
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
							</form>
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

				<li><a href="index2.jsp" style="color: #b71111">SAIR</a></li>
			</ul>
		</div>
		<div style="clear: both;"></div>
	</div>
		
	<div id="content">
		<h1>SIHISB - Usuários</h1>
		
		<div id="erros" style="display: none;">
			Favor, verifique os campos destacados em <b>vermelho</b> no formulário.
		</div>
		
			<%if(request.getAttribute("mensagem") != null){%>
			<div id="inf">
				<%=request.getAttribute("mensagem") %>
			</div>
			<%}%>		
		
		<div id="wrapper">
		<div id="steps">
		<form id="formElem" name="formElem" action="localizaCadastroUsuario" method="post">
			<input type="hidden" name="codigo" value="">
			<fieldset class="step">
				<legend>Consultar</legend>
				<p class="width100">
					<label for="nome_usuario" >Nome Usuário</label> 
					<input id="nome_usuario" name="nome_usuario" size="50" value="<%=request.getAttribute("nome_usuario") %>"/>
				</p>
				
				<p class="width100">
					<label for="matricula" >Matricula do Usuário</label> 
					<input id="matricula" name="matricula" value="<%=request.getAttribute("matricula") %>"/>
				</p>
				
				
				<div><button id="registerButton" type="submit" style="margin: 0 0 40px 60px">Consultar</button></div>
				<legend>Resultado</legend>
				<table border="0">
					<tr>
						<th><img src="images/arrow_more.png" /> <b>Matricula</b></th>
						<th><img src="images/arrow_more.png" /> <b>Nome do Usuário</b></th>
						<th width="60"><img src="images/arrow_more.png" /> <b>Ação</b></th>
					</tr>
					<%
						if(request.getAttribute("usuarioList") != null){
							String classCss = "";
							
							if(classCss.equals("")){
								classCss = "par";
							}else{
								classCss = "";
							}
							
							ArrayList<LoginBean> login = (ArrayList)request.getAttribute("usuarioList");
							
							for(int i=0; i < login.size(); i++)
							{							
					%>
					<tr <%= classCss %>>
						<td><%= login.get(i).getMatricula() %></td>
						<td><%= login.get(i).getLogin() %></td>
						<td>
						<script>
	function editarCaracterizacao(codigo){
		document.forms.formElem.action = "alterarCadastroUsuario";
		document.forms.formElem.codigo.value = codigo;
		document.forms.formElem.submit();
	};
		
</script>
							
							<a href="javascript:editarCaracterizacao('<%=login.get(i).getMatricula() %>')"><img src="images/edit-icon.gif" title="Editar Cadastro"/></a>
						</td>
					</tr>
					<%}}%>
				</table>
			</fieldset>
		</form>
			
			
		</div></div>
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
	

</body>

</html>