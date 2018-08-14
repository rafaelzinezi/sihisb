<%@ page language="java" contentType="text/html"%>
    
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

 <%@ page import="br.gov.sp.saobernardo.sehab.loginBean.LoginBean" %>
<html>

<head>

	<title>Prefeitura de São Bernardo do Campo - SIHISB</title>



	
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





	
	<%  
LoginBean usuario = (LoginBean)session.getAttribute("user"); 
if(usuario == null){
%>  
<% response.sendRedirect("index2.jsp");%>
<%}%>

</head>



<body>
	<a name="topo"></a>
	<div id="header"></div>
	<div id="top-site">
		<div id="logo"></div>
				<div id="logo_sihisb"></div>
		
		<div style="position: absolute;right:200px;top:140px">Olá<%=usuario.getLogin() %></div>
		<div id="menu">
			<ul id="lista-menu">
				<li><a href="paginaInicial">HOME</a></li>

				<li><a href="index2.jsp" style="color: #b71111">SAIR</a></li>
			</ul>
		</div>
		<div style="clear: both;"></div>
	</div>
		
<div id="content">

		<h1>SIHISB - Alterar Senha</h1>	
		<div id="erros" style="display: none;">
			Favor, verifique os campos destacados em <b>vermelho</b> no formulário.
		</div>
		
			<%if(request.getAttribute("msg") != null){%>
			<div id="inf">
				<%=request.getAttribute("msg") %>
			</div>
			<%}%>		
		
	<div id="wrapper">
			<div id="steps">
				<form id="formElem" name="formElem" method="get" action="novaSenha">

					<fieldset class="step">
						<legend>Alterar Senha</legend>
						<p class="width100" style="padding:20px 0 20px 0">Preencha os campos abaixo para alterar a senha.</p>
						<p class="width100" style="margin-top:20px">
							<label>Senha Antiga</label> 
							<input type="hidden" name="matricula" value="<%=usuario.getMatricula()%>">
							<input type="password" name="senha_antiga" id="senha_antiga" value="<%=((LoginBean)request.getAttribute("cadastro")).getSenha() %>">
						</p>

						<p class="width100">
							<label>Nova Senha</label> 
							<input type="password" name="nova_senha" id="nova_senha" >Minimo 6 caracteres.</input>
						</p>

						<p class="width100">
							<label>Confirma Senha</label> 
							<input type="password" name="confirma_senha" id="confirma_senha" value="<%=((LoginBean)request.getAttribute("cadastro")).getSenha() %>">Minimo 6 caracteres.</input>
						</p>

						<div>
							<button id="registerButton" type="submit" style="margin: 0 0 40px 60px">ENVIAR</button>
						</div>
						
						<script type="text/javascript">

						$("#registerButton").click(function() {      
							var pwd_antiga		= $("#senha_antiga").val();
							var pwd_nova		= $("#nova_senha").val();
							var pwd_confirma	= $("#confirma_senha").val();
							
							if(pwd_antiga == '')
							{
								alert('Preencha o campo Senha Antiga.');
								$("#senha_antiga").focus();
								return false;
							}
							if(pwd_nova== '' || pwd_nova.length < 6)
								{
									alert('A senha deve ter no minimo 6 caracteres');
									$("#nova_senha").focus();
									return false;
								}

							if(pwd_nova == '')
							{
								alert('Preencha o campo Nova Senha.');
								$("#nova_senha").focus();
								return false;
							}

							if(pwd_confirma == '')
							{
								alert('Preencha o campo Confirma Senha.');
								$("#confirma_senha").focus();
								return false;
							}
							if(pwd_nova != pwd_confirma)
							{
								alert('Senhas não conferem.');
								$("#nova_senha").val("");
								$("#confirma_senha").val("");
								$("#nova_senha").focus();
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


			Copyright © 2012 - SECRETARIA DE HABITAÇÃO DE SÃO BERNARDO DO CAMPO
				<br/>
				Rua Jacquey, 61 Rudge Ramos - CEP 09634 - 000
				<br/>
				PABX 4367 - 6400

		</div>

	</div>


</body></html>