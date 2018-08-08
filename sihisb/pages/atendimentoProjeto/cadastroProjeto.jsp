<%@page import="oracle.jdbc.util.Login"%>
<%@ page language="java" contentType="text/html" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="br.gov.sp.saobernardo.sehab.bean2.CadastroProjetoBean" %>
<%@page import="br.gov.sp.saobernardo.sehab.loginBean.LoginBean" %>
<%@page import="br.gov.sp.saobernardo.sehab.bean2.TipoAtendimentoBean" %>
<%@page import="br.gov.sp.saobernardo.sehab.bean.LocalizacaoBean" %>
<%@page import ="br.gov.sp.saobernardo.sehab.bean2.ComposicaoFamiliarBean" %>
<%@page import ="br.gov.sp.saobernardo.sehab.bean2.ProjetoUfBean" %>
<%@page import ="br.gov.sp.saobernardo.sehab.bean2.EscolaridadeFamiliaBean" %>
<%@page import ="br.gov.sp.saobernardo.sehab.bean2.ParentescoFamiliarBean" %>
<%@page import ="br.gov.sp.saobernardo.sehab.bean2.CorFamiliarBean" %>
<%@page import ="br.gov.sp.saobernardo.sehab.bean.CaracterizacaoBean" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.List" %>

<%  

LoginBean usuario = (LoginBean)session.getAttribute("user"); 
if(usuario == null){
%>  
<% response.sendRedirect("index2.jsp");%>
<%}%>

<html>

<head>

<title>Prefeitura de São Bernardo do Campo - Sihisb</title>
<script>
var optionCombo = "";
<%if(request.getAttribute("allEscolaridade") != null){
	ArrayList<EscolaridadeFamiliaBean> escolaridade = (ArrayList)request.getAttribute("allEscolaridade");
	
	for(int x=0; x < escolaridade.size(); x++)
	{
%>
	optionCombo = optionCombo + '<option value="<%= escolaridade.get(x).getCodigo() %>">' + '<%= escolaridade.get(x).getDescricao() %>' + '</option>';
<%}}%>
</script>
<script>
var optionCombo2 = "";
<%if(request.getAttribute("allParentesco") != null){
	ArrayList<ParentescoFamiliarBean> parentesco = (ArrayList)request.getAttribute("allParentesco");
	
	for(int x=0; x < parentesco.size(); x++)
	{
%>
	optionCombo2 = optionCombo2 + '<option value="<%= parentesco.get(x).getCodigo() %>">' + '<%= parentesco.get(x).getDescricao() %>' + '</option>';
<%}}%>
</script>
<script>
var optionCombo3 = "";
<%if(request.getAttribute("allCor") != null){
	ArrayList<CorFamiliarBean> cor = (ArrayList)request.getAttribute("allCor");
	
	for(int x=0; x < cor.size(); x++)
	{
%>
	optionCombo3 = optionCombo3 + '<option value="<%= cor.get(x).getCodigo() %>">' + '<%= cor.get(x).getDescricao() %>' + '</option>';
<%}}%>

</script>

<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="SIHISB - Planejamento e monitoramento da Política Habitacional no município" />
<meta name="keywords" content="SEHAB SIHISP MAPA HABITAÇÃO MONITORAMENTO MAPEAMENTO" />
<META HTTP-EQUIV="CACHE-CONTROL" CONTENT="NO-CACHE">
<META HTTP-EQUIV="PRAGMA" CONTENT="NO-CACHE">
<link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />
<link rel="stylesheet" href="css/style.css" type="text/css"	media="screen" />
<link rel="stylesheet" href="css/print.css" type="text/css"	media="print" />
<link rel="stylesheet" href="css/jquery.alerts.css" type="text/css"	media="screen" />
<link rel="stylesheet" href="css/box.css" type="text/css" media="screen" />


		
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
<link rel="stylesheet" href="akzhan/jquery.wysiwyg.css" type="text/css" />

<script type="text/javascript" src="akzhan/lib/jquery.js"></script>
<script type="text/javascript" src="akzhan/jquery.wysiwyg.js"></script>
<script type="text/javascript" src="akzhan/controls/wysiwyg.image.js"></script>
<script type="text/javascript" src="akzhan/controls/wysiwyg.link.js"></script>
<script type="text/javascript" src="akzhan/controls/wysiwyg.table.js"></script>

<style>
.bigWidthInput {
	width: 500px !important
}
</style>
<style type="text/css">
.BCDE, .BCD, .BC, .B1, .CDE, .CD, .C2, .DE, .D3, .E4{display:none}
</style>

</head>



<body>
<input type="hidden" id="grupo" value="<%=usuario.getGrupo() %>"/>
<input type="hidden" id="modulo" value="<%=usuario.getModulo()%>"/>
	<a name="topo"></a>
	<div id="header"></div>
	<div id="top-site">
		<div id="logo"></div>
		<div id="logo_sihisb"></div>
		<div style="position: absolute;right:200px;top:140px">Olá <%=usuario.getLogin()%></div>
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
					<li class="BCDE BCD BC CDE CD C2" ><a href="#">CADASTRO <br/>DE FAMILIAS</a>
					
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
					<li class="BCDE BCD CDE CD DE D3"><a href="http://192.168.237.24:8081/apex/f?p=100">RENDA<br/>ABRIGO</a>
					
				</li>
				
				<li class="BCDE CDE DE E4"><a href="http://192.168.237.24:8081/apex/f?p=102">TERMO PERMISSÃO<br/>USO</a>
					
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
		<h1>SIHISB - Cadastro de Família</h1>
		<div id="erros" style="display: none;">
			Favor, verifique os campos destacados em <b>vermelho</b> no
			formulário.
		</div>
		<div id="wrapper">
			<div id="steps">
					<%if(request.getAttribute("update") != null){%>
					<form id="formElem" name="formElem" id="form" method="post" action="alteraProjeto">
						<input type="hidden" name="update" value="update">
					<%}else{%>
					<form id="formElem" name="formElem" id="form" method="post" action="cadastroProjeto">
					<%}%>	
								
					<fieldset class="step">
					
					<legend>Cadastro de Munícipe</legend>
				
					<div class="colunas">
					
							<p>
							<label for="assentamento" class="smallLabel">Assentamento</label> 
							<input type="text" id="assentamento" name="assentamento" class="smallLabel" value="<%=((CadastroProjetoBean)request.getAttribute("projeto")).getNomeArea()%>">
																		
							<label for="n_selo" class="smallLabel">Selo</label> 
							<input type="text" id="n_selo" name="n_selo" AUTOCOMPLETE=OFF class="smallLabel" value="<%=((CadastroProjetoBean)request.getAttribute("projeto")).getSelo()%>" />
						</p>
						<p>
							<label for="n_cadastro">Número do Cadastro</label> 
							<input type="text" id="n_cadastro" name="n_cadastro" AUTOCOMPLETE=OFF readonly=readonly value="<%=((CadastroProjetoBean)request.getAttribute("projeto")).getNumeroCadastro()%>"/>
							<script type="text/javascript">
									(function($) {
										$('#n_selo').change(function() {
											if($('#assentamento').val() != 'false' && $('#assentamento').val() != '' && $('#n_selo').val() != '')
											{
												var n_cadastro = $('#n_selo').val() + '-' + $('#assentamento').val();
												$('#n_cadastro').val(n_cadastro);
											}
											else
										{
												alert('Não deixe de selecionar o Assentamento e Selo');
												$('#assentamento').focus();
											}
										});
										$("#n_cadastro").focus(function(){
											if($("#n_cadastro").val() == '')
											{
												var n_cadastro = $('#n_selo').val() + '-' + $('#assentamento').val();
												$('#n_cadastro').val(n_cadastro);
											}
										});
									})(jQuery);
								</script>


						</p>
							<p>
							<label for="projeto">Projeto</label>
							<input type="text"	id="projeto" name="projeto" AUTOCOMPLETE=OFF value="<%=((CadastroProjetoBean)request.getAttribute("projeto")).getProjeto() %>" />
							</p>
							
							<p>
								<label for="nome_1_responsavel">Nome do 1º Responsável</label> <input
									type="text" id="nome_1_responsavel" name="nome_1_responsavel"
									AUTOCOMPLETE=OFF value="<%=((CadastroProjetoBean)request.getAttribute("projeto")).getNomePrimResponsavel()%>"/>
							</p>
							<p>
								<label for="cpf">CPF</label> <input type="text" id="cpf"
									name="cpf" AUTOCOMPLETE=OFF value="<%=((CadastroProjetoBean)request.getAttribute("projeto")).getCpf()%>" <%=(request.getAttribute("update") != null ? "readonly='readonly'" : "") %> />
							</p>
							<p>
								<label for="rg" class="smallLabel">RG</label> <input type="text" id="rg" name="rg"
									AUTOCOMPLETE=OFF class="smallLabel" value="<%=((CadastroProjetoBean)request.getAttribute("projeto")).getRg()%>" />
														
								<label for="uf" class="smallLabel">UF</label> 
								<select id="uf" name="uf" class="smallLabel">
												<%if(request.getAttribute("allUf") != null){
											ArrayList<ProjetoUfBean> uf1 = (ArrayList)request.getAttribute("allUf");
											
											for(int i=0; i < uf1.size(); i++)
											{
										%>
										<option value="<%= uf1.get(i).getCodigo() %>" <%=uf1.get(i).getSelected() %>>
										<%= uf1.get(i).getDescricao() %>
										</option>
										<%}}%>
								  </select>
							</p>
							<p>
								<label for="bolsa_familia">Bolsa Família</label> 
								<select id="bolsa_familia" name="bolsa_familia" class="smallLabel">
										<option value="-1">Selecione</option>
										<option value="1" <%= ((CadastroProjetoBean)request.getAttribute("projeto")).getBolsaFamilia() == 1 ? "SELECTED" : ""%> >Sim</option>
										<option value="2" <%= ((CadastroProjetoBean)request.getAttribute("projeto")).getBolsaFamilia() == 2 ? "SELECTED" : ""%> >Não</option>
									</select>
							
								<label for="recebe" class="smallLabel">Recebe</label> <select id="recebe"
									name="recebe" class="smallLabel">
									<option value="-1">Selecione</option>
										<option value="1" <%= ((CadastroProjetoBean)request.getAttribute("projeto")).getRecebe() == 1 ? "SELECTED" : ""%> >Sim</option>
										<option value="2" <%= ((CadastroProjetoBean)request.getAttribute("projeto")).getRecebe() == 2 ? "SELECTED" : ""%> >Não</option>
									</select>
							</p>
							
							<p>
								<label for="n_inscricao_social">Número da Inscrição
									Social</label> <input type="text" id="n_inscricao_social"
									name="n_inscricao_social" AUTOCOMPLETE=OFF value="<%=((CadastroProjetoBean)request.getAttribute("projeto")).getnIs()%>" />
							</p>
							<p>
								<label for="telefone">Telefone</label> <input
									type="text" id="telefone" name="telefone" AUTOCOMPLETE=OFF value="<%=((CadastroProjetoBean)request.getAttribute("projeto")).getTelefone()%>"/>
							</p>
							
							
						</div>
						<div class="colunas">
						<p>
								<label for="nome_2_responsavel">Nome do 2º Responsável</label> <input
									type="text" id="nome_2_responsavel" name="nome_2_responsavel"
									AUTOCOMPLETE=OFF  value="<%=((CadastroProjetoBean)request.getAttribute("projeto")).getNomeSegResponsavel()%>"/>
							</p>
							<p>
								<label for="cpf2">CPF</label> 
								<input type="text" id="cpf2" name="cpf2" AUTOCOMPLETE=OFF value="<%=((CadastroProjetoBean)request.getAttribute("projeto")).getCpfSeg() %>" <%=(request.getAttribute("update") != null ? "readonly='readonly'" : "") %> />
							</p>
							<p>
								<label for="rg2" class="smallLabel">RG</label> 
								<input type="text" id="rg2"	name="rg2" AUTOCOMPLETE=OFF class="smallLabel" value="<%=((CadastroProjetoBean)request.getAttribute("projeto")).getRgSeg() %>" />
							
								<label for="uf2" class="smallLabel">UF</label>
								 <select id="uf2" name="uf2" class="smallLabel">
												<%if(request.getAttribute("allUf2") != null){
											ArrayList<ProjetoUfBean> uf2 = (ArrayList)request.getAttribute("allUf2");
											
											for(int i=0; i < uf2.size(); i++)
											{
										%>
										<option value="<%= uf2.get(i).getCodigo() %>" <%=uf2.get(i).getSelected() %>>
										<%= uf2.get(i).getDescricao() %>
										</option>
										<%}}%>
								  </select>
							</p>
						
							
							<p>
								<label for="endereco">Endereço</label> <input type="text"
									id="endereco" name="endereco" AUTOCOMPLETE=OFF value="<%=((CadastroProjetoBean)request.getAttribute("projeto")).getEndereco()%>" />
							</p>
							<p>
								<label for="tempo_imovel">Tempo de Moradia no Imóvel</label> <input
									type="text" id="tempo_imovel" style="width: 250px"
									name="tempo_imovel" AUTOCOMPLETE=OFF value="<%=((CadastroProjetoBean)request.getAttribute("projeto")).getTempoMoradia()%>" /> Anos
							</p>
							<p>
								<label for="tempo_area">Tempo de Moradia na Área</label> <input
									type="text" id="tempo_area" style="width: 250px"
									name="tempo_area" AUTOCOMPLETE=OFF value="<%=((CadastroProjetoBean)request.getAttribute("projeto")).getTempoArea()%>" /> Anos
							</p>
							<p>
								<label for="tempo_municipio">Tempo de Moradia na Município</label>
								 <input type="text" id="tempo_municipio" style="width: 250px" name="tempo_municipio" AUTOCOMPLETE=OFF  value = "<%=((CadastroProjetoBean)request.getAttribute("projeto")).getTempoMunicipio()%>"/>Anos
							</p>
							</div>
							<legend>Histórico</legend>

						<p class="width100">

								<label for="observacao" class="bigLabel">Descrição</label> 
								<textarea id="observacao" name="observacao"	class="specialTextArea"><%=((CadastroProjetoBean)request.getAttribute("projeto")).getObservacoes()%></textarea>
								<script type="text/javascript">
									(function($) {

										$(document).ready(function() {

											$('#observacao').wysiwyg();

										});

									})(jQuery);
								</script>
							</p>
						
						<input type="hidden" AUTOCOMPLETE=OFF />
					</fieldset>
					
					<fieldset class="step">
						<legend>Composição Familiar</legend>
						<p class="width100">
							<button style="font-size: 14px; padding: 8px" onclick="criaComposicaoFamiliar()" type="Button" id="addIntFam" />
							Adicionar Integrante Familiar
							</button>
						</p>
						
						<div style="width: 1000px; overflow: auto;">
							<table id="tabelaIntegrantes">
								<tr>
									<th></th>
									<th><img src="./images/arrow_more.png" /> Nº Cadastro</th>
									<th><img src="./images/arrow_more.png" /> Nome</th>
									<th><img src="./images/arrow_more.png" /> Parentesco</th>
									<th><img src="./images/arrow_more.png" /> CPF</th>
									<th><img src="./images/arrow_more.png" /> RG</th>
									<th><img src="./images/arrow_more.png" /> Renda(R$)</th>
									<th><img src="./images/arrow_more.png" /> Família</th>
									<th><img src="./images/arrow_more.png" /> Sexo</th>
									<th><img src="./images/arrow_more.png" /> Idade</th>
									<th><img src="./images/arrow_more.png" /> Cor</th>
									<th><img src="./images/arrow_more.png" /> Escolaridade</th>
									<th><img src="./images/arrow_more.png" /> Ocupação</th>
									<th><img src="./images/arrow_more.png" /> Deficiência</th>
								</tr>
							<% ArrayList<ComposicaoFamiliarBean> compfam = (ArrayList)request.getAttribute("compfam");
									for(int i=0; i < compfam.size(); i++){
							%>
						
															
						    <tr class="campos">
						    
						  	<input type="hidden" name="counter" id="<%=i+1 %>"/>
							<td><a href="javascript: void()" onclick="removeLinha(this)"><img src="./images/delete.png"/></a></td>
							<td><input type="text" disabled=disabled style="background: #f1f1f1" name="dom_n_cadastro[<%=i+1 %>]" value="<%=  compfam.get(i).getNumeroCadastro()%>"/></td>
							<td><input type="text"  name="dom_nome[<%=i+1 %>]" value="<%=  compfam.get(i).getNomes()%>"/></td>
							<td><select id="dom_parentesco"  name="dom_parentesco[<%=i+1 %>]">
							<%if(request.getAttribute("allParentesco") != null){
											ArrayList<ParentescoFamiliarBean> parentesco = (ArrayList)request.getAttribute("allParentesco");
											
											for(int x=0; x < parentesco.size(); x++)
											{
										%>
										<option value="<%= parentesco.get(x).getCodigo() %>" <%=parentesco.get(x).getSelected() %>>
										<%= parentesco.get(x).getDescricao() %>
										</option>
										<%}}%>
								  </select>				
							</td>
							<td><input type="text"  name="dom_cpf[<%=i+1 %>]" value="<%=  compfam.get(i).getCpf()%>"/></td>
							<td><input type="text"  name="dom_rg[<%=i+1 %>]" value="<%=  compfam.get(i).getRg()%>"/></td>
							<td><input type="text"  name="dom_renda[<%=i+1 %>]" value="<%=  compfam.get(i).getRenda()%>"/></td>
							<td><input type="text"  name="dom_familia[<%=i+1 %>]" value="<%=  compfam.get(i).getFamilia()%>"/></td>
							<td><select id="dom_sexo" name="dom_sexo[<%=i+1%>]" >
							<option value="-1">Selecione</option>
							<option value="1" <%=  compfam.get(i).getSexo() == 1 ? "SELECTED" : ""%> >Masc</option>
							<option value="2" <%=  compfam.get(i).getSexo() == 2 ? "SELECTED" : ""%> >Fem</option>
							</select>
							</td>
							<td><input type="text"  name="dom_idade[<%=i+1%>]" value="<%=  compfam.get(i).getIdade()%>"/></td>
							<td><select id="dom_cor" name="dom_cor[<%=i+1%>]" >
							<%if(request.getAttribute("allCor") != null){
											ArrayList<CorFamiliarBean> cor = (ArrayList)request.getAttribute("allCor");
											
											for(int x=0; x < cor.size(); x++)
											{
										%>
										<option value="<%= cor.get(x).getCodigo() %>" <%=cor.get(x).getSelected() %>>
										<%= cor.get(x).getDescricao() %>
										</option>
										<%}}%>
								  </select>				
							</td>
							<td><select id="dom_escolaridade"  name="dom_escolaridade[<%=i+1%>]">
									<%if(request.getAttribute("allEscolaridade") != null){
											ArrayList<EscolaridadeFamiliaBean> escolaridade = (ArrayList)request.getAttribute("allEscolaridade");
											
											for(int x=0; x < escolaridade.size(); x++)
											{
										%>
										<option value="<%= escolaridade.get(x).getCodigo() %>" <%=escolaridade.get(x).getSelected() %>>
										<%= escolaridade.get(x).getDescricao() %>
										</option>
										<%}}%>
								  </select>							
							
							
							</td>
							<td><input type="text"  name="dom_ocupacao[<%=i+1%>]" value="<%=  compfam.get(i).getOcupacao()%>"/></td>
							<td><select id="dom_deficiencia" '+imprimiControle+'  name="dom_deficiencia[<%=i+1 %>]">
							<option value="-1">Selecione</option>
										<option value="1" <%=  compfam.get(i).getDeficiencia() == 1 ? "SELECTED" : ""%> >Sim</option>
										<option value="2" <%=  compfam.get(i).getDeficiencia() == 2 ? "SELECTED" : ""%> >Não</option>
									</select>
							
							</td>
							</tr>
								
							<%} %>
							</table>
						</div>
					</fieldset>
					<fieldset class="step">
						<legend>Confirme</legend>
						<br /><br />
						<div style="width: 1000px;text-align:center; ">
						<%if(request.getAttribute("update") != null){%>
							<h2>Confirmar cadastro de projetos?</h2>
							<%}else{%>
							<h2>Confirmar cadastro de projetos?</h2>
							<%}%>
						</div>
						<br />
						<center>
						<table border="0" style="width: 200px">
							<tr>
								<td><button id="registerButton" type="submit" onclick="return verificaSubmit()">Sim</button></td>
								<td><button id="registerButton" type="Button" onClick="location.href='paginaInicial'">Não</button></td>
							</tr>
						</table>
						</center>
					</fieldset>

				</form>
				</form>

			</div>
			<div id="navigation" style="display: none;">
				<ul>
					<li class="selected"><a href="#"
						onclick="location.href='#topo';">Dados Gerais</a></li>
					<li><a href="#" onclick="location.href='#topo';">Composição
							Familiar</a></li>
					<li><a href="#topo" onclick="location.href='#topo'">Confirme</a>
					</li>
				</ul>
			</div>
		</div>
		<div id="rodape">
			Copyright © 2012 - SECRETARIA DE HABITAÇÃO DE SÃO BERNARDO DO CAMPO <br />
			Rua Jacquey, 61 Rudge Ramos - CEP 09634 - 000 <br /> PABX 4367 - 6400 
			</div>
		</div>
		
		
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
		
	}
	</script>
	</body>
</html>