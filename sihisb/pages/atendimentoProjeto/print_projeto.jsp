<%@ page language="java" contentType="text/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<%@page import="br.gov.sp.saobernardo.sehab.dao.ProjetoDAO" %>
<%@page import="br.gov.sp.saobernardo.sehab.loginBean.LoginBean" %>
<%@page import="br.gov.sp.saobernardo.sehab.bean2.TipoAtendimentoBean" %>
<%@page import="br.gov.sp.saobernardo.sehab.bean2.CadastroProjetoBean" %>
<%@page import="br.gov.sp.saobernardo.sehab.bean2.ComposicaoFamiliarBean" %>
<%@page import="br.gov.sp.saobernardo.sehab.bean.LocalizacaoBean" %>
<%@page import="br.gov.sp.saobernardo.sehab.bean2.ImpressaoProjetoBean" %>
<%@page import="br.gov.sp.saobernardo.sehab.bean2.ImpressaoComposicaoBean" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.List" %>
<%
	LoginBean usuario = (LoginBean)session.getAttribute("user");
%>  

<html>
<head>
<title>Prefeitura Minicipal de São Bernardo do Campo - Sihisb</title>
<meta name="description" content="SIHISB - Planejamento e monitoramento da Política Habitacional no município" />
<meta name="keywords" content="SEHAB SIHISP MAPA HABITAÇÃO MONITORAMENTO MAPEAMENTO" />
<META HTTP-EQUIV="CACHE-CONTROL" CONTENT="NO-CACHE">
<META HTTP-EQUIV="PRAGMA" CONTENT="NO-CACHE">
<link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />
<link rel="stylesheet" href="css/print.css" type="text/css"	media="screen,print" />


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
		<table width="100%">
			<tr>
				<td width="150"><img src="images/logo_2012.jpg" title="São Bernardo do Campo"/></td>
				<td><h1>Numero de Cadastro:${projeto.numeroCadastro}</h1></td>
				<td width="150"><img src="images/logo_sihisb.jpg" title="SIHISB" width="150" height="50"/></td>
			</tr>
		</table>
	</div>
		
		
	<div id="conteudo">
		<table>
			<tr class="topic">
				<td colspan="6">
					<h1>GERAL</h1>
				</td>
			</tr>
			<tr>
				<td width="150"><label>Número do Cadastro<label></td>
				<td colspan="5">${projeto.numeroCadastro}</td>
		
			</tr>
			
			<tr>
				<td width="150"><label>Nome da Área<label></td>
				<td colspan="5"><%=((ImpressaoProjetoBean)request.getAttribute("projeto")).getNomeArea() %>
								  </td>
				
			</tr>
			
			<tr>
				<td><label>Projeto<label></td>
				<td colspan=5>${projeto.projeto}</td>
			</tr>
			
			<tr>
				<td><label>Nome do 1º Responsável<label></td>
				<td colspan=5>${projeto.nomePrimResponsavel }</td>
			</tr>
			
			<tr>
				<td><label>CPF<label></td>
				<td>${projeto.cpf}</td>
				<td width="150"><label>RG<label></td>
				<td>${projeto.rg}</td>
				
				<td width="150"><label>UF<label></td>
				<td><%=((ImpressaoProjetoBean)request.getAttribute("projeto")).getUf()  %></td>
			</tr>
			
			<tr>
				<td><label>Nome do 2º Responsável<label></td>
				<td colspan=5>${projeto.nomeSegResponsavel}</td>
			</tr>
			
			<tr>
				<td><label>CPF<label></td>
				<td>${projeto.cpfSeg}</td>
				<td width="150"><label>RG<label></td>
				<td>${projeto.rgSeg}</td>
				<td width="150"><label>UF<label></td>
				<td><%=((ImpressaoProjetoBean)request.getAttribute("projeto")).getUfSeg()  %></td>
			</tr>
			
			<tr>
				<td><label>Bolsa Família<label></td>
				<td><%=((ImpressaoProjetoBean)request.getAttribute("projeto")).getBolsaFamilia() == "1" ? "sim" : "não" %></td>
				<td width="150"><label>Recebe<label></td>
				<td><%=((ImpressaoProjetoBean)request.getAttribute("projeto")).getRecebe() == "1" ? "sim" : "não" %></td>
				<td width="150"><label>Número da Inscrição Social<label></td>
				<td>${projeto.nIs}</td>
			</tr>
			
			<tr>
				<td><label>Endereço<label></td>
				<td colspan=5>${projeto.endereço}</td>
			</tr>
			
			<tr>
				<td><label>Tempo de Moradia no Imóvel<label></td>
				<td>${projeto.tempoMoradia}</td>
				<td width="150"><label>Tempo de Moradia na Área<label></td>
				<td>${projeto.tempoArea}</td>
				<td width="150"><label>Tempo de Moradia na Município<label></td>
				<td>${projeto.tempoMunicipio}</td>
			</tr>
			
			<tr>
				<td><label>Telefone para Contato<label></td>
				<td colspan=5>${projeto.telefone}</td>
			</tr>
			
			<tr>

				<td><label>Data do Atendimento<label></td>

				<td colspan=5></td>

			</tr>
			
			
			<tr>
			
				<td><label>Observação<label></td>
				<td colspan=5>
				<% List<ImpressaoProjetoBean> historico = (List)request.getAttribute("historico");
									for(int z=0; z < historico.size(); z++){
							%>
				
				<%=historico.get(z).getObservacoes() %>
					<%} %>
				</td>
			
			</tr>
			
			
			
			<tr class="topic">
				<td colspan="6">
					<h1>COMPOSIÇÃO FAMILIAR</h1>
				</td>
			</tr>
			
			<tr class="topic2">
			
			<% List<ComposicaoFamiliarBean> compfam = (List)request.getAttribute("compfam");
									for(int i=0; i < compfam.size(); i++){
							%>
			<td colspan="6">
					<label>INTEGRANTE <%=i+1%> </label>
				</td>
			</tr>
			
			<tr>
				<td><label>Cadastro<label></td>
				<td><%=  compfam.get(i).getNumeroCadastro()%></td>
				<td><label>Nome<label></td>
				<td colspan=3><%=  compfam.get(i).getNomes()%></td>
			</tr>
			
			<tr>
				<td><label>Parentesco<label></td>
				<td><%=  compfam.get(i).getParentesco()%></td>
				<td width="150"><label>CPF<label></td>
				<td><%=  compfam.get(i).getCpf()%></td>
				<td width="150"><label>RG<label></td>
				<td><%=  compfam.get(i).getRg()%></td>
			</tr>
			
			<tr>
				<td><label>Renda<label></td>
				<td><%=  compfam.get(i).getRenda()%></td>
				<td width="150"><label>Família<label></td>
				<td><%=  compfam.get(i).getFamilia()%></td>
				<td width="150"><label>Sexo<label></td>
				<td><%=  compfam.get(i).getSexo()== 1 ? "Masc" : "Fem"%></td>
			</tr>
			
			<tr>
				<td><label>Idade<label></td>
				<td><%=  compfam.get(i).getIdade()%></td>
				<td width="150"><label>Cor<label></td>
				<td><%=  compfam.get(i).getCor()%></td>
				<td width="150"><label>Escolaridade<label></td>
				<td><%= compfam.get(i).getEscola() %></td>
			</tr>
			
			<tr>
				<td><label>Ocupação<label></td>
				<td><%=  compfam.get(i).getOcupacao()%></td>
				<td width="150"><label>Deficiência<label></td>
				<td colspan=3><%=  compfam.get(i).getDeficiencia()== 1 ? "Não" : "Sim"%></td>
			</tr>
			<%} %>
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