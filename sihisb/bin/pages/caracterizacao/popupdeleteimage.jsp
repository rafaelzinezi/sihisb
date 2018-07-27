<%@ page language="java" contentType="text/html"%>
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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Prefeitura de São Bernardo do Campo - SIHISB</title>

	
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta name="description" content="SIHISB - Planejamento e monitoramento da Política Habitacional no município" />
	<meta name="keywords" content="SEHAB SIHISP MAPA HABITAÇÃO MONITORAMENTO MAPEAMENTO" />
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
	
	
</head>
<body>
	<a name="topo"></a>
		<div id="header"></div>
						
			<%if(request.getAttribute("mensagem") != null){%>
			<div id="secess" style="text-align: center;padding:30px 10px">
				<h3><%=request.getAttribute("mensagem") %></h3>
			</div>
			<%}%>
			
				
					
</body>
</html>