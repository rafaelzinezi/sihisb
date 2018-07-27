<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
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
<%@page import="br.gov.sp.saobernardo.sehab.empbean.EmpImpressaoBean" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.List" %>

<%@page import="java.util.ArrayList"%>
<%@page import="br.gov.sp.saobernardo.sehab.loginBean.LoginBean" %>
<%  
LoginBean usuario = (LoginBean)session.getAttribute("user");  
%>  

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Prefeitura Minicipal de São Bernardo do Campo - Sihisb</title>
<script type="text/javascript" src="js/jquery.min.js"></script>
<meta name="description" content="SIHISB - Planejamento e monitoramento da Política Habitacional no município" />
<meta name="keywords" content="SEHAB SIHISP MAPA HABITAÇÃO MONITORAMENTO MAPEAMENTO" />
<META HTTP-EQUIV="CACHE-CONTROL" CONTENT="NO-CACHE">
<META HTTP-EQUIV="PRAGMA" CONTENT="NO-CACHE">
<link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />
<link rel="stylesheet" href="css/print.css" type="text/css"
	media="screen,print" />
<script type="text/javascript">
function imprimir()
{
	document.getElementById("printar").style.visibility="hidden";
	window.print();
}
</script>
</head>

<body onfocus="document.getElementById('printar').style.visibility='visible';">
	<div id="top">
		<img src="images/logo_2012.jpg" title="São Bernardo do Campo"/>
		<td><h1><%=((EmpImpressaoBean)request.getAttribute("imprime")).getNom_empreendimento() %></h1></td>
	</div>
	
	<div id="conteudo">
		<table>
			<tr class="topic">
				<td colspan="6">
					<h1>Identificação do Empreendimento</h1>
				</td>
			</tr>
			<tr>
				<td width="150"><label>Nome do Empreendimento<label></td>
				<td><%=((EmpImpressaoBean)request.getAttribute("imprime")).getNom_empreendimento() %></td>
			
				<td width="150"><label>Famílias Beneficiadas<label></td>
				<td colspan="3">${imprime.qtd_familias_atendidas}</td>
			</tr>
			
			<tr>
				<td width="150"><label>Prazo da obra<label></td>
				<td>${imprime.qtd_meses_obra}</td>
			
				<td width="150"><label>Agente Financeiro<label></td>
				<td colspan="3">${imprime.nom_agente_financeiro}</td>
			</tr>
			
			<tr>
				<td width="150"><label>Nº do Contrato<label></td>
				<td>${imprime.num_contrato}</td>
			
				<td width="150"><label>Fonte de Recursos<label></td>
				<td colspan="3">${imprime.des_fonte_recurso}</td>
			</tr>
			
			<tr>
				<td width="150"><label>Descrição do Empreendimento<label></td>
				<td colspan="5">${imprime.des_empreendimento}</td>
			</tr>
			<tr>
				<td width="150"><label>Tipologia da Produção Habitacional<label></td>
				<td colspan="5">${imprime.des_tipologia}</td>
			</tr>
					</table>
		
		<table>
			<tr class="topic">
				<td colspan="6">
					<h1>Estágio de Contratação de Recursos</h1>
				</td>
			</tr>
			
			<tr>
				<td colspan="6">
					<h2>Contratação de Recursos com Agente Financeiro</h2>
				</td>
			</tr>
			
			<tr>
				<td width="150"><label>Estágio de Contratação<label></td>
				<td colspan="4">${imprimeRecursos.cod_estagio_contrat_rec}</td>
			</tr>
			
			<tr>
				<td width="150"><label>Observações<label></td>
				<td colspan="4">${imprimeRecursos.des_obs_estagio_cont_rec}</td>
			</tr>
			
			<tr>
				<td width="150"><label>Protocolo Carta Consulta<label></td>
				<td>${imprimeRecursos.num_protocolo_carta_consulta}</td>
			
				<td width="150"><label>Nº do Contrato de Recursos<label></td>
				<td colspan="3">${imprimeRecursos.num_contrato}</td>
			</tr>
		</table>
		
		<table>
			<tr>
				<td colspan="6">
					<h3>Valores Contratados Com o Agente Financeiro - Original</h3>
				</td>
			</tr>
			
			<tr>
				<td width="150"><label>Repasse Financiamento<label></td>
				<td>${imprimeRecursos.vlr_repasse_financiamento_orig}</td>
			
				<td width="150"><label>Contrapartida Tesouro<label></td>
				<td>${imprimeRecursos.vlr_contrapartida_tesouro_orig}</td>
				
				<td width="150"><label>Valor Total<label></td>
				<td>${imprimeRecursos.vlr_total_orig}</td>
			</tr>
			<tr>
				<td colspan="6">
					<h3>Contrapartida Outras Fontes</h3>
				</td>
			</tr>
			
			<tr>
				<td width="150"><label>Fonte<label></td>
				<td colspan="2">${imprimeRecursos.des_contrapartida_1}</td>
				<td width="150"><label>Valor<label></td>
				<td colspan="2">${imprimeRecursos.vlr_contrapartida_orig_1}</td>
				<td width="150"><label>Fonte<label></td>
				<td colspan="2">${imprimeRecursos.des_contrapartida_2}</td>
				<td width="150"><label>Valor<label></td>
				<td colspan="2">${imprimeRecursos.vlr_contrapartida_orig_2}</td>
				<td width="150"><label>Fonte<label></td>
				<td colspan="2">${imprimeRecursos.des_contrapartida_3}</td>
				<td width="150"><label>Valor<label></td>
				<td colspan="2">${imprimeRecursos.vlr_contrapartida_orig_3}</td>
				<td width="150"><label>Fonte<label></td>
				<td colspan="2">${imprimeRecursos.des_contrapartida_4}</td>
				<td width="150"><label>Valor<label></td>
				<td colspan="2">${imprimeRecursos.vlr_contrapartida_orig_4}</td>
				</tr>
			<tr>
				<td colspan="6">
					<h3>Valores Contratados Com o Agente Financeiro - Com Aditivo</h3>
				</td>
			</tr>
			<tr>
				<td width="150"><label>Repasse Financiamento<label></td>
				<td>${imprimeRecursos.vlr_repasse_financiamento_adt}</td>
			
				<td width="150"><label>Contrapartida Tesouro<label></td>
				<td>${imprimeRecursos.vlr_contrapartida_tesouro_adt}</td>
				
				<td width="150"><label>Valor Total<label></td>
				<td>${imprimeRecursos.vlr_total_adt}</td>
			</tr>
			
			<tr>
				<td colspan="6">
					<h3>Contrapartida Outras Fontes</h3>
				</td>
			</tr>
			
			<tr>
				<td width="150"><label>Fonte<label></td>
				<td colspan="2">${imprimeRecursos.des_contrapartida_adt_1}</td>
				<td width="150"><label>Valor<label></td>
				<td colspan="2">${imprimeRecursos.vlr_contrapartida_adt_1}</td>
				<td width="150"><label>Fonte<label></td>
				<td colspan="2">${imprimeRecursos.des_contrapartida_adt_2}</td>
				<td width="150"><label>Valor<label></td>
				<td colspan="2">${imprimeRecursos.vlr_contrapartida_adt_2}</td>
				<td width="150"><label>Fonte<label></td>
				<td colspan="2">${imprimeRecursos.des_contrapartida_adt_3}</td>
				<td width="150"><label>Valor<label></td>
				<td colspan="2">${imprimeRecursos.vlr_contrapartida_adt_3}</td>
				<td width="150"><label>Fonte<label></td>
				<td colspan="2">${imprimeRecursos.des_contrapartida_adt_4}</td>
				<td width="150"><label>Valor<label></td>
				<td colspan="2">${imprimeRecursos.vlr_contrapartida_adt_4}</td>
			</tr>
		</table>
		
		<table>
			<tr class="topic">
				<td colspan="6">
					<h1>Estágio de Contratação de Obras e Serviços</h1>
				</td>
			</tr>
			<tr>
				<td colspan="6">
					<h2>Contratação de Obras</h2>
				</td>
			</tr>
			
			<tr>
				<td width="150"><label>Estágio de Contratação<label></td>
				<td colspan="5">${imprimeObras.cod_estagio_contrat_obra}</td>
			</tr>
			
			<tr>
				<td width="150"><label>Observações<label></td>
				<td colspan="5">${imprimeObras.des_obs_estagio_contrat_obra}</td>
			</tr>
			
			<tr>
				<td width="150"><label>OIS Previsão<label></td>
				<td colspan="2">${imprimeObras.dat_ois_prevista_para}</td>
			
				<td width="150"><label>OIS Asssinada<label></td>
				<td colspan="2">${imprimeObras.dat_ois_assinada_em}</td>
			</tr>
			
			<tr>
				<td width="150"><label>Nº do Processo Administrativo<label></td>
				<td colspan="2">${imprimeObras.num_processo_adm}</td>
			
				<td width="150"><label>Nº do Processo Licitação<label></td>
				<td colspan="2">${imprimeObras.num_processo_licitacao}</td>
			</tr>
			
			<tr>
				<td width="150"><label>Nº do Contrato<label></td>
				<td colspan="5">${imprimeObras.num_contrato}</td>
			</tr>
			<tr>
				<td colspan="6">
					<h3>Valores Contratados - Original</h3>
				</td>
			</tr>
			<tr>
				<td width="150"><label>Repasse Financiamento<label></td>
				<td>${imprimeObras.vlr_repasse_financiamento_orig}</td>
			
				<td width="150"><label>Contrapartida Tesouro<label></td>
				<td>${imprimeObras.vlr_contrapartida_tesouro_orig}</td>
				
				<td width="150"><label>Valor Total<label></td>
				<td>${imprimeObras.vlr_total_orig}</td>
			</tr>
			
			<tr>
				<td colspan="6">
					<h3>Contrapartida Outras Fontes</h3>
				</td>
			</tr>
			
			<tr>
				<td width="150"><label>Fonte<label></td>
				<td colspan="2">${imprimeObras.des_contrapartida_1}</td>
				<td width="150"><label>Valor<label></td>
				<td colspan="2">${imprimeObras.vlr_contrapartida_orig_1}</td>
				<td width="150"><label>Fonte<label></td>
				<td colspan="2">${imprimeObras.des_contrapartida_2}</td>
				<td width="150"><label>Valor<label></td>
				<td colspan="2">${imprimeObras.vlr_contrapartida_orig_2}</td>
				<td width="150"><label>Fonte<label></td>
				<td colspan="2">${imprimeObras.des_contrapartida_3}</td>
				<td width="150"><label>Valor<label></td>
				<td colspan="2">${imprimeObras.vlr_contrapartida_orig_3}</td>
				<td width="150"><label>Fonte<label></td>
				<td colspan="2">${imprimeObras.des_contrapartida_4}</td>
				<td width="150"><label>Valor<label></td>
				<td colspan="2">${imprimeObras.vlr_contrapartida_orig_4}</td>
			</tr>
			<tr>
				<td colspan="6">
					<h3>Valores Contratados - Com Aditivo</h3>
				</td>
			</tr>
			<tr>
				<td width="150"><label>Repasse Financiamento<label></td>
				<td>${imprimeObras.vlr_repasse_financiamento_adt}</td>
			
				<td width="150"><label>Contrapartida Tesouro<label></td>
				<td>${imprimeObras.vlr_contrapartida_tesouro_adt}</td>
				
				<td width="150"><label>Valor Total<label></td>
				<td>${imprimeObras.vlr_total_adt}</td>
			</tr>
			
			<tr>
				<td colspan="6">
					<h3>Contrapartida Outras Fontes</h3>
				</td>
			</tr>
			
			<tr>
				<td width="150"><label>Fonte<label></td>
				<td colspan="2">${imprimeObras.des_contrapartida_adt_1}</td>
				<td width="150"><label>Valor<label></td>
				<td colspan="2">${imprimeObras.vlr_contrapartida_adt_1}</td>
				<td width="150"><label>Fonte<label></td>
				<td colspan="2">${imprimeObras.des_contrapartida_adt_2}</td>
				<td width="150"><label>Valor<label></td>
				<td colspan="2">${imprimeObras.vlr_contrapartida_adt_2}</td>
				<td width="150"><label>Fonte<label></td>
				<td colspan="2">${imprimeObras.des_contrapartida_adt_3}</td>
				<td width="150"><label>Valor<label></td>
				<td colspan="2">${imprimeObras.vlr_contrapartida_adt_3}</td>
				<td width="150"><label>Fonte<label></td>
				<td colspan="2">${imprimeObras.des_contrapartida_adt_4}</td>
				<td width="150"><label>Valor<label></td>
				<td colspan="2">${imprimeObras.vlr_contrapartida_adt_4}</td>
			</tr>
			
			
			
			<tr>
				<td colspan="6">
					<h2>Contratação de Trabalho Social</h2>
				</td>
			</tr>
			
			<tr>
				<td width="150"><label>Estágio de Contratação<label></td>
				<td colspan="5">${imprimeTrabSocial.cod_estagio_contrat_trab_soc}</td>
			</tr>
			
			<tr>
				<td width="150"><label>Observações<label></td>
				<td colspan="5">${imprimeTrabSocial.des_obs_estagio_cont_trab_soc}</td>
			</tr>
			
			<tr>
				<td width="150"><label>OIS Previsão<label></td>
				<td colspan="2">${imprimeTrabSocial.dat_ois_prevista_para}</td>
			
				<td width="150"><label>OIS Asssinada<label></td>
				<td colspan="2">${imprimeTrabSocial.dat_ois_assinada_em}</td>
			</tr>
			
			<tr>
				<td width="150"><label>Nº do Processo Administrativo<label></td>
				<td colspan="2">${imprimeTrabSocial.num_processo_adm}</td>
			
				<td width="150"><label>Nº do Processo Licitação<label></td>
				<td colspan="2">${imprimeTrabSocial.num_processo_licitacao}</td>
			</tr>
			
			<tr>
				<td width="150"><label>Nº do Contrato<label></td>
				<td colspan="5">${imprimeTrabSocial.num_contrato}</td>
			</tr>
			<tr>
				<td colspan="6">
					<h3>Valores Contratados - Original</h3>
				</td>
			</tr>
			<tr>
				<td width="150"><label>Repasse Financiamento<label></td>
				<td>${imprimeTrabSocial.vlr_repasse_financiamento_orig}</td>
			
				<td width="150"><label>Contrapartida Tesouro<label></td>
				<td>${imprimeTrabSocial.vlr_contrapartida_tesouro_orig}</td>
				
				<td width="150"><label>Valor Total<label></td>
				<td>${imprimeTrabSocial.vlr_total_orig}</td>
			</tr>
			
			<tr>
				<td colspan="6">
					<h3>Contrapartida Outras Fontes</h3>
				</td>
			</tr>
			
			<tr>
				<td width="150"><label>Fonte<label></td>
				<td colspan="2">${imprimeTrabSocial.des_contrapartida_1}</td>
				<td width="150"><label>Valor<label></td>
				<td colspan="2">${imprimeTrabSocial.vlr_contrapartida_orig_1}</td>
				<td width="150"><label>Fonte<label></td>
				<td colspan="2">${imprimeTrabSocial.des_contrapartida_2}</td>
				<td width="150"><label>Valor<label></td>
				<td colspan="2">${imprimeTrabSocial.vlr_contrapartida_orig_2}</td>
				<td width="150"><label>Fonte<label></td>
				<td colspan="2">${imprimeTrabSocial.des_contrapartida_3}</td>
				<td width="150"><label>Valor<label></td>
				<td colspan="2">${imprimeTrabSocial.vlr_contrapartida_orig_3}</td>
				<td width="150"><label>Fonte<label></td>
				<td colspan="2">${imprimeTrabSocial.des_contrapartida_4}</td>
				<td width="150"><label>Valor<label></td>
				<td colspan="2">${imprimeTrabSocial.vlr_contrapartida_orig_4}</td>
			</tr>
			<tr>
				<td colspan="6">
					<h3>Valores Contratados - Com Aditivo</h3>
				</td>
			</tr>
			<tr>
				<td width="150"><label>Repasse Financiamento<label></td>
				<td>${imprimeTrabSocial.vlr_repasse_financiamento_adt}</td>
			
				<td width="150"><label>Contrapartida Tesouro<label></td>
				<td>${imprimeTrabSocial.vlr_contrapartida_tesouro_adt}</td>
				
				<td width="150"><label>Valor Total<label></td>
				<td>${imprimeTrabSocial.vlr_total_adt}</td>
			</tr>
			
			<tr>
				<td colspan="6">
					<h3>Contrapartida Outras Fontes</h3>
				</td>
			</tr>
			
			<tr>
				<td width="150"><label>Fonte<label></td>
				<td colspan="2">${imprimeTrabSocial.des_contrapartida_adt_1}</td>
				<td width="150"><label>Valor<label></td>
				<td colspan="2">${imprimeTrabSocial.vlr_contrapartida_adt_1}</td>
				<td width="150"><label>Fonte<label></td>
				<td colspan="2">${imprimeTrabSocial.des_contrapartida_adt_2}</td>
				<td width="150"><label>Valor<label></td>
				<td colspan="2">${imprimeTrabSocial.vlr_contrapartida_adt_2}</td>
				<td width="150"><label>Fonte<label></td>
				<td colspan="2">${imprimeTrabSocial.des_contrapartida_adt_3}</td>
				<td width="150"><label>Valor<label></td>
				<td colspan="2">${imprimeTrabSocial.vlr_contrapartida_adt_3}</td>
				<td width="150"><label>Fonte<label></td>
				<td colspan="2">${imprimeTrabSocial.des_contrapartida_adt_4}</td>
				<td width="150"><label>Valor<label></td>
				<td colspan="2">${imprimeTrabSocial.vlr_contrapartida_adt_4}</td>
			</tr>
			
			
			
			
			<tr>
				<td colspan="6">
					<h2>Contratação de Regularização Fundiária</h2>
				</td>
			</tr>
			
			<tr>
				<td width="150"><label>Estágio de Contratação<label></td>
				<td colspan="5">${imprimeRegFun.cod_estagio_contrat_reg_fund}</td>
			</tr>
			
			<tr>
				<td width="150"><label>Observações<label></td>
				<td colspan="5">${imprimeRegFun.des_obs_estagio_cont_reg_fund}</td>
			</tr>
			
			<tr>
				<td width="150"><label>OIS Previsão<label></td>
				<td colspan="2">${imprimeRegFun.dat_ois_prevista_para}</td>
			
				<td width="150"><label>OIS Asssinada<label></td>
				<td colspan="2">${imprimeRegFun.dat_ois_assinada_em}</td>
			</tr>
			
			<tr>
				<td width="150"><label>Nº do Processo Administrativo<label></td>
				<td colspan="2">${imprimeRegFun.num_processo_adm}</td>
			
				<td width="150"><label>Nº do Processo Licitação<label></td>
				<td colspan="2">${imprimeRegFun.num_processo_licitacao}</td>
			</tr>
			
			<tr>
				<td width="150"><label>Nº do Contrato<label></td>
				<td colspan="5">${imprimeRegFun.num_contrato}</td>
			</tr>
			<tr>
				<td colspan="6">
					<h3>Valores Contratados - Original</h3>
				</td>
			</tr>
			<tr>
				<td width="150"><label>Repasse Financiamento<label></td>
				<td>${imprimeRegFun.vlr_repasse_financiamento_orig}</td>
			
				<td width="150"><label>Contrapartida Tesouro<label></td>
				<td>${imprimeRegFun.vlr_contrapartida_tesouro_orig}</td>
				
				<td width="150"><label>Valor Total<label></td>
				<td>${imprimeRegFun.vlr_total_orig}</td>
			</tr>
			
			<tr>
				<td colspan="6">
					<h3>Contrapartida Outras Fontes</h3>
				</td>
			</tr>
			
			<tr>
				<td width="150"><label>Fonte<label></td>
				<td colspan="2">${imprimeRegFun.des_contrapartida_1}</td>
				<td width="150"><label>Valor<label></td>
				<td colspan="2">${imprimeRegFun.vlr_contrapartida_orig_1}</td>
				<td width="150"><label>Fonte<label></td>
				<td colspan="2">${imprimeRegFun.des_contrapartida_2}</td>
				<td width="150"><label>Valor<label></td>
				<td colspan="2">${imprimeRegFun.vlr_contrapartida_orig_2}</td>
				<td width="150"><label>Fonte<label></td>
				<td colspan="2">${imprimeRegFun.des_contrapartida_3}</td>
				<td width="150"><label>Valor<label></td>
				<td colspan="2">${imprimeRegFun.vlr_contrapartida_orig_3}</td>
				<td width="150"><label>Fonte<label></td>
				<td colspan="2">${imprimeRegFun.des_contrapartida_4}</td>
				<td width="150"><label>Valor<label></td>
				<td colspan="2">${imprimeRegFun.vlr_contrapartida_orig_4}</td>
			</tr>
			<tr>
				<td colspan="6">
					<h3>Valores Contratados - Com Aditivo</h3>
				</td>
			</tr>
			<tr>
				<td width="150"><label>Repasse Financiamento<label></td>
				<td>${imprimeRegFun.vlr_repasse_financiamento_adt}</td>
			
				<td width="150"><label>Contrapartida Tesouro<label></td>
				<td>${imprimeRegFun.vlr_contrapartida_tesouro_adt}</td>
				
				<td width="150"><label>Valor Total<label></td>
				<td>${imprimeRegFun.vlr_total_adt}</td>
			</tr>
			
			<tr>
				<td colspan="6">
					<h3>Contrapartida Outras Fontes</h3>
				</td>
			</tr>
			
			<tr>
				<td width="150"><label>Fonte<label></td>
				<td colspan="2">${imprimeRegFun.des_contrapartida_adt_1}</td>
				<td width="150"><label>Valor<label></td>
				<td colspan="2">${imprimeRegFun.vlr_contrapartida_adt_1}</td>
				<td width="150"><label>Fonte<label></td>
				<td colspan="2">${imprimeRegFun.des_contrapartida_adt_2}</td>
				<td width="150"><label>Valor<label></td>
				<td colspan="2">${imprimeRegFun.vlr_contrapartida_adt_2}</td>
				<td width="150"><label>Fonte<label></td>
				<td colspan="2">${imprimeRegFun.des_contrapartida_adt_3}</td>
				<td width="150"><label>Valor<label></td>
				<td colspan="2">${imprimeRegFun.vlr_contrapartida_adt_3}</td>
				<td width="150"><label>Fonte<label></td>
				<td colspan="2">${imprimeRegFun.des_contrapartida_adt_4}</td>
				<td width="150"><label>Valor<label></td>
				<td colspan="2">${imprimeRegFun.vlr_contrapartida_adt_4}</td>
			</tr>
		</table>
		
		<table>
			<tr class="topic">
				<td colspan="6">
					<h1>Elaboração de Projetos e Aprovações</h1>
				</td>
			</tr>
			
			<tr>
				<td width="150"><label>Projetos<label></td>
				<td>${imprime.cod_estagio_aprov_proj}</td>
			
				<td width="150"><label>Observação<label></td>
				<td colspan="3">${imprime.des_etapa_projeto}</td>
			</tr>
			
			<tr>
				<td width="150"><label>Licenciamento Ambiental<label></td>
				<td>${imprime.cod_estag_aprov_licenc_amb}</td>
			
				<td width="150"><label>Observação<label></td>
				<td colspan="3">${imprime.des_etapa_licenciamento_aprov}</td>
			</tr>
			
			<tr>
				<td width="150"><label>Cazeis<label></td>
				<td>${imprime.cod_estag_aprov_cazeis}</td>
			
				<td width="150"><label>Observação<label></td>
				<td colspan="3">${imprime.des_obs_estag_aprov_cazeis}</td>
			</tr>
			
			<tr>
				<td width="150"><label>Cehais<label></td>
				<td>${imprime.cod_estag_aprov_cehais}</td>
			
				<td width="150"><label>Observação<label></td>
				<td colspan="3">${imprime.des_obs_estag_aprov_cehais}</td>
			</tr>
			
			<tr>
				<td width="150"><label>Graprohab<label></td>
				<td>${imprime.cod_estag_aprov_graproha}</td>
			
				<td width="150"><label>Observação<label></td>
				<td colspan="3">${imprime.des_obs_estag_aprov_graproha}</td>
			</tr>
			
			<tr>
				<td width="150"><label>Cidade Legal<label></td>
				<td>${imprime.cod_estag_aprov_cidade_legal}</td>
			
				<td width="150"><label>Observação<label></td>
				<td colspan="3">${imprime.des_obs_estag_aprov_cid_legal}</td>
			</tr>
			
			<tr>
				<td width="150"><label>Água e Esgoto<label></td>
				<td>${imprime.cod_estag_aprov_agua_esgoto}</td>
			
				<td width="150"><label>Observação<label></td>
				<td colspan="3">${imprime.des_obs_estag_aprov_agua_esgo}</td>
			</tr>
			
			<tr>
				<td width="150"><label>Gás<label></td>
				<td>${imprime.cod_estag_aprov_gas}</td>
			
				<td width="150"><label>Observação<label></td>
				<td colspan="3">${imprime.des_obs_estag_aprov_gas}</td>
			</tr>
			
			<tr>
				<td width="150"><label>Energia Elétrica<label></td>
				<td>${imprime.cod_estag_aprov_energia_eletri}</td>
			
				<td width="150"><label>Observação<label></td>
				<td colspan="3">${imprime.des_obs_estag_aprov_energ_ele}</td>
			</tr>
			
			<tr>
				<td width="150"><label>Telecomunicações<label></td>
				<td>${imprime.cod_estag_aprov_telecom}</td>
			
				<td width="150"><label>Observação<label></td>
				<td colspan="3">${imprime.des_obs_estag_aprov_telecom}</td>
			</tr>
			
			<tr>
				<td width="150"><label>Bombeiros<label></td>
				<td>${imprime.cod_estag_aprov_bombeiros}</td>
			
				<td width="150"><label>Observação<label></td>
				<td colspan="3">${imprime.des_obs_estag_aprov_bombeiros}</td>
			</tr>
			
			<tr>
				<td width="150"><label>DER<label></td>
				<td>${imprime.cod_estag_aprov_der}</td>
			
				<td width="150"><label>Observação<label></td>
				<td colspan="3">${imprime.des_obs_estag_aprov_der}</td>
			</tr>
			
			<tr>
				<td width="150"><label>Transpetro<label></td>
				<td>${imprime.cod_estag_aprov_transpetro}</td>
			
				<td width="150"><label>Observação<label></td>
				<td colspan="3">${imprime.des_obs_estag_aprov_transpetr}</td>
			</tr>
		</table>
		
		<table>
			<tr class="topic">
				<td colspan="6">
					<h1>Andamento das Ações</h1>
				</td>
			</tr>
			
			<tr>
				<td width="150"><label>Social<label></td>
				<td>${imprime.cod_andamento_social}</td>
			
				<td width="150"><label>Observação<label></td>
				<td colspan="3">${imprime.des_obs_andamento_social}</td>
			</tr>
			
			<tr>
				<td width="150"><label>Social Contratada<label></td>
				<td>${imprime.cod_andamento_social_contr}</td>
			
				<td width="150"><label>Observação<label></td>
				<td colspan="3">${imprime.des_obs_andamento_social_contr}</td>
			</tr>
			
			<tr>
				<td width="150"><label>Recuperação Ambiental/Compensação<label></td>
				<td>${imprime.cod_andamento_rec_amb}</td>
			
				<td width="150"><label>Observação<label></td>
				<td colspan="3">${imprime.des_obs_andamento_rec_amb}</td>
			</tr>
			
			<tr>
				<td width="150"><label>Jurídica-Fundiária<label></td>
				<td>${imprime.cod_andamento_juridico_fundiar}</td>
			
				<td width="150"><label>Observação<label></td>
				<td colspan="3">${imprime.des_obs_andamento_juridico_fun}</td>
			</tr>
			
			<tr>
				<td width="150"><label>Obras<label></td>
				<td>${imprime.cod_andamento_obra}</td>
			
				<td width="150"><label>Observação<label></td>
				<td colspan="3">${imprime.des_obs_andamento_obra}</td>
			</tr>
		</table>
		
		<table>
			<tr class="topic">
				<td colspan="6">
					<h1>Execução Físico-Financeira</h1>
				</td>
			</tr>
			
			<tr>
				<td width="150"><label>Valor Total<label></td>
				<td>${imprime.vlr_total_exec_fisico_financ}</td>
			
				<td width="150"><label>Acumulado<label></td>
				<td>${imprime.vlr_acumul_exec_fisico_financ}</td>
				
				<td width="150"><label>Saldo<label></td>
				<td>${imprime.vlr_saldo_exec_fisico_financ}</td>
			</tr>
		</table>
		
		<table>
			<tr class="topic">
				<td colspan="6">
					<h1>Galeria de Projetos e Fotos</h1>
				</td>
			</tr>
			
			<tr>
				<td colspan="3">
				<% if(request.getAttribute("consultaImagem") != null)
				{		
						List<String> consultaImage =(List) request.getAttribute("consultaImagem");
										
					for(int x=0;x<consultaImage.size();x++)
					{%>
						<img src="<% out.println(consultaImage.get(x));%>"  height="100px" width="100px" >
					<%}
					
									
					}%>
				</td>
			</tr>
		</table>
	
	</div>
	<div id="printar" onclick="imprimir()">
	<br />
		<a href="javascript: void();"/>
			<img src="images/printer-icon.gif" title="Imprimir" align="left"/>Clique aqui para imprimir
		</a>
	</div>
</body>
</html>