<%@ page language="java" contentType="text/html"; import="java.util.*"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">

<%@page import="br.gov.sp.saobernardo.sehab.bean.VulnerabilidadeBean"%>
<%@page import="br.gov.sp.saobernardo.sehab.bean.RegiaoOperacaoBean"%>
<%@page import="br.gov.sp.saobernardo.sehab.bean.VulnerabilidadeBean"%>
<%@page import="br.gov.sp.saobernardo.sehab.bean.LocalizacaoBean"%>
<%@page import="br.gov.sp.saobernardo.sehab.bean.TipologiaBean"%>
<%@page import="br.gov.sp.saobernardo.sehab.bean.TipoAssentamentoBean"%>
<%@page	import="br.gov.sp.saobernardo.sehab.bean.SituacaoPropriedadeBean"%>
<%@page import="br.gov.sp.saobernardo.sehab.bean.AppsBean"%>
<%@page import="br.gov.sp.saobernardo.sehab.bean.ZoneamentoBean"%>
<%@page import="br.gov.sp.saobernardo.sehab.bean.FeicaoMorfologicaBean"%>
<%@page import="br.gov.sp.saobernardo.sehab.bean.TipoRiscoBean"%>
<%@page import="br.gov.sp.saobernardo.sehab.bean.CaracterizacaoBean"%>
<%@page import="br.gov.sp.saobernardo.sehab.bean.ImpressaoBean" %>
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
<meta name="keywords" content="SEHAB SIHISP MAPA HABITA?O MONITORAMENTO MAPEAMENTO" />
<META HTTP-EQUIV="CACHE-CONTROL" CONTENT="NO-CACHE">
<META HTTP-EQUIV="PRAGMA" CONTENT="NO-CACHE">
<link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />
<link rel="stylesheet" href="css/print.css" type="text/css"
	media="screen,print" />
<script type="text/javascript">
	function imprimir() {
		document.getElementById("printar").style.visibility = "hidden";
		window.print();
	}
</script>
</head>

<body
	onfocus="document.getElementById('printar').style.visibility='visible';">
	<div id="top">
		<table width="100%">
			<tr>
				<td width="150"><img src="images/logo_2012.jpg" title="S?Bernardo do Campo"/></td>
				<td><h1><%=((ImpressaoBean)request.getAttribute("impressao")).getNomeArea() %></h1></td>
				<td width="150"><img src="images/logo_sihisb.jpg" title="SIHISB" width="150" height="50"/></td>
			</tr>
		</table>
	</div>
	
	<div id="conteudo">
	<td>Ultima altera? feita por:<%=((ImpressaoBean)request.getAttribute("impressao")).getUsuario()%> em <%=((ImpressaoBean)request.getAttribute("impressao")).getData()%> </td>
		<table>
			<tr class="topic">
				<td colspan="4">
					<h1>IMAGENS</h1>
				</td>
			</tr>
			
			<tr>
				<td><label>Galeria<label></td>
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
			<tr class="topic">
		 
				<td colspan="4">
					<h1>Dados</h1>
				</td>
			</tr>
			
			<tr>

				<td width="150"><label for="codigo_xxx">Código Habitação</label>
				</td>
				<td><%=((ImpressaoBean)request.getAttribute("impressao")).getCodFunep() %></td>

				<td width="150"><label for="codigo_funep">Número Funep</label>
				</td>
				<td><%=((ImpressaoBean)request.getAttribute("impressao")).getCodFunep() %></td>

			</tr>

			

			<tr>

				<td><label for="nome_area">Nome da área</label>
				</td>
				<td colspan="3"><%=((ImpressaoBean)request.getAttribute("impressao")).getNomeArea() %></td>

			</tr>

			

			<tr>

				<td><label for="codigo_localizacao">Localização</label>
				</td>
				<td colspan="3" style="FONT-SIZE: small;">
				<%=((ImpressaoBean)request.getAttribute("impressao")).getCodLocalizacao() %>
					
					
				</td>
			</tr>

			

			<tr>

				<td><label for="qt_uhs_mapeada">Número Uhs Mapeadas</label></td>
				<td colspan=3 id="qt_uhs_mapeada_plus"></td>
				<script type="text/javascript">
				$(document).ready(function() {      
					var qt_uhs_mapeada = ${impressao.numUhsMapeadas};
					var calcula = ((qt_uhs_mapeada * 5)/100) + (qt_uhs_mapeada * 1);
					$("#qt_uhs_mapeada_plus").html(Math.ceil(calcula));
				});
				</script>
										
			</tr>
			<tr>

				<td><label>Unidades Cadastradas<label></td>

				<td colspan=3>${impressao.cadUnidades}</td>

			</tr>

			

			<tr>

				<td><label for="codigo_tipologia">Tipologia</label>
				</td>
				
				<td>${impressao.codTipologia}</td>

				<td><label for="codigo_tipo_assentamento">Tipo
						Assentamento</label>
				</td>
				<td>${consultatassent.codTipoAssentamento}</td>

			</tr>
	<tr>

				<td><label for="area_em_projeto">Área em Projeto</label>
				</td>
				
				<td><%=((ImpressaoBean)request.getAttribute("impressao")).getAreaEmProjeto() == -1 ? "" : "" %>
				<%=((ImpressaoBean)request.getAttribute("impressao")).getAreaEmProjeto() == 1 ? "sim" : "não?" %>
				
				
				</td>
				<td><label for="area_manancial">Area Manancial</label>
				</td>
				<td colspan=3>${impressao.codManancial}</td>
			</tr>
			
			<tr>
			<td><label for="codigo_situacao_propriedade">Situação da Propriedade</label>
				</td>
				<td colspan="3">${impressao.codSituacaoPropriedade}</td>
			
				
				

			</tr>

			

			<tr>

				<td><label for="obs_situacao_propriedade">Observações
						da Propriedade</label>
				</td>
				<td colspan="3"><%=((ImpressaoBean)request.getAttribute("impressao")).getObsSituacaoPropriedade() %></td>

			</tr>

			

			<tr>

				<td><label for="cod_Programa">Situação da Intervenção (Programa)</label></td>

			<td>	<% if(request.getAttribute("consultaPrograma") != null)
				{		
						List<String> consultaPrograma =(List) request.getAttribute("consultaPrograma");
										
					for(int x=0;x<consultaPrograma.size();x++)
					{%>
					<% out.println(consultaPrograma.get(x));%>
					<%}
					}%>
				
				
				
				</td>

				

				<td><label for="codEstagio">Situação da Intervenção (Estágio)</label></td>

				<td>${consultaEstagio.codEstagio}</td>

			</tr>

			

			<tr>

				<td><label for="classGeral">Classificação Geral</label></td>

				<td>${impressao.classGeral}</td>

				

				<td><label for="hierarq_prog">Hierarquização no Programa<label></td>

				<td>${impressao.hierarquizacao}</td>

			</tr>

			

			<tr>

				<td><label for="dt_ocupacao">Ano de Ocupação - Doc</label>
				</td>
				<td>${impressao.dataOcupacaoDoc}</td>

				<td><label for="dt_ocupacao_entrevista">Ano de Ocupação
						- Segundo moradores</label>
				</td>
				<td>${impressao.dataOcupacaoEntrevista}</td>

			</tr>

			

			<tr>

				<td width="150"><label for="codigo_vulnerabilidade">Vulnerabilidade Social</label>
				</td>
				<td>${consultavulnerabilidade.codVulnerabilidade}</td>

				

				<td><label for="apps">APPs</label>
				</td>
				<td>
				<% if(request.getAttribute("consultaapps") != null)
				{		
						List<String> consultaapps =(List) request.getAttribute("consultaapps");
										
					for(int x=0;x<consultaapps.size();x++)
					{%>
					<% out.println(consultaapps.get(x));%>
					<%}
					}%>
				
		</td>

			</tr>

			

			<tr>

				<td><label for="codigo_zoneamento">Zoneamento</label>
				</td>
				<td>${consultazoneamento.codZoneamento}</td>

				

				<td><label for="codigo_feicao_morfologica">Feição
						Morfológica</label>
				</td>
				<td colspan=3>${impressao.codFeicaoMorfologica}</td>

			</tr>

			

			<tr>

				<td><label for="codigo_gravames_judiciais">Gravames
						Judiciais</label>
				</td>
				<td colspan=3><%=((ImpressaoBean)request.getAttribute("impressao")).getCodGravamesJudiciais() %></td>

			</tr>

			

			<tr>

				<td><label for="obs_judicial">Observações Juridicas</label>
				</td>
				<td colspan=3><%=((ImpressaoBean)request.getAttribute("impressao")).getObsJudicial() %></td>

			</tr>

			
<tr class="topic">
				<td colspan="4">
					<h1>CARACTERIZAÇÃO FÍSICO-URBANÍSTICA</h1>
				</td>
			</tr>
			
			<tr>
				<td><label>Descrição<label></td>
				<td colspan="3">${impressao.caracFiscoUrban}</td>
				
				
			</tr>
			<tr class="topic">
				<td colspan="4">
					<h1>Pontos GPS</h1>
				</td>
			</tr>
			
			<tr>
				<td><label>Descrição<label></td>
				<td colspan="3">${impressao.pontoGps}</td>
				
				
			</tr>
			<tr class="topic">
				<td colspan="4">
					<h1>RISCO</h1></td>
			</tr>
			<tr>
				<td><label>Setor<label>
				</td>
				<td colspan="3"></td>
			</tr>
			<tr>
				<td><label>Número da Ocorrência<label>
				</td>
				<td colspan="3"></td>
			</tr>
			<tr>
				<td><label>Endereço<label>
				</td>
				<td colspan="3"></td>
			</tr>
			<tr>
				<td><label>Responsável pela vistoria<label>
				</td>
				<td></td>
				<td><label>Número de casas vistoriadas<label>
				</td>
				<td></td>
			</tr>
			<tr>
				<td><label>Tipo de Risco<label>
				</td>
				<td></td>
				<td><label>Grau de Risco<label>
				</td>
				<td></td>
			</tr>
			<tr>
				<td><label>Uhs<label>
				</td>
				<td></td>
				<td><label>Intervenção Indicada<label>
				</td>
				<td></td>
			</tr>
			<tr>
				<td><label>Observação<label>
				</td>
				<td colspan="3"></td>
			</tr>
			</table>
	</div>
	<div id="printar" onclick="imprimir()">
		<br /> <a href="javascript: void();" /> <img
			src="images/printer-icon.gif" title="Imprimir" align="left" />Clique
		aqui para imprimir </a>
	</div>
</body>
</html>