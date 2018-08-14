<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="br.gov.sp.saobernardo.sehab.empbean.AndamentoSocialContrBean"%>
<%@page import="br.gov.sp.saobernardo.sehab.empbean.ContratacaoRegFunBean"%>
<%@page import="br.gov.sp.saobernardo.sehab.empbean.EstagioContratRegFundBean"%>
<%@page import="br.gov.sp.saobernardo.sehab.empbean.ContratacaoTrabSocial"%>
<%@page import="br.gov.sp.saobernardo.sehab.empbean.EstagioContratTrabSocialBean"%>
<%@page import="br.gov.sp.saobernardo.sehab.empbean.ContratacaoObraBean"%>
<%@page import="br.gov.sp.saobernardo.sehab.empbean.ContratacaoRecursosBean"%>
<%@page import="br.gov.sp.saobernardo.sehab.empbean.EstagioAprovProjBean"%>
<%@page import="br.gov.sp.saobernardo.sehab.loginBean.LoginBean" %>
<%@page import="br.gov.sp.saobernardo.sehab.empbean.EmpBean" %>
<%@page import="br.gov.sp.saobernardo.sehab.empbean.AndamentoJuridicoBean" %>
<%@page import="br.gov.sp.saobernardo.sehab.empbean.AndamentoObraBean" %>
<%@page import="br.gov.sp.saobernardo.sehab.empbean.AndamentoSocialBean" %>
<%@page import="br.gov.sp.saobernardo.sehab.empbean.EstagioContratRecBean" %>
<%@page import="br.gov.sp.saobernardo.sehab.empbean.EstagioContratObraBean" %>
<%@page import="br.gov.sp.saobernardo.sehab.empbean.EstagioAprovacaoBean" %>
<%@page import="br.gov.sp.saobernardo.sehab.empbean.EstagioAprovProjBean" %>
<%@page import="br.gov.sp.saobernardo.sehab.empbean.ContratacaoRecursosBean" %>
<%@page import="br.gov.sp.saobernardo.sehab.empbean.ContratacaoObraBean" %>
<%@page import="br.gov.sp.saobernardo.sehab.empbean.ContratacaoTrabSocial" %>
<%@page import="br.gov.sp.saobernardo.sehab.empbean.ContratacaoRegFunBean" %>
<%@page import="br.gov.sp.saobernardo.sehab.empbean.DeleteImageEmprendimentoBean" %>
<%@page import="br.gov.sp.saobernardo.sehab.empbean.AndamentoRecAmbBean" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.List" %>
<%  
LoginBean usuario = (LoginBean)session.getAttribute("user");
LoginBean grupo = (LoginBean)session.getAttribute("grupo");
LoginBean modulo = (LoginBean)session.getAttribute("modulo");
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
	<script type="text/javascript" src="js/jquery.wymeditor.min.js"></script>
	
	<link rel="stylesheet" type="text/css" href="akzhan/lib/blueprint/screen.css" media="screen, projection" />
	<link rel="stylesheet" type="text/css" href="akzhan/lib/blueprint/print.css" media="print" />
	<link rel="stylesheet" href="akzhan/jquery.wysiwyg.css" type="text/css"/>
	<script type="text/javascript" src="akzhan/lib/jquery.js"></script>
	<script type="text/javascript" src="akzhan/jquery.wysiwyg.js"></script>
	<script type="text/javascript" src="akzhan/controls/wysiwyg.image.js"></script>
	<script type="text/javascript" src="akzhan/controls/wysiwyg.link.js"></script>
	<script type="text/javascript" src="akzhan/controls/wysiwyg.table.js"></script>
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
						 <li class="BCDE BCD BC B1"><a href="#">EMPREENDIMENTOS</a>

					<ul>

						<li>

							<div>

								<a href="empLocalizaCad">Consultar/Editar</a>

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
		<h1>SIHISB - Cadastro de Empreendimentos</h1>
		
		<div id="erros" style="display: none;">
			Favor, verifique os campos destacados em <b>vermelho</b> no formulário.
		</div>
	<div id="wrapper">
				<div id="steps">
					<%if(request.getAttribute("update") != null){%>
					<form id="formElem" name="formElem" method="post" action="alteraEmpreendimento">
						<input type="hidden" name="update" value="update">
						<input type="hidden" name="usuario" value="<%=usuario.getMatricula() %>">
					<%}else{%>
					<form id="formElem" name="formElem" method="post" action="empCadastro">
					<%}%>				
						<fieldset class="step">
						<legend>Identifica��o do Empreendimento</legend>
						<div>
							<p class="width100">
							<input type="hidden" id="idt_empreendimento" name="idt_empreendimento" value="<%= ((EmpBean)request.getAttribute("Empreend")).getIdt_empreendimento()%>"  <%=(request.getAttribute("update") != null ? "readonly='readonly'" : "") %> >
								<label for="nome_empreendimento" style="width: 200px">Nome do Empreendimento</label> 
								<input type="text" id="nome_empreendimento" name="nome_empreendimento" tabindex="01" style="width:400px" value="<%=((EmpBean)request.getAttribute("Empreend")).getNom_empreendimento()%>" />
								<label for="familias_beneficiadas" style="width: 190px">Famílias Beneficiadas</label> 
								<input type="text" class="smallInput" id="familias_beneficiadas" name="familias_beneficiadas" tabindex="02" value="<%=((EmpBean)request.getAttribute("Empreend")).getQtd_familias_atendidas()%>" />
							</p>
						</div>
						<div class="colunas">
							<p>
								<label for="tempo_obra" style="width: 200px">Prazo da obra</label> 
								<input type="text" id="tempo_obra" name="tempo_obra"  tabindex="03" style="width: 170px" value="<%=((EmpBean)request.getAttribute("Empreend")).getQtd_meses_obra() %>" />&nbsp;<i>(meses).</i>
							
							</p>
							<p>
								<label for="agente_financeiro" style="width: 200px">Agente Financeiro</label> 
								<input type="text" id="agente_financeiro" name="agente_financeiro" tabindex="04" style="width: 170px" value="<%=((EmpBean)request.getAttribute("Empreend")).getNom_agente_financeiro()%>"/>
							</p>
						</div>
						<div class="colunas">
							<p>
								<label for="n_contrato" style="width: 200px">Nº do Contrato</label> 
								<input type="text" id="n_contrato" name="n_contrato" tabindex="05" style="width: 170px" value="<%=((EmpBean)request.getAttribute("Empreend")).getNum_contrato()%>"/>
							</p>
							<p>
								<label for="tp_contrato" style="width: 200px">Fonte de Recursos</label> 
								<input type="text" id="tp_contrato" name="tp_contrato" tabindex="06"style="width: 170px" value="<%=((EmpBean)request.getAttribute("Empreend")).getDes_fonte_recurso()%>"/>
							</p>
						</div>
						<div>							
							<p class="width100">
								<label for="desc_empreendimento" class="bigLabel">Descrição do Empreendimento</label> 
								<textarea id="desc_empreendimento" name="desc_empreendimento" class="specialTextArea"><%=((EmpBean)request.getAttribute("Empreend")).getDes_empreendimento()%></textarea>
								<script type="text/javascript">
								(function($) {
									$(document).ready(function() {
										$('.specialTextArea').wysiwyg();
									});
								})(jQuery);
								</script>
							</p>
							<p class="width100">
								<label for="desc_tipologia" class="bigLabel">Tipologia da Produção Habitacional</label> 
								<textarea id="desc_tipologia" name="desc_tipologia" class="specialTextArea"><%=((EmpBean)request.getAttribute("Empreend")).getDes_tipologia()%></textarea>
							</p>
						</div>
						<legend>Est�gio de Contratação de Recursos</legend>
						<legend class="legend1">Contratação de Recursos com Agente Financeiro</legend>
						<div>
							<p class="width100">
								<label for="contratacao_recursos" style="width: 170px">Estágio de Contratação</label> 
								<select id="contratacao_recursos" name="contratacao_recursos" onchange="mostraSelect(this, '200')">
									<%
											if(request.getAttribute("allEstagRec") != null){
											ArrayList<EstagioContratRecBean> recursos = (ArrayList)request.getAttribute("allEstagRec");
											
											for(int i=0; i < recursos.size(); i++)
											{
										%>
										<option value="<%= recursos.get(i).getCod_estagio_contrat_rec() %>" <%=recursos.get(i).getSelected() %>>
										<%= recursos.get(i).getDes_estagio_contrat_rec() %>
										</option>
										<%}}%>
								</select>
							</p>
							<span id="span_200" style="display: none">
									<p class="width100">
										<label for="contratacao_recursos_obs" style="width: 170px">Observação Contratação de Recursos</label> 
										<textarea style="width: 410px; height:100px" name="contratacao_recursos_obs" id="contratacao_recursos_obs"><%=((ContratacaoRecursosBean)request.getAttribute("recursos")).getDes_obs_estagio_cont_rec()%></textarea>
									</p>
							</span>
							<p class="width100">
								<label for="protocolo_consulta">Protocolo Carta Consulta</label> 
								<input type="text" id="protocolo_consulta" name="protocolo_consulta" value="<%=((ContratacaoRecursosBean)request.getAttribute("recursos")).getNum_protocolo_carta_consulta()%>" />
								<label for="n_do_contrato">Nº do Contrato de Recursos</label> 
								<input type="text" id="n_do_contrato" name="n_do_contrato" value="<%=((ContratacaoRecursosBean)request.getAttribute("recursos")).getNum_contrato_recurso()%>"  />
							</p>
						</div>
						
						<legend class="legend2">Valores Contratados Com o Agente Financeiro - Original</legend>
						<div class="colunas">
							<p class="width100">
	
								<label for="vl_contr_repasse_REC" style="width: 100px">Repasse Financiamento&nbsp;<i>R$</i></label> 
								<input type="text" id="vl_contr_repasse_REC" name="vl_contr_repasse_REC"  style="width: 170px" value="<fmt:formatNumber maxFractionDigits="2" minFractionDigits="2" value="${recursos.vlr_repasse_financiamento_orig}" />" />
								<label for="vl_contr_contrapartida_REC" style="width: 120px">Contrapartida Tesouro&nbsp;<i>R$</i></label> 
								<input type="text" id="contrapartidaTesouro_REC" name="contrapartidaTesouro_REC"  style="width: 170px" value="<fmt:formatNumber maxFractionDigits="2" minFractionDigits="2" value="${recursos.vlr_contrapartida_tesouro_orig}" />"/>
								<label for="vl_contr_total_REC" style="width: 100px">Valor Total&nbsp;<i>R$</i></label> 
								<input type="text" id="vl_contr_total_REC" name="vl_contr_total_REC"  style="width: 170px" value="<fmt:formatNumber maxFractionDigits="2" minFractionDigits="2" value="${recursos.vlr_total_orig}" />"/>
							</p>
							<legend class="legend2">Contrapartida Outras Fontes</legend>
							<p class="width100">
								<label for="vl_contrapartida_01_REC" style="width: 210px">Valor&nbsp;<i>R$</i></label> 
								<input type="text" id="vl_contrapartida_01_REC" name="vl_contrapartida_01_REC"  style="width: 270px" value="<fmt:formatNumber maxFractionDigits="2" minFractionDigits="2" value="${recursos.vlr_contrapartida_orig_1}" />"/>
								<label for="fonte_contrapartida_01_REC" style="width: 100px">Fonte</label> 
								<input type="text" id="fonte_contrapartida_01_REC" name="fonte_contrapartida_01_REC" style="width: 270px" value="<%=((ContratacaoRecursosBean)request.getAttribute("recursos")).getDes_contrapartida_1()%>"/>
							</p>
							<p class="width100">
								<label for="vl_contrapartida_02_REC" style="width: 210px">Valor&nbsp;<i>R$</i></label> 
								<input type="text" id="vl_contrapartida_02_REC" name="vl_contrapartida_02_REC"  style="width: 270px" value="<fmt:formatNumber maxFractionDigits="2" minFractionDigits="2" value="${recursos.vlr_contrapartida_orig_2}" />" />
								<label for="fonte_contrapartida_02_REC" style="width: 100px">Fonte</label> 
								<input type="text" id="fonte_contrapartida_02_REC" name="fonte_contrapartida_02_REC" style="width: 270px" value="<%=((ContratacaoRecursosBean)request.getAttribute("recursos")).getDes_contrapartida_2()%>"/>
							</p>
							<p class="width100">
								<label for="vl_contrapartida_03_REC" style="width: 210px">Valor&nbsp;<i>R$</i></label> 
								<input type="text" id="vl_contrapartida_03_REC" name="vl_contrapartida_03_REC"  style="width: 270px" value="<fmt:formatNumber maxFractionDigits="2" minFractionDigits="2" value="${recursos.vlr_contrapartida_orig_3}" />"/>
								<label for="fonte_contrapartida_03_REC" style="width: 100px">Fonte</label> 
								<input type="text" id="fonte_contrapartida_03_REC" name="fonte_contrapartida_03_REC" style="width: 270px" value="<%=((ContratacaoRecursosBean)request.getAttribute("recursos")).getDes_contrapartida_3()%>"/>
							</p>
							<p class="width100">
								<label for="vl_contrapartida_04_REC" style="width: 210px">Valor&nbsp;<i>R$</i></label> 
								<input type="text" id="vl_contrapartida_04_REC" name="vl_contrapartida_04_REC"  style="width: 270px" value="<fmt:formatNumber maxFractionDigits="2" minFractionDigits="2" value="${recursos.vlr_contrapartida_orig_4}" />" />
								<label for="fonte_contrapartida_04_REC" style="width: 100px">Fonte</label> 
								<input type="text" id="fonte_contrapartida_04_REC" name="fonte_contrapartida_04_REC" style="width: 270px" value="<%=((ContratacaoRecursosBean)request.getAttribute("recursos")).getDes_contrapartida_4()%>"/>
							</p>
						</div>
						<legend class="legend2">Valores Contratados Com o Agente Financeiro - Com Aditivo</legend>
						<div class="colunas">
							<p class="width100">
								<label for="vl_contr_repasse_aditivo_REC" style="width: 100px">Repasse Financiamento&nbsp;<i>R$</i></label> 
								<input type="text" id="vl_contr_repasse_aditivo_REC" name="vl_contr_repasse_aditivo_REC"  style="width: 170px" value="<fmt:formatNumber maxFractionDigits="2" minFractionDigits="2" value="${recursos.vlr_repasse_financiamento_adt}" />" />
								<label for="contrTesouroAdt_REC" style="width: 120px">Contrapartida Tesouro&nbsp;<i>R$</i></label> 
								<input type="text" id="contrTesouroAdt_REC" name="contrTesouroAdt_REC"  style="width: 170px" value="<fmt:formatNumber maxFractionDigits="2" minFractionDigits="2" value="${recursos.vlr_contrapartida_tesouro_adt}" />"/>
								<label for="vl_contr_total_aditivo_REC" style="width: 100px">Valor Total&nbsp;<i>R$</i></label> 
								<input type="text" id="vl_contr_total_aditivo_REC" name="vl_contr_total_aditivo_REC"  style="width: 170px" value="<fmt:formatNumber maxFractionDigits="2" minFractionDigits="2" value="${recursos.vlr_total_adt}" />"/>
							</p>
							<legend class="legend2">Contrapartida Outras Fontes</legend>
							<p class="width100">
								<label for="vl_contrapartida_01_aditivo_REC" style="width: 210px">Valor&nbsp;<i>R$</i></label> 
								<input type="text" id="vl_contrapartida_01_aditivo_REC" name="vl_contrapartida_01_aditivo_REC"  style="width: 270px" value="<fmt:formatNumber maxFractionDigits="2" minFractionDigits="2" value="${recursos.vlr_contrapartida_adt_1}" />"/>
								<label for="fonte_contrapartida_01_aditivo_REC" style="width: 100px">Fonte</label> 
								<input type="text" id="fonte_contrapartida_01_aditivo_REC" name="fonte_contrapartida_01_aditivo_REC" style="width: 270px" value="<%=((ContratacaoRecursosBean)request.getAttribute("recursos")).getDes_contrapartida_adt_1()%>"/>
							</p>
							<p class="width100">
								<label for="vl_contrapartida_02_aditivo_REC" style="width: 210px">Valor&nbsp;<i>R$</i></label> 
								<input type="text" id="vl_contrapartida_02_aditivo_REC" name="vl_contrapartida_02_aditivo_REC"  style="width: 270px" value="<fmt:formatNumber maxFractionDigits="2" minFractionDigits="2" value="${recursos.vlr_contrapartida_adt_2}" />"/>
								<label for="fonte_contrapartida_02_aditivo_REC" style="width: 100px">Fonte</label> 
								<input type="text" id="fonte_contrapartida_02_aditivo_REC" name="fonte_contrapartida_02_aditivo_REC" style="width: 270px" value="<%=((ContratacaoRecursosBean)request.getAttribute("recursos")).getDes_contrapartida_adt_2()%>" />
							</p>
							<p class="width100">
								<label for="vl_contrapartida_03_aditivo_REC" style="width: 210px">Valor&nbsp;<i>R$</i></label> 
								<input type="text" id="vl_contrapartida_03_aditivo_REC" name="vl_contrapartida_03_aditivo_REC"  style="width: 270px" value="<fmt:formatNumber maxFractionDigits="2" minFractionDigits="2" value="${recursos.vlr_contrapartida_adt_3}" />"/>
								<label for="fonte_contrapartida_03_aditivo_REC" style="width: 100px">Fonte</label> 
								<input type="text" id="fonte_contrapartida_03_aditivo_REC" name="fonte_contrapartida_03_aditivo_REC" style="width: 270px" value="<%=((ContratacaoRecursosBean)request.getAttribute("recursos")).getDes_contrapartida_adt_3()%>" />
							</p>
							<p class="width100">
								<label for="vl_contrapartida_04_aditivo_REC" style="width: 210px">Valor&nbsp;<i>R$</i></label> 
								<input type="text" id="vl_contrapartida_04_aditivo_REC" name="vl_contrapartida_04_aditivo_REC"  style="width: 270px" value="<fmt:formatNumber maxFractionDigits="2" minFractionDigits="2" value="${recursos.vlr_contrapartida_adt_4}" />"/>
								<label for="fonte_contrapartida_04_aditivo_REC" style="width: 100px">Fonte</label> 
								<input type="text" id="fonte_contrapartida_04_aditivo_REC" name="fonte_contrapartida_04_aditivo_REC" style="width: 270px" value="<%=((ContratacaoRecursosBean)request.getAttribute("recursos")).getDes_contrapartida_adt_4()%>"/>
							</p>
						</div>
						<legend>Estágio de Contratação de Obras e Serviços</legend>
						<legend class="legend1">Contratação de Obras</legend>
						<div>
							<p class="width100">
								<label for="contratacao_Obras" style="width: 170px">Estágio de Contratação</label> 
								<select id="contratacao_Obras" name="contratacao_Obras" onchange="mostraSelect(this, '300')">
									<%
											if(request.getAttribute("allEstagObra") != null){
											ArrayList<EstagioContratObraBean> obras = (ArrayList)request.getAttribute("allEstagObra");
											
											for(int i=0; i < obras.size(); i++)
											{
										%>
										<option value="<%= obras.get(i).getCod_estagio_contrat_obra() %>" <%=obras.get(i).getSelected() %>>
										<%= obras.get(i).getDes_estagio_contrat_obra() %>
										</option>
										<%}}%>
								</select>
							</p>
							<span id="span_300" style="display: none">
									<p class="width100">
										<label for="contratacao_obras_obs" style="width: 170px">Observação Contratação de Obras</label> 
										<textarea style="width: 410px; height:100px" name="contratacao_obras_obs" id="contratacao_obras_obs"><%=((ContratacaoObraBean)request.getAttribute("obra")).getDes_obs_estagio_contrat_obra()%></textarea>
									</p>
							</span>
							<p class="width100">
								<label for="ois_obra" style="width: 800px; text-align:left">OIS</label>
								<label for="prevista_contrat_obras" style="width: 170px">Prevista para</label>
								<input type="text" id="prevista_contrat_obras" name="prevista_contrat_obras" value="<%=((ContratacaoObraBean)request.getAttribute("obra")).getDat_ois_prevista_para()%>" />
								<label for="assinada_contrat_obras" style="width: 120px">Assinada em</label> 
								<input type="text" id="assinada_contrat_obras" name="assinada_contrat_obras" value="<%=((ContratacaoObraBean)request.getAttribute("obra")).getDat_ois_assinada_em()%>"/>
							</p>
							
							<p class="width100">
								<label for="processo_adm_obra" style="width: 170px">Nº do Processo Administrativo</label> 
								<input type="text" id="processo_adm_obra" name="processo_adm_obra" value="<%=((ContratacaoObraBean)request.getAttribute("obra")).getNum_processo_adm()%>"/>
								<label for="licitacao_obra" style="width: 120px">Nº do Processo Licitação</label> 
								<input type="text" id="licitacao_obra" name="licitacao_obra" value="<%=((ContratacaoObraBean)request.getAttribute("obra")).getNum_processo_licitacao()%>"/>
							</p>
							<p class="width100">
								<label for="contrato_obra" style="width: 170px">Nº do Contrato</label> 
								<input type="text" id="contrato_obra" name="contrato_obra" value="<%=((ContratacaoObraBean)request.getAttribute("obra")).getNum_contrato()%>" />
							</p>
							
							
						</div>
						<legend class="legend2">Valores Contratados - Original</legend>
						<div class="colunas">
							<p class="width100">
								<label for="vl_contr_repasse_OBRA" style="width: 100px">Repasse Financiamento&nbsp;<i>R$</i></label> 
								<input type="text" id="vl_contr_repasse_OBRA" name="vl_contr_repasse_OBRA"  style="width: 170px" value="<fmt:formatNumber maxFractionDigits="2" minFractionDigits="2" value="${obra.vlr_repasse_financiamento_orig}" />"/>
								<label for="vl_contr_contrapartida_OBRA" style="width: 120px">Contrapartida Tesouro&nbsp;<i>R$</i></label> 
								<input type="text" id="vl_contr_contrapartida_OBRA" name="vl_contr_contrapartida_OBRA"  style="width: 170px" value="<fmt:formatNumber maxFractionDigits="2" minFractionDigits="2" value="${obra.vlr_contrapartida_tesouro_orig}"/>"/>
								<label for="vl_contr_total_OBRA" style="width: 100px">Valor Total&nbsp;<i>R$</i></label> 
								<input type="text" id="vl_contr_total_OBRA" name="vl_contr_total_OBRA"  style="width: 170px" value="<fmt:formatNumber maxFractionDigits="2" minFractionDigits="2" value="${obra.vlr_total_orig}"/>"/>
							</p>
							<legend class="legend2">Contrapartida Outras Fontes</legend>
							<p class="width100">
								<label for="vl_contrapartida_01_OBRA" style="width: 210px">Valor&nbsp;<i>R$</i></label> 
								<input type="text" id="vl_contrapartida_01_OBRA" name="vl_contrapartida_01_OBRA"  style="width: 270px" value="<fmt:formatNumber maxFractionDigits="2" minFractionDigits="2" value="${obra.vlr_contrapartida_orig_1}"/>"/>
								<label for="fonte_contrapartida_01_OBRA" style="width: 100px">Fonte</label> 
								<input type="text" id="fonte_contrapartida_01_OBRA" name="fonte_contrapartida_01_OBRA" style="width: 270px" value="<%=((ContratacaoObraBean)request.getAttribute("obra")).getDes_contrapartida_1()%>"/>
							</p>
							<p class="width100">
								<label for="vl_contrapartida_02_OBRA" style="width: 210px">Valor&nbsp;<i>R$</i></label> 
								<input type="text" id="vl_contrapartida_02_OBRA" name="vl_contrapartida_02_OBRA"  style="width: 270px" value="<fmt:formatNumber maxFractionDigits="2" minFractionDigits="2" value="${obra.vlr_contrapartida_orig_2}"/>"/>
								<label for="fonte_contrapartida_02_OBRA" style="width: 100px">Fonte</label> 
								<input type="text" id="fonte_contrapartida_02_OBRA" name="fonte_contrapartida_02_OBRA" style="width: 270px" value="<%=((ContratacaoObraBean)request.getAttribute("obra")).getDes_contrapartida_2()%>"/>
							</p>
							<p class="width100">
								<label for="vl_contrapartida_03_OBRA" style="width: 210px">Valor&nbsp;<i>R$</i></label> 
								<input type="text" id="vl_contrapartida_03_OBRA" name="vl_contrapartida_03_OBRA"  style="width: 270px" value="<fmt:formatNumber maxFractionDigits="2" minFractionDigits="2" value="${obra.vlr_contrapartida_orig_3}"/>" />
								<label for="fonte_contrapartida_03_OBRA" style="width: 100px">Fonte</label> 
								<input type="text" id="fonte_contrapartida_03_OBRA" name="fonte_contrapartida_03_OBRA" style="width: 270px" value="<%=((ContratacaoObraBean)request.getAttribute("obra")).getDes_contrapartida_3()%>" />
							</p>
							<p class="width100">
								<label for="vl_contrapartida_04_OBRA" style="width: 210px">Valor&nbsp;<i>R$</i></label> 
								<input type="text" id="vl_contrapartida_04_OBRA" name="vl_contrapartida_04_OBRA"  style="width: 270px" value="<fmt:formatNumber maxFractionDigits="2" minFractionDigits="2" value="${obra.vlr_contrapartida_orig_4}"/>"/>
								<label for="fonte_contrapartida_04_OBRA" style="width: 100px">Fonte</label> 
								<input type="text" id="fonte_contrapartida_04_OBRA" name="fonte_contrapartida_04_OBRA" style="width: 270px" value="<%=((ContratacaoObraBean)request.getAttribute("obra")).getDes_contrapartida_4()%>"/>
							</p>
						</div>
						<legend class="legend2">Valores Contratados - Com Aditivo</legend>
						<div class="colunas">
							<p class="width100">
								<label for="vl_contr_repasse_aditivo_OBRA" style="width: 100px">Repasse Financiamento&nbsp;<i>R$</i></label> 
								<input type="text" id="vl_contr_repasse_aditivo_OBRA" name="vl_contr_repasse_aditivo_OBRA"  style="width: 170px" value="<fmt:formatNumber maxFractionDigits="2" minFractionDigits="2" value="${obra.vlr_repasse_financiamento_adt}" />"/>
								<label for="vl_contr_contrapartida_adObra_OBRA" style="width: 120px">Contrapartida Tesouro&nbsp;<i>R$</i></label> 
								<input type="text" id="vl_contr_contrapartida_adObra_OBRA" name="vl_contr_contrapartida_adObra_OBRA"  style="width: 170px" value="<fmt:formatNumber maxFractionDigits="2" minFractionDigits="2" value="${obra.vlr_contrapartida_tesouro_adt}" />"/>
								<label for="vl_contr_total_aditivo_OBRA" style="width: 100px">Valor Total&nbsp;<i>R$</i></label> 
								<input type="text" id="vl_contr_total_aditivo_OBRA" name="vl_contr_total_aditivo_OBRA"  style="width: 170px" value="<fmt:formatNumber maxFractionDigits="2" minFractionDigits="2" value="${obra.vlr_total_adt}" />" />
							</p>
							<legend class="legend2">Contrapartida Outras Fontes</legend>
							<p class="width100">
								<label for="vl_contrapartida_01_aditivo_OBRA" style="width: 210px">Valor&nbsp;<i>R$</i></label> 
								<input type="text" id="vl_contrapartida_01_aditivo_OBRA" name="vl_contrapartida_01_aditivo_OBRA"  style="width: 270px" value="<fmt:formatNumber maxFractionDigits="2" minFractionDigits="2" value="${obra.vlr_contrapartida_adt_1}" />"/>
								<label for="fonte_contrapartida_01_aditivo_OBRA" style="width: 100px">Fonte</label> 
								<input type="text" id="fonte_contrapartida_01_aditivo_OBRA" name="fonte_contrapartida_01_aditivo_OBRA" style="width: 270px" value="<%=((ContratacaoObraBean)request.getAttribute("obra")).getDes_contrapartida_adt_1()%>" />
							</p>
							<p class="width100">
								<label for="vl_contrapartida_02_aditivo_OBRA" style="width: 210px">Valor&nbsp;<i>R$</i></label> 
								<input type="text" id="vl_contrapartida_02_aditivo_OBRA" name="vl_contrapartida_02_aditivo_OBRA"  style="width: 270px" value="<fmt:formatNumber maxFractionDigits="2" minFractionDigits="2" value="${obra.vlr_contrapartida_adt_2}" />" />
								<label for="fonte_contrapartida_02_aditivo_OBRA" style="width: 100px">Fonte</label> 
								<input type="text" id="fonte_contrapartida_02_aditivo_OBRA" name="fonte_contrapartida_02_aditivo_OBRA" style="width: 270px" value="<%=((ContratacaoObraBean)request.getAttribute("obra")).getDes_contrapartida_adt_2()%>" />
							</p>
							<p class="width100">
								<label for="vl_contrapartida_03_aditivo_OBRA" style="width: 210px">Valor&nbsp;<i>R$</i></label> 
								<input type="text" id="vl_contrapartida_03_aditivo_OBRA" name="vl_contrapartida_03_aditivo_OBRA"  style="width: 270px" value="<fmt:formatNumber maxFractionDigits="2" minFractionDigits="2" value="${obra.vlr_contrapartida_adt_3}" />"/>
								<label for="fonte_contrapartida_03_aditivo_OBRA" style="width: 100px">Fonte</label> 
								<input type="text" id="fonte_contrapartida_03_aditivo_OBRA" name="fonte_contrapartida_03_aditivo_OBRA" style="width: 270px" value="<%=((ContratacaoObraBean)request.getAttribute("obra")).getDes_contrapartida_adt_3()%>" />
							</p>
							<p class="width100">
								<label for="vl_contrapartida_04_aditivo_OBRA" style="width: 210px">Valor&nbsp;<i>R$</i></label> 
								<input type="text" id="vl_contrapartida_04_aditivo_OBRA" name="vl_contrapartida_04_aditivo_OBRA"  style="width: 270px" value="<fmt:formatNumber maxFractionDigits="2" minFractionDigits="2" value="${obra.vlr_contrapartida_adt_4}" />" />
								<label for="fonte_contrapartida_04_aditivo_OBRA" style="width: 100px">Fonte</label> 
								<input type="text" id="fonte_contrapartida_04_aditivo_OBRA" name="fonte_contrapartida_04_aditivo_OBRA" style="width: 270px" value="<%=((ContratacaoObraBean)request.getAttribute("obra")).getDes_contrapartida_adt_4()%>"/>
							</p>
						</div>
						
						<legend class="legend1">Contratação de Trabalho Social</legend>
						<div>
							<p class="width100">
								<label for="contratacao_trabSocial" style="width: 170px">Estágio de Contratação</label> 
								<select id="contratacao_trabSocial" name="contratacao_trabSocial" onchange="mostraSelect(this, '400')">
								<%
											if(request.getAttribute("allEstagTrab") != null){
											ArrayList<EstagioContratTrabSocialBean> trabSocial = (ArrayList)request.getAttribute("allEstagTrab");
											
											for(int i=0; i < trabSocial.size(); i++)
											{
										%>
										<option value="<%= trabSocial.get(i).getCod_estagio_contrat_trab_soc() %>" <%=trabSocial.get(i).getSelected() %>>
										<%= trabSocial.get(i).getDes_estagio_contrat_trab_soc() %>
										</option>
										<%}}%>
								</select>
							</p>
							<span id="span_400" style="display: none">
									<p class="width100">
										<label for="contratacao_trabSocial_obs" style="width: 170px">Observação Contratação de Obras</label> 
										<textarea style="width: 410px; height:100px" name="contratacao_trabSocial_obs" id="contratacao_trabSocial_obs"><%=((ContratacaoTrabSocial)request.getAttribute("trabsocial")).getDes_obs_estagio_cont_trab_soc()%></textarea>
									</p>
							</span>
							<p class="width100">
								<label for="ois_obras" style="width: 800px; text-align:left">OIS</label>
								<label for="prevista_trab_social" style="width: 170px">Prevista para</label>
								<input type="text" id="prevista_trab_social" name="prevista_trab_social" value="<%=((ContratacaoTrabSocial)request.getAttribute("trabsocial")).getDat_ois_prevista_para()%>"/>
								<label for="assinada_trab_social" style="width: 120px">Assinada em</label> 
								<input type="text" id="assinada_trab_social" name="assinada_trab_social" value="<%=((ContratacaoTrabSocial)request.getAttribute("trabsocial")).getDat_ois_assinada_em()%>" />
							</p>
							<p class="width100">
								<label for="processo_adm_trabobra" style="width: 170px">Nº do Processo Administrativo</label> 
								<input type="text" id="processo_adm_trabobra" name="processo_adm_trabobra" value="<%=((ContratacaoTrabSocial)request.getAttribute("trabsocial")).getNum_processo_adm()%>"/>
								<label for="licitacao_trabobra" style="width: 120px">Nº do Processo Licitação</label> 
								<input type="text" id="licitacao_trabobra" name="licitacao_trabobra"  value="<%=((ContratacaoTrabSocial)request.getAttribute("trabsocial")).getNum_processo_licitacao()%>"/>
							</p>
							<p class="width100">
								<label for="contrato_trabobra" style="width: 170px">Nº do Contrato</label> 
								<input type="text" id="contrato_trabobra" name="contrato_trabobra" value="<%=((ContratacaoTrabSocial)request.getAttribute("trabsocial")).getNum_contrato()%>"/>
							</p>
						</div>
						<legend class="legend2">Valores Contratados - Original</legend>
						<div class="colunas">
							<p class="width100">
								<label for="vl_contr_repasse_TRAB" style="width: 100px">Repasse Financiamento&nbsp;<i>R$</i></label> 
								<input type="text" id="vl_contr_repasse_TRAB" name="vl_contr_repasse_TRAB"  style="width: 170px" value="<fmt:formatNumber maxFractionDigits="2" minFractionDigits="2" value="${trabsocial.vlr_repasse_financiamento_orig}" />"/>
								<label for="vl_contr_contrapartida_TRAB" style="width: 120px">Contrapartida Tesouro&nbsp;<i>R$</i></label> 
								<input type="text" id="vl_contr_contrapartida_TRAB" name="vl_contr_contrapartida_TRAB"  style="width: 170px" value="<fmt:formatNumber maxFractionDigits="2" minFractionDigits="2" value="${trabsocial.vlr_contrapartida_tesouro_orig}" />"/>
								<label for="vl_contr_total_TRAB" style="width: 100px">Valor Total&nbsp;<i>R$</i></label> 
								<input type="text" id="vl_contr_total_TRAB" name="vl_contr_total_TRAB"  style="width: 170px" value="<fmt:formatNumber maxFractionDigits="2" minFractionDigits="2" value="${trabsocial.vlr_total_orig}" />"/>
							</p>
							<legend class="legend2">Contrapartida Outras Fontes</legend>
							<p class="width100">
								<label for="vl_contrapartida_01_TRAB" style="width: 210px">Valor&nbsp;<i>R$</i></label> 
								<input type="text" id="vl_contrapartida_01_TRAB" name="vl_contrapartida_01_TRAB"  style="width: 270px" value="<fmt:formatNumber maxFractionDigits="2" minFractionDigits="2" value="${trabsocial.vlr_contrapartida_orig_1}"/>"/>
								<label for="fonte_contrapartida_01_TRAB" style="width: 100px">Fonte</label> 
								<input type="text" id="fonte_contrapartida_01_TRAB" name="fonte_contrapartida_01_TRAB" style="width: 270px" value="<%=((ContratacaoTrabSocial)request.getAttribute("trabsocial")).getDes_contrapartida_1()%>"/>
							</p>
							<p class="width100">
								<label for="vl_contrapartida_02_TRAB" style="width: 210px">Valor&nbsp;<i>R$</i></label> 
								<input type="text" id="vl_contrapartida_02_TRAB" name="vl_contrapartida_02_TRAB"   style="width: 270px" value="<fmt:formatNumber maxFractionDigits="2" minFractionDigits="2" value="${trabsocial.vlr_contrapartida_orig_2}"/>"/>
								<label for="fonte_contrapartida_02_TRAB" style="width: 100px">Fonte</label> 
								<input type="text" id="fonte_contrapartida_02_TRAB" name="fonte_contrapartida_02_TRAB" style="width: 270px" value="<%=((ContratacaoTrabSocial)request.getAttribute("trabsocial")).getDes_contrapartida_2()%>"/>
							</p>
							<p class="width100">
								<label for="vl_contrapartida_03_TRAB" style="width: 210px">Valor&nbsp;<i>R$</i></label> 
								<input type="text" id="vl_contrapartida_03_TRAB" name="vl_contrapartida_03_TRAB"  style="width: 270px" value="<fmt:formatNumber maxFractionDigits="2" minFractionDigits="2" value="${trabsocial.vlr_contrapartida_orig_3}"/>"/>
								<label for="fonte_contrapartida_03_TRAB" style="width: 100px">Fonte</label> 
								<input type="text" id="fonte_contrapartida_03_TRAB" name="fonte_contrapartida_03_TRAB" style="width: 270px" value="<%=((ContratacaoTrabSocial)request.getAttribute("trabsocial")).getDes_contrapartida_3()%>"/>
							</p>
							<p class="width100">
								<label for="vl_contrapartida_04_TRAB" style="width: 210px">Valor&nbsp;<i>R$</i></label> 
								<input type="text" id="vl_contrapartida_04_TRAB" name="vl_contrapartida_04_TRAB"  style="width: 270px" value="<fmt:formatNumber maxFractionDigits="2" minFractionDigits="2" value="${trabsocial.vlr_contrapartida_orig_4}"/>"/>
								<label for="fonte_contrapartida_04_TRAB" style="width: 100px">Fonte</label> 
								<input type="text" id="fonte_contrapartida_04_TRAB" name="fonte_contrapartida_04_TRAB" style="width: 270px" value="<%=((ContratacaoTrabSocial)request.getAttribute("trabsocial")).getDes_contrapartida_4()%>"/>
							</p>
						</div>
						<legend class="legend2">Valores Contratados - Com Aditivo</legend>
						<div class="colunas">
							<p class="width100">
								<label for="vl_contr_repasse_aditivo_TRAB" style="width: 100px">Repasse Financiamento&nbsp;<i>R$</i></label> 
								<input type="text" id="vl_contr_repasse_aditivo_TRAB" name="vl_contr_repasse_aditivo_TRAB"  style="width: 170px" value="<fmt:formatNumber maxFractionDigits="2" minFractionDigits="2" value="${trabsocial.vlr_repasse_financiamento_adt}"/>"/>
								<label for="vl_contr_contrapartida_tsocial_TRAB" style="width: 120px">Contrapartida Tesouro&nbsp;<i>R$</i></label> 
								<input type="text" id="vl_contr_contrapartida_tsocial_TRAB" name="vl_contr_contrapartida_tsocial_TRAB"  style="width: 170px" value="<fmt:formatNumber maxFractionDigits="2" minFractionDigits="2" value="${trabsocial.vlr_contrapartida_tesouro_adt}"/>"/>
								<label for="vl_contr_total_aditivo_TRAB" style="width: 100px">Valor Total&nbsp;<i>R$</i></label> 
								<input type="text" id="vl_contr_total_aditivo_TRAB" name="vl_contr_total_aditivo_TRAB"  style="width: 170px" value="<fmt:formatNumber maxFractionDigits="2" minFractionDigits="2" value="${trabsocial.vlr_total_adt}"/>"/>
							</p>
							<legend class="legend2">Contrapartida Outras Fontes</legend>
							<p class="width100">
								<label for="vl_contrapartida_01_aditivo_TRAB" style="width: 210px">Valor&nbsp;<i>R$</i></label> 
								<input type="text" id="vl_contrapartida_01_aditivo_TRAB" name="vl_contrapartida_01_aditivo_TRAB"  style="width: 270px" value="<fmt:formatNumber maxFractionDigits="2" minFractionDigits="2" value="${trabsocial.vlr_contrapartida_adt_1}"/>"/>
								<label for="fonte_contrapartida_01_aditivo_TRAB" style="width: 100px">Fonte</label> 
								<input type="text" id="fonte_contrapartida_01_aditivo_TRAB" name="fonte_contrapartida_01_aditivo_TRAB" style="width: 270px" value="<%=((ContratacaoTrabSocial)request.getAttribute("trabsocial")).getDes_contrapartida_adt_1()%>" />
							</p>
							<p class="width100">
								<label for="vl_contrapartida_02_aditivo_TRAB" style="width: 210px">Valor&nbsp;<i>R$</i></label> 
								<input type="text" id="vl_contrapartida_02_aditivo_TRAB" name="vl_contrapartida_02_aditivo_TRAB"  style="width: 270px" value="<fmt:formatNumber maxFractionDigits="2" minFractionDigits="2" value="${trabsocial.vlr_contrapartida_adt_2}"/>"/>
								<label for="fonte_contrapartida_02_aditivo_TRAB" style="width: 100px">Fonte</label> 
								<input type="text" id="fonte_contrapartida_02_aditivo_TRAB" name="fonte_contrapartida_02_aditivo_TRAB" style="width: 270px" value="<%=((ContratacaoTrabSocial)request.getAttribute("trabsocial")).getDes_contrapartida_adt_2()%>"/>
							</p>
							<p class="width100">
								<label for="vl_contrapartida_03_aditivo_TRAB" style="width: 210px">Valor&nbsp;<i>R$</i></label> 
								<input type="text" id="vl_contrapartida_03_aditivo_TRAB" name="vl_contrapartida_03_aditivo_TRAB"  style="width: 270px" value="<fmt:formatNumber maxFractionDigits="2" minFractionDigits="2" value="${trabsocial.vlr_contrapartida_adt_3}"/>"/>
								<label for="fonte_contrapartida_03_aditivo_TRAB" style="width: 100px">Fonte</label> 
								<input type="text" id="fonte_contrapartida_03_aditivo_TRAB" name="fonte_contrapartida_03_aditivo_TRAB" style="width: 270px" value="<%=((ContratacaoTrabSocial)request.getAttribute("trabsocial")).getDes_contrapartida_adt_3()%>"/>
							</p>
							<p class="width100">
								<label for="vl_contrapartida_04_aditivo_TRAB" style="width: 210px">Valor&nbsp;<i>R$</i></label> 
								<input type="text" id="vl_contrapartida_04_aditivo_TRAB" name="vl_contrapartida_04_aditivo_TRAB"  style="width: 270px" value="<fmt:formatNumber maxFractionDigits="2" minFractionDigits="2" value="${trabsocial.vlr_contrapartida_adt_4}"/>"/>
								<label for="fonte_contrapartida_04_aditivo_TRAB" style="width: 100px">Fonte</label> 
								<input type="text" id="fonte_contrapartida_04_aditivo_TRAB" name="fonte_contrapartida_04_aditivo_TRAB" style="width: 270px" value="<%=((ContratacaoTrabSocial)request.getAttribute("trabsocial")).getDes_contrapartida_adt_4()%>"/>
							</p>
						</div>
						
						
						<legend class="legend1">Contratação de Regularização Fundiária</legend>
						<div>
							<p class="width100">
								<label for="contratacao_reg_fund" style="width: 170px">Estágio de Contratação</label> 
								<select id="contratacao_reg_fund" name="contratacao_reg_fund" onchange="mostraSelect(this, '500')">
									<%
											if(request.getAttribute("allEstagConReg") != null){
											ArrayList<EstagioContratRegFundBean> regFund = (ArrayList)request.getAttribute("allEstagConReg");
											
											for(int i=0; i < regFund.size(); i++)
											{
										%>
										<option value="<%= regFund.get(i).getCod_estagio_contrat_reg_fund() %>" <%=regFund.get(i).getSelected() %>>
										<%= regFund.get(i).getDes_estagio_contrat_reg_fund() %>
										</option>
										<%}}%>
								</select>
							</p>
							<span id="span_500" style="display: none">
									<p class="width100">
										<label for="contratacao_reg_fund_obs" style="width: 170px">Observação Contratação de Obras</label> 
										<textarea style="width: 410px; height:100px" name="contratacao_reg_fund_obs" id="contratacao_reg_fund_obs"><%=((ContratacaoRegFunBean)request.getAttribute("regfundiaria")).getDes_obs_estagio_cont_reg_fund()%></textarea>
									</p>
							</span>
							<p class="width100">
								<label for="ois_reg_fund" style="width: 800px; text-align:left">OIS</label>
								<label for="prevista_reg_fund" style="width: 170px">Prevista para</label>
								<input type="text" id="prevista_reg_fund" name="prevista_reg_fund" value="<%=((ContratacaoRegFunBean)request.getAttribute("regfundiaria")).getDat_ois_prevista_para()%>"/>
								<label for="assinada_reg_fund" style="width: 120px">Assinada em</label> 
								<input type="text" id="assinada_reg_fund" name="assinada_reg_fund" value="<%=((ContratacaoRegFunBean)request.getAttribute("regfundiaria")).getDat_ois_assinada_em()%>"/>
							</p>
							<p class="width100">
								<label for="processo_adm_reg_fund" style="width: 170px">Nº do Processo Administrativo</label> 
								<input type="text" id="processo_adm_reg_fund" name="processo_adm_reg_fund" value="<%=((ContratacaoRegFunBean)request.getAttribute("regfundiaria")).getNum_processo_adm()%>"/>
								<label for="licitacao_reg_fund" style="width: 120px">Nº do Processo Licitação</label> 
								<input type="text" id="licitacao_reg_fund" name="licitacao_reg_fund" value="<%=((ContratacaoRegFunBean)request.getAttribute("regfundiaria")).getNum_processo_licitacao()%>"/>
							</p>
							<p class="width100">
								<label for="contrato_reg_fund" style="width: 170px">Nº do Contrato</label> 
								<input type="text" id="contrato_reg_fund" name="contrato_reg_fund" value="<%=((ContratacaoRegFunBean)request.getAttribute("regfundiaria")).getNum_contrato()%>"/>
							</p>
						</div>
						<legend class="legend2">Valores Contratados - Original</legend>
						<div class="colunas">
							<p class="width100">
								<label for="vl_contr_repasse" style="width: 100px">Repasse Financiamento&nbsp;<i>R$</i></label> 
								<input type="text" id="vl_contr_repasse" name="vl_contr_repasse"  style="width: 170px" value="<fmt:formatNumber maxFractionDigits="2" minFractionDigits="2" value="${regfundiaria.vlr_repasse_financiamento_orig}"/>" />
								<label for="vl_contr_contrapartida" style="width: 120px">Contrapartida Tesouro&nbsp;<i>R$</i></label> 
								<input type="text" id="vl_contr_contrapartida" name="vl_contr_contrapartida"  style="width: 170px" value="<fmt:formatNumber maxFractionDigits="2" minFractionDigits="2" value="${regfundiaria.vlr_contrapartida_tesouro_orig}"/>"/>
								<label for="vl_contr_total" style="width: 100px">Valor Total&nbsp;<i>R$</i></label> 
								<input type="text" id="vl_contr_total" name="vl_contr_total"  style="width: 170px" value="<fmt:formatNumber maxFractionDigits="2" minFractionDigits="2" value="${regfundiaria.vlr_total_orig}"/>" />
							</p>
							<legend class="legend2">Contrapartida Outras Fontes</legend>
							<p class="width100">
								<label for="vl_contrapartida_01" style="width: 210px">Valor&nbsp;<i>R$</i></label> 
								<input type="text" id="vl_contrapartida_01" name="vl_contrapartida_01"  style="width: 270px" value="<fmt:formatNumber maxFractionDigits="2" minFractionDigits="2" value="${regfundiaria.vlr_contrapartida_orig_1}"/>"/>
								<label for="fonte_contrapartida_01" style="width: 100px">Fonte</label> 
								<input type="text" id="fonte_contrapartida_01" name="fonte_contrapartida_01" style="width: 270px" value="<%=((ContratacaoRegFunBean)request.getAttribute("regfundiaria")).getDes_contrapartida_1()%>"/>
							</p>
							<p class="width100">
								<label for="vl_contrapartida_02" style="width: 210px">Valor&nbsp;<i>R$</i></label> 
								<input type="text" id="vl_contrapartida_02" name="vl_contrapartida_02"  style="width: 270px" value="<fmt:formatNumber maxFractionDigits="2" minFractionDigits="2" value="${regfundiaria.vlr_contrapartida_orig_2}"/>"/>
								<label for="fonte_contrapartida_02" style="width: 100px">Fonte</label> 
								<input type="text" id="fonte_contrapartida_02" name="fonte_contrapartida_02"  style="width: 270px" value="<%=((ContratacaoRegFunBean)request.getAttribute("regfundiaria")).getDes_contrapartida_2()%>"/>
							</p>
							<p class="width100">
								<label for="vl_contrapartida_03" style="width: 210px">Valor&nbsp;<i>R$</i></label> 
								<input type="text" id="vl_contrapartida_03" name="vl_contrapartida_03"  style="width: 270px" value="<fmt:formatNumber maxFractionDigits="2" minFractionDigits="2" value="${regfundiaria.vlr_contrapartida_orig_3}"/>"/>
								<label for="fonte_contrapartida_03" style="width: 100px">Fonte</label> 
								<input type="text" id="fonte_contrapartida_03" name="fonte_contrapartida_03" style="width: 270px" value="<%=((ContratacaoRegFunBean)request.getAttribute("regfundiaria")).getDes_contrapartida_3()%>" />
							</p>
							<p class="width100">
								<label for="vl_contrapartida_04" style="width: 210px">Valor&nbsp;<i>R$</i></label> 
								<input type="text" id="vl_contrapartida_04" name="vl_contrapartida_04"  style="width: 270px" value="<fmt:formatNumber maxFractionDigits="2" minFractionDigits="2" value="${regfundiaria.vlr_contrapartida_orig_4}"/>"/>
								<label for="fonte_contrapartida_04" style="width: 100px">Fonte</label> 
								<input type="text" id="fonte_contrapartida_04" name="fonte_contrapartida_04" style="width: 270px" value="<%=((ContratacaoRegFunBean)request.getAttribute("regfundiaria")).getDes_contrapartida_4()%>"/>
							</p>
						</div>
						<legend class="legend2">Valores Contratados - Com Aditivo</legend>
						<div class="colunas">
							<p class="width100">
								<label for="vl_contr_repasse_aditivo" style="width: 100px">Repasse Financiamento&nbsp;<i>R$</i></label> 
								<input type="text" id="vl_contr_repasse_aditivo" name="vl_contr_repasse_aditivo"  style="width: 170px" value="<fmt:formatNumber maxFractionDigits="2" minFractionDigits="2" value="${regfundiaria.vlr_repasse_financiamento_adt}"/>"/>
								<label for="vl_contr_contrapartida_aditivo" style="width: 120px">Contrapartida Tesouro&nbsp;<i>R$</i></label> 
								<input type="text" id="vl_contr_contrapartida_aditivo" name="vl_contr_contrapartida_aditivo"  style="width: 170px" value="<fmt:formatNumber maxFractionDigits="2" minFractionDigits="2" value="${regfundiaria.vlr_contrapartida_tesouro_adt}"/>"/>
								<label for="vl_contr_total_aditivo" style="width: 100px">Valor Total&nbsp;<i>R$</i></label> 
								<input type="text" id="vl_contr_total_aditivo" name="vl_contr_total_aditivo"  style="width: 170px" value="<fmt:formatNumber maxFractionDigits="2" minFractionDigits="2" value="${regfundiaria.vlr_total_adt}"/>" />
							</p>
							<legend class="legend2">Contrapartida Outras Fontes</legend>
							<p class="width100">
								<label for="vl_contrapartida_01_aditivo" style="width: 210px">Valor&nbsp;<i>R$</i></label> 
								<input type="text" id="vl_contrapartida_01_aditivo" name="vl_contrapartida_01_aditivo"  style="width: 270px" value="<fmt:formatNumber maxFractionDigits="2" minFractionDigits="2" value="${regfundiaria.vlr_contrapartida_adt_1}"/>"/>
								<label for="fonte_contrapartida_01_aditivo" style="width: 100px">Fonte</label> 
								<input type="text" id="fonte_contrapartida_01_aditivo" name="fonte_contrapartida_01_aditivo" style="width: 270px" value="<%=((ContratacaoRegFunBean)request.getAttribute("regfundiaria")).getDes_contrapartida_adt_1()%>"/>
							</p>
							<p class="width100">
								<label for="vl_contrapartida_02_aditivo" style="width: 210px">Valor&nbsp;<i>R$</i></label> 
								<input type="text" id="vl_contrapartida_02_aditivo" name="vl_contrapartida_02_aditivo"  style="width: 270px" value="<fmt:formatNumber maxFractionDigits="2" minFractionDigits="2" value="${regfundiaria.vlr_contrapartida_adt_2}"/>"/>
								<label for="fonte_contrapartida_02_aditivo" style="width: 100px">Fonte</label> 
								<input type="text" id="fonte_contrapartida_02_aditivo" name="fonte_contrapartida_02_aditivo" style="width: 270px" value="<%=((ContratacaoRegFunBean)request.getAttribute("regfundiaria")).getDes_contrapartida_adt_2()%>"/>
							</p>
							<p class="width100">
								<label for="vl_contrapartida_03_aditivo" style="width: 210px">Valor&nbsp;<i>R$</i></label> 
								<input type="text" id="vl_contrapartida_03_aditivo" name="vl_contrapartida_03_aditivo"  style="width: 270px" value="<fmt:formatNumber maxFractionDigits="2" minFractionDigits="2" value="${regfundiaria.vlr_contrapartida_adt_3}"/>"/>
								<label for="fonte_contrapartida_03_aditivo" style="width: 100px">Fonte</label> 
								<input type="text" id="fonte_contrapartida_03_aditivo" name="fonte_contrapartida_03_aditivo" style="width: 270px" value="<%=((ContratacaoRegFunBean)request.getAttribute("regfundiaria")).getDes_contrapartida_adt_3()%>"/>
							</p>
							<p class="width100">
								<label for="vl_contrapartida_04_aditivo" style="width: 210px">Valor&nbsp;<i>R$</i></label> 
								<input type="text" id="vl_contrapartida_04_aditivo" name="vl_contrapartida_04_aditivo"  style="width: 270px" value="<fmt:formatNumber maxFractionDigits="2" minFractionDigits="2" value="${regfundiaria.vlr_contrapartida_adt_4}"/>"/>
								<label for="fonte_contrapartida_04_aditivo" style="width: 100px">Fonte</label> 
								<input type="text" id="fonte_contrapartida_04_aditivo" name="fonte_contrapartida_04_aditivo" style="width: 270px" value="<%=((ContratacaoRegFunBean)request.getAttribute("regfundiaria")).getDes_contrapartida_adt_4()%>"/>
							</p>
						</div>
						
						<legend>Elaboração de Projetos e Aprovações</legend>
						<div>
							<p class="width100">
								<label for="projetos" style="width:170px">Projetos</label> 
								<select id="projetos" name="projetos" onchange="mostraSelect(this, '100')" style="width: 200px">
									<%
											if(request.getAttribute("projeto") != null){
											ArrayList<EstagioAprovProjBean> aprov = (ArrayList)request.getAttribute("projeto");
											
											for(int i=0; i < aprov.size(); i++)
											{
										%>
										<option value="<%= aprov.get(i).getCod_estagio_aprov_proj() %>" <%=aprov.get(i).getSelected() %>>
										<%= aprov.get(i).getDes_estagio_aprov_proj() %>
										</option>
										<%}}%>
								</select>
								<span id="span_100" style="display: none">
									<label for="projetos_obs">Observação</label> 
									<textarea style="width: 410px; height:100px" name="projetos_obs" id="projetos_obs"><%=((EmpBean)request.getAttribute("Empreend")).getDes_etapa_projeto()%></textarea>
								</span>
							</p>
							<p class="width100">
								<label for="licenciamento_aprovacao" style="width:170px">Licenciamento Ambiental</label> 
								<select id="licenciamento_aprovacao" name="licenciamento_aprovacao" onchange="mostraSelect(this, '101')" style="width: 200px">
									<%
											if(request.getAttribute("licAmb") != null){
											ArrayList<EstagioAprovProjBean> aprov = (ArrayList)request.getAttribute("licAmb");
											
											for(int i=0; i < aprov.size(); i++)
											{
										%>
										<option value="<%= aprov.get(i).getCod_estagio_aprov_proj() %>" <%=aprov.get(i).getSelected() %>>
										<%= aprov.get(i).getDes_estagio_aprov_proj() %>
										</option>
										<%}}%>
								</select>
								<span id="span_101" style="display: none">
									<label for="licenciamento_obs">Observação</label> 
									<textarea style="width: 410px; height:100px" name="licenciamento_obs" id="licenciamento_obs"><%=((EmpBean)request.getAttribute("Empreend")).getDes_etapa_licenciamento_aprov()%></textarea>
								</span>
							</p>
							<p class="width100">
								<label for="cazeis" style="width:170px">Cazeis</label> 
								<select id="cazeis" name="cazeis" onchange="mostraSelect(this, '102')" style="width: 200px">
									<%
											if(request.getAttribute("cazeis") != null){
											ArrayList<EstagioAprovProjBean> aprov = (ArrayList)request.getAttribute("cazeis");
											
											for(int i=0; i < aprov.size(); i++)
											{
										%>
										<option value="<%= aprov.get(i).getCod_estagio_aprov_proj() %>" <%=aprov.get(i).getSelected() %>>
										<%= aprov.get(i).getDes_estagio_aprov_proj() %>
										</option>
										<%}}%>
								</select>
								<span id="span_102" style="display: none">
									<label for="cazeis_obs">Observação</label> 
									<textarea style="width: 410px; height:100px" name="cazeis_obs" id="cazeis_obs"><%=((EmpBean)request.getAttribute("Empreend")).getDes_obs_estag_aprov_cazeis()%></textarea>
								</span>
							</p>
							<p class="width100">
								<label for="cehais" style="width:170px">Cehais</label> 
								<select id="cehais" name="cehais" onchange="mostraSelect(this, '103')" style="width: 200px">
									<%
											if(request.getAttribute("cehais") != null){
											ArrayList<EstagioAprovProjBean> aprov = (ArrayList)request.getAttribute("cehais");
											
											for(int i=0; i < aprov.size(); i++)
											{
										%>
										<option value="<%= aprov.get(i).getCod_estagio_aprov_proj() %>" <%=aprov.get(i).getSelected() %>>
										<%= aprov.get(i).getDes_estagio_aprov_proj() %>
										</option>
										<%}}%>
								</select>
								<span id="span_103" style="display: none">
									<label for="cehais_obs">Observação</label> 
									<textarea style="width: 410px; height:100px" name="cehais_obs" id="cehais_obs"><%=((EmpBean)request.getAttribute("Empreend")).getDes_obs_estag_aprov_cehais()%></textarea>
								</span>
							</p>
							<p class="width100">
								<label for="graprohab" style="width:170px">Graprohab</label> 
								<select id="graprohab" name="graprohab" onchange="mostraSelect(this, '104')" style="width: 200px">
									<%
											if(request.getAttribute("graproha") != null){
											ArrayList<EstagioAprovProjBean> aprov = (ArrayList)request.getAttribute("graproha");
											
											for(int i=0; i < aprov.size(); i++)
											{
										%>
										<option value="<%= aprov.get(i).getCod_estagio_aprov_proj() %>" <%=aprov.get(i).getSelected() %>>
										<%= aprov.get(i).getDes_estagio_aprov_proj() %>
										</option>
										<%}}%>
								</select>
								<span id="span_104" style="display: none">
									<label for="graprohab_obs">Observação</label> 
									<textarea style="width: 410px; height:100px" name="graprohab_obs" id="graprohab_obs"><%=((EmpBean)request.getAttribute("Empreend")).getDes_obs_estag_aprov_graproha()%></textarea>
								</span>
							</p>
							<p class="width100">
								<label for="cidade_legal" style="width:170px">Cidade Legal</label> 
								<select id="cidade_legal" name="cidade_legal" onchange="mostraSelect(this, '105')" style="width: 200px">
									<%
											if(request.getAttribute("cidLegal") != null){
											ArrayList<EstagioAprovProjBean> aprov = (ArrayList)request.getAttribute("cidLegal");
											
											for(int i=0; i < aprov.size(); i++)
											{
										%>
										<option value="<%= aprov.get(i).getCod_estagio_aprov_proj() %>" <%=aprov.get(i).getSelected() %>>
										<%= aprov.get(i).getDes_estagio_aprov_proj() %>
										</option>
										<%}}%>
								</select>
								<span id="span_105" style="display: none">
									<label for="cidade_obs">Observação</label> 
									<textarea style="width: 410px; height:100px" name="cidade_obs" id="cidade_obs"><%=((EmpBean)request.getAttribute("Empreend")).getDes_obs_estag_aprov_cid_legal()%></textarea>
								</span>
							</p>
							<p class="width100">
								<label for="agua_esgoto" style="width:170px">Água e Esgoto</label> 
								<select id="agua_esgoto" name="agua_esgoto" onchange="mostraSelect(this, '106')" style="width: 200px">
									<%
											if(request.getAttribute("aguaEsgoto") != null){
											ArrayList<EstagioAprovProjBean> aprov = (ArrayList)request.getAttribute("aguaEsgoto");
											
											for(int i=0; i < aprov.size(); i++)
											{
										%>
										<option value="<%= aprov.get(i).getCod_estagio_aprov_proj() %>" <%=aprov.get(i).getSelected() %>>
										<%= aprov.get(i).getDes_estagio_aprov_proj() %>
										</option>
										<%}}%>
								</select>
								<span id="span_106" style="display: none">
									<label for="agua_obs">Observação</label> 
									<textarea style="width: 410px; height:100px" name="agua_obs" id="agua_obs"><%=((EmpBean)request.getAttribute("Empreend")).getDes_obs_estag_aprov_agua_esgo()%></textarea>
								</span>
							</p>
							<p class="width100">
								<label for="gas" style="width:170px">Gás</label> 
								<select id="gas" name="gas" onchange="mostraSelect(this, '107')" style="width: 200px">
									<%
											if(request.getAttribute("gas") != null){
											ArrayList<EstagioAprovProjBean> aprov = (ArrayList)request.getAttribute("gas");
											
											for(int i=0; i < aprov.size(); i++)
											{
										%>
										<option value="<%= aprov.get(i).getCod_estagio_aprov_proj() %>" <%=aprov.get(i).getSelected() %>>
										<%= aprov.get(i).getDes_estagio_aprov_proj() %>
										</option>
										<%}}%>
								</select>
								<span id="span_107" style="display: none">
									<label for="gas_obs">Observação</label> 
									<textarea style="width: 410px; height:100px" name="gas_obs" id="gas_obs"><%=((EmpBean)request.getAttribute("Empreend")).getDes_obs_estag_aprov_gas()%></textarea>
								</span>
							</p>
							<p class="width100">
								<label for="energia_eletrica" style="width:170px">Energia El�trica</label> 
								<select id="energia_eletrica" name="energia_eletrica" onchange="mostraSelect(this, '108')" style="width: 200px">
									<%
											if(request.getAttribute("energiaEle") != null){
											ArrayList<EstagioAprovProjBean> aprov = (ArrayList)request.getAttribute("energiaEle");
											
											for(int i=0; i < aprov.size(); i++)
											{
										%>
										<option value="<%= aprov.get(i).getCod_estagio_aprov_proj() %>" <%=aprov.get(i).getSelected() %>>
										<%= aprov.get(i).getDes_estagio_aprov_proj() %>
										</option>
										<%}}%>
								</select>
								<span id="span_108" style="display: none">
									<label for="energia_obs">Observação</label> 
									<textarea style="width: 410px; height:100px" name="energia_obs" id="energia_obs"><%=((EmpBean)request.getAttribute("Empreend")).getDes_obs_estag_aprov_energ_ele()%></textarea>
								</span>
							</p>
							<p class="width100">
								<label for="telecomunicacao" style="width:170px">Telecomunicações</label> 
								<select id="telecomunicacao" name="telecomunicacao" onchange="mostraSelect(this, '109')" style="width: 200px">
									<%
											if(request.getAttribute("telecom") != null){
											ArrayList<EstagioAprovProjBean> aprov = (ArrayList)request.getAttribute("telecom");
											
											for(int i=0; i < aprov.size(); i++)
											{
										%>
										<option value="<%= aprov.get(i).getCod_estagio_aprov_proj() %>" <%=aprov.get(i).getSelected() %>>
										<%= aprov.get(i).getDes_estagio_aprov_proj() %>
										</option>
										<%}}%>
								</select>
								<span id="span_109" style="display: none">
									<label for="telecomunicacao_obs">Observação</label> 
									<textarea style="width: 410px; height:100px" name="telecomunicacao_obs" id="telecomunicacao_obs"><%=((EmpBean)request.getAttribute("Empreend")).getDes_obs_estag_aprov_telecom()%></textarea>
								</span>
							</p>
							<p class="width100">
								<label for="bombeiros" style="width:170px">Bombeiros</label> 
								<select id="bombeiros" name="bombeiros" onchange="mostraSelect(this, '110')" style="width: 200px">
									<%
											if(request.getAttribute("bombeiro") != null){
											ArrayList<EstagioAprovProjBean> aprov = (ArrayList)request.getAttribute("bombeiro");
											
											for(int i=0; i < aprov.size(); i++)
											{
										%>
										<option value="<%= aprov.get(i).getCod_estagio_aprov_proj() %>" <%=aprov.get(i).getSelected() %>>
										<%= aprov.get(i).getDes_estagio_aprov_proj() %>
										</option>
										<%}}%>
								</select>
								<span id="span_110" style="display: none">
									<label for="bombeiros_obs">Observação</label> 
									<textarea style="width: 410px; height:100px" name="bombeiros_obs" id="bombeiros_obs"><%=((EmpBean)request.getAttribute("Empreend")).getDes_obs_estag_aprov_bombeiros()%></textarea>
								</span>
							</p>
							<p class="width100">
								<label for="der" style="width:170px">DER</label> 
								<select id="der" name="der" onchange="mostraSelect(this, '111')" style="width: 200px">
									<%
											if(request.getAttribute("der") != null){
											ArrayList<EstagioAprovProjBean> aprov = (ArrayList)request.getAttribute("der");
											
											for(int i=0; i < aprov.size(); i++)
											{
										%>
										<option value="<%= aprov.get(i).getCod_estagio_aprov_proj() %>" <%=aprov.get(i).getSelected() %>>
										<%= aprov.get(i).getDes_estagio_aprov_proj() %>
										</option>
										<%}}%>
								</select>
								<span id="span_111" style="display: none">
									<label for="der_obs">Observação</label> 
									<textarea style="width: 410px; height:100px" name="der_obs" id="der_obs"><%=((EmpBean)request.getAttribute("Empreend")).getDes_obs_estag_aprov_der()%></textarea>
								</span>
							</p>
							<p class="width100">
								<label for="transpetro" style="width:170px">Transpetro</label> 
								<select id="transpetro" name="transpetro" onchange="mostraSelect(this, '112')" style="width: 200px">
									<%
											if(request.getAttribute("transpetro") != null){
											ArrayList<EstagioAprovProjBean> aprov = (ArrayList)request.getAttribute("transpetro");
											
											for(int i=0; i < aprov.size(); i++)
											{
										%>
										<option value="<%= aprov.get(i).getCod_estagio_aprov_proj() %>" <%=aprov.get(i).getSelected() %>>
										<%= aprov.get(i).getDes_estagio_aprov_proj() %>
										</option>
										<%}}%>
								</select>
								<span id="span_112" style="display: none">
									<label for="transpetro_obs">Observação</label> 
									<textarea style="width: 410px; height:100px" name="transpetro_obs" id="transpetro_obs"><%=((EmpBean)request.getAttribute("Empreend")).getDes_obs_estag_aprov_transpetr()%></textarea>
								</span>
							</p>
						</div>
						<legend>Andamento das Ações</legend>
						<script>
						function mostraSelect(atual, nomeSelect)
						{
							campo = "#span_"+nomeSelect;
							if($(atual).val() == "")
							{
								$(campo).slideToggle();
							}
							else
							{
								if($(campo).css("display") == "none")
								{
									$(campo).slideToggle();
								}
							}
						}
						</script>
						<div>
							<p class="width100">
								<label for="social" style="width:170px">Social</label> 
								<select id="social" name="social" onchange="mostraSelect(this, '02')" style="width: 200px">
									<%
											if(request.getAttribute("aSocial") != null){
											ArrayList<AndamentoSocialBean> asocial = (ArrayList)request.getAttribute("aSocial");
											
											for(int i=0; i < asocial.size(); i++)
											{
										%>
										<option value="<%= asocial.get(i).getCod_andamento_social() %>" <%=asocial.get(i).getSelected() %>>
										<%= asocial.get(i).getDes_andamento_social() %>
										</option>
										<%}}%>
								</select>
								<span id="span_02" style="display: none">
									<label for="social_obs">Observação</label> 
									<textarea style="width: 410px; height:100px" name="social_obs" id="social_obs"><%=((EmpBean)request.getAttribute("Empreend")).getDes_obs_andamento_social()%></textarea>
								</span>
							</p>
							
							<p class="width100">
								<label for="social_contrada" style="width:170px">Social Contratada</label> 
								<select id="social_contrada" name="social_contrada" onchange="mostraSelect(this, '10')" style="width: 200px">
									<%
											if(request.getAttribute("aSocialContr") != null){
											ArrayList<AndamentoSocialContrBean> asocialContr = (ArrayList)request.getAttribute("aSocialContr");
											
											for(int i=0; i < asocialContr.size(); i++)
											{
										%>
										<option value="<%= asocialContr.get(i).getCod_andamento_social_contr() %>" <%=asocialContr.get(i).getSelected() %>>
										<%= asocialContr.get(i).getDes_andamento_social_contr() %>
										</option>
										<%}}%>
								</select>
								<span id="span_10" style="display: none">
									<label for="social_contrada_obs">Observação</label> 
									<textarea style="width: 410px; height:100px" name="social_contrada_obs" id="social_contrada_obs"><%=((EmpBean)request.getAttribute("Empreend")).getDes_obs_andamento_social_contr()%></textarea>
								</span>
							</p>
							
							<p class="width100">
								<label for="recuperacao_ambiental" style="width:170px">Recuperação Ambiental/Compensação</label> 
								<select id="recuperacao_ambiental" name="recuperacao_ambiental" onchange="mostraSelect(this, '11')" style="width: 200px">
									<%
											if(request.getAttribute("arecamb") != null){
											ArrayList<AndamentoRecAmbBean> arecamb = (ArrayList)request.getAttribute("arecamb");
											
											for(int i=0; i < arecamb.size(); i++)
											{
										%>
										<option value="<%= arecamb.get(i).getCod_andamento_rec_amb() %>" <%=arecamb.get(i).getSelected() %>>
										<%= arecamb.get(i).getDes_andamento_rec_amb() %>
										</option>
										<%}}%>
								</select>
								<span id="span_11" style="display: none">
									<label for="recuperacao_ambiental_obs">Observação</label> 
									<textarea style="width: 410px; height:100px" name="recuperacao_ambiental_obs" id="recuperacao_ambiental_obs"><%=((EmpBean)request.getAttribute("Empreend")).getDes_obs_andamento_rec_amb()%></textarea>
								</span>
							</p>
							
							<p class="width100">
								<label for="juridica_fundiaria" style="width:170px">Jurídica-Fundiária</label> 
								<select id="juridica_fundiaria" name="juridica_fundiaria" onchange="mostraSelect(this, '03')" style="width: 200px">
									<%
											if(request.getAttribute("aJuridico") != null){
											ArrayList<AndamentoJuridicoBean> ajuridico = (ArrayList)request.getAttribute("aJuridico");
											
											for(int i=0; i < ajuridico.size(); i++)
											{
										%>
										<option value="<%= ajuridico.get(i).getCod_andamento_juridico_fundiar() %>" <%=ajuridico.get(i).getSelected() %>>
										<%= ajuridico.get(i).getDes_andamento_juridico_fundiar() %>
										</option>
										<%}}%>
								</select>
								<span id="span_03" style="display: none">
									<label for="juridica_fundiaria_obs">Observação</label> 
									<textarea style="width: 410px; height:100px" name="juridica_fundiaria_obs" id="juridica_fundiaria_obs"><%=((EmpBean)request.getAttribute("Empreend")).getDes_obs_andamento_juridico_fun()%> </textarea>
								</span>
							</p>
							<p class="width100">
								<label for="obras" style="width:170px">Obras</label> 
								<select id="obras" name="obras" onchange="mostraSelect(this, '07')" style="width: 200px">
									<%
											if(request.getAttribute("aObra") != null){
											ArrayList<AndamentoObraBean> aobra = (ArrayList)request.getAttribute("aObra");
											
											for(int i=0; i < aobra.size(); i++)
											{
									%>
										<option value="<%= aobra.get(i).getCod_andamento_obra() %>" <%=aobra.get(i).getSelected() %>>
										<%= aobra.get(i).getDes_andamento_obra() %>
										</option>
										<%}}%>
								</select>
								<span id="span_07" style="display: none">
									<label for="obras_obs">Observação</label> 
									<textarea style="width: 410px; height:100px" name="obras_obs" id="obras_obs"><%=((EmpBean)request.getAttribute("Empreend")).getDes_obs_andamento_obra()%></textarea>
								</span>
							</p>
						</div>
						<legend>Execução Físico-Financeira</legend>
						<div>
							<p class="width100">
							
								<label for="ex_valor_total" style="width: 100px">Valor Total&nbsp;<i>R$</i></label> 
								<input type="text" id="ex_valor_total" name="ex_valor_total"  style="width: 170px" value="<fmt:formatNumber maxFractionDigits="2" minFractionDigits="2" value="${Empreend.vlr_total_exec_fisico_financ}"/>"/>
								<label for="ex_acumulado" style="width: 120px">Acumulado&nbsp;<i>R$</i></label> 
								<input type="text" id="ex_acumulado" name="ex_acumulado"  style="width: 170px" value="<fmt:formatNumber maxFractionDigits="2" minFractionDigits="2" value="${Empreend.vlr_acumul_exec_fisico_financ}"/>"/>
								<label for="ex_saldo" style="width: 100px">Saldo&nbsp;<i>R$</i></label> 
								<input type="text" id="ex_saldo" name="ex_saldo"  style="width: 170px" value="<fmt:formatNumber maxFractionDigits="2" minFractionDigits="2" value="${Empreend.vlr_saldo_exec_fisico_financ}"/>"/>
							</p>
						</div>
						<legend>Galeria de Projetos e Fotos</legend>
						<div style="padding: 10px">	
					
				<% if(request.getAttribute("consultaImagem") != null)
				{		
						List<String> consultaImage =(List) request.getAttribute("consultaImagem");
						List<String> nomeImage = (List)request.getAttribute("nomeImage");
										
					for(int x=0;x<consultaImage.size();x++)
					{%>
						<div class="align-left contornoBox">
						<a href="<% out.println(consultaImage.get(x));%>" target="_blank" title="Ampliar"><img src="<% out.println(consultaImage.get(x));%>"  height="50px" width="50px" ></a>
						<br/>
						<% out.println(nomeImage.get(x));%>
						<br/>
						<a onclick="ocultaImagem(this, 'deleteImageEmp?idt_empreendimento=<%= ((EmpBean)request.getAttribute("Empreend")).getIdt_empreendimento()%>&delete_image=<%out.print(nomeImage.get(x));%>')" href="javascript: void()">Remover</a> 
						 
					</div>
					<%}
					
									
					}%></div>
						<legend>Incluir Novas Fotos</legend>
						<div class="colunas">	
										
							<div id="carregandoGaleria_01" style="display: none; background-image: url(images/loadingAnimation.gif); height: 13px; width: 208px; margin-left: 150px"></div>
							
							<p id="carregaGaleria_01">
								<iframe src="uploadImagemEmp.jsp?idt_empreendimento=<%= ((EmpBean)request.getAttribute("Empreend")).getIdt_empreendimento()%>" frameborder="0" width="300" height="60" scrolling="no"></iframe>
								
							</p>
						</div>
						
						
						<div class="colunas" style="text-align:left" id="galeria_01">
					
							
						</div>
					
						
					</fieldset>

					<fieldset class="step">
						<legend>Confirme</legend>
							<br /><br />
							<div style="width: 1000px; text-align:center; ">
								<%if(request.getAttribute("update") != null){%>
								<h2>Confirmar alteração de Empreendimento?</h2>
								<%}else{%>
								<h2>Confirmar cadastro de Empreendimento?</h2>
								<%}%>
							</div>
							<br />
							<center>
							<table border="0" style="width: 200px">
								<tr>
									<td><button id="registerButton" type="submit" onclick="return verificaSubmit()">Sim</button></td>
									<td><button id="registerButton" type="Button" onClick="javascript:mainPage()">N�o</button></td>
									
								</tr>
							</table>
						</center>
					</fieldset>

				</form>

			</div>

			<div id="navigation" style="display: none;">
				<ul>
					<li class="selected"><a href="#" onclick="location.href='#topo';">Dados Gerais</a></li>
					<li><a href="#topo" onclick="location.href='#topo'">Confirme</a></li>
				</ul>
			</div>

		</div>
		
		<div id="rodape">
			Copyright © 2012 - SECRETARIA DE HABITAÇÃO DE SÃO BERNARDO DO CAMPO
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