<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="br.gov.sp.saobernardo.sehab.bean.VulnerabilidadeBean"%>
<%@page import="br.gov.sp.saobernardo.sehab.bean.RegiaoOperacaoBean" %>
<%@page import="br.gov.sp.saobernardo.sehab.bean.VulnerabilidadeBean" %>
<%@page import="br.gov.sp.saobernardo.sehab.bean.LocalizacaoBean" %>  
<%@page import="br.gov.sp.saobernardo.sehab.bean.TipologiaBean" %>
<%@page import="br.gov.sp.saobernardo.sehab.bean.TipoAssentamentoBean" %>
<%@page import="br.gov.sp.saobernardo.sehab.bean.SituacaoPropriedadeBean" %>
<%@page import="br.gov.sp.saobernardo.sehab.bean.AppsBean" %>
<%@page import="br.gov.sp.saobernardo.sehab.bean.ZoneamentoBean" %>
<%@page import="br.gov.sp.saobernardo.sehab.bean.FeicaoMorfologicaBean" %>
<%@page import="br.gov.sp.saobernardo.sehab.bean.TipoRiscoBean" %>
<%@page import="br.gov.sp.saobernardo.sehab.bean.CaracterizacaoBean" %>
<%@page import="java.util.ArrayList" %>
<%@page import="br.gov.sp.saobernardo.sehab.loginBean.LoginBean" %>

<%  
LoginBean usuario = (LoginBean)session.getAttribute("user");  
%>  
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
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
	
	<script>
		function cadastrarFotos(){
			document.forms[0].action = "cadastroImagem";
			document.forms[0].submit();
		}
	</script>
	<style type="text/css">
.BCDE, .BCD, .BC, .B1, .CDE, .CD, .C2, .DE, .D3, .E4{display:none}
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
							</form>
							</li>
						</ul>
					</li>
					<li class="BCDE BCD BC B1"><a href="#">ASSENTAMENTOS</a>
					
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
					<li class="BCDE BCD BC CDE CD C2" ><a href="#">CADASTRO <br/>DE FAMÍLIAS</a>
					
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

								<a href="consultaempreendimento.html">Consultar/Editar</a>

								<a href="empCadastro">Cadastrar</a>

							</div>

						</li>

					</ul>

				</li> 


				<li><a href="index2.jsp" style="color: #b71111">SAIR</a></li>
			</ul>
		</div>
		<div style="clear: both;"></div>
	</div>
		
	
		<div id="content">
			<h1>SIHISB - Cadastro de Assentamentos</h1>
			
			<%if(request.getAttribute("mensagem") != null){%>
			<div id="secess">
				<%=request.getAttribute("mensagem") %>
			</div>
			<%}%>
			<div id="wrapper">
			<div id="wrapper">
				<div id="steps">
				<form method="post" action="empLocalizaCad" >
				<fieldset class="step">
				<center>
				<table border="0" style="width: 200px">
				<td><button type="submit" id="registerButton" id="administradorOnlyProj2">Consultar Empreendimento</button></td>
				</form>
							
				</table>
				</center>
				</fieldset>
			
		
			</div>
			</div>
			<input type="hidden" id="grupo" value="<%=usuario.getGrupo() %>"/>
		<input type="hidden" id="modulo" value="<%=usuario.getModulo()%>"/>
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
	var modulo = $("#modulo").val();
	if(modulo==1)
		
	{	
		$(".BCDE").show();
	
	}
	if(modulo==2)
		
	{	
		$(".BCD").show();
	
	}
	if(modulo==3)
		
	{	
		$(".BC").show();
	
	}
	if(modulo==4)
	{	
		$(".B1").show();
	
	}
	if(modulo==5)
	{	
		$(".CDE").show();
		
	}
	if(modulo==6)
	{	
		$(".CD").show();
		
	}
	if(modulo==7)
	{	
		$(".C2").show();
		
	}
	if(modulo==8)
	{	
		$(".DE").show();
		
	}
	if(modulo==9)
	{	
		$(".D3").show();
		
	}
	if(modulo==10)
	{	
		$(".E4").show();
		
	};
	</script>

</body>
</html>