<%@ page language="java" contentType="text/html" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--  teste-->
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
<%@page import="java.util.List" %>
<%@page import="br.gov.sp.saobernardo.sehab.bean.ProgramaBean" %>
<%@page import="br.gov.sp.saobernardo.sehab.bean.EstagioBean" %>
<%@page import="br.gov.sp.saobernardo.sehab.loginBean.LoginBean" %>

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
			<h1>SIHISB - Cadastro de Assentamentos</h1>
			
			<div id="erros" style="display: none;">
				Favor, verifique os campos destacados em <b>vermelho</b> no formulário.
			</div>
			
			<div id="wrapper">
				<div id="steps">
					<%if(request.getAttribute("update") != null){%>
					<form id="formElem" name="formElem" method="post" action="alterarCaracterizacao">
						<input type="hidden" name="update" value="update">
						<input type="hidden" name="usuario" value="<%=usuario.getMatricula() %>">
					<%}else{%>
					<form id="formElem" name="formElem" method="get" action="cadastroCaracterizacao">
					<%}%>				
						<fieldset class="step">
						<input type="hidden">Ultima alteração feita por:<%=((CaracterizacaoBean)request.getAttribute("caracterizacao")).getUsuario()%> em <%=((CaracterizacaoBean)request.getAttribute("caracterizacao")).getData()%> </input> 
							<legend>Caracterização</legend>
							<div class="colunas">
								<p>
									<label for="codigo_xxx" >Cód. Habitação</label> 
									
									
									<input type="text" id="codigo_xxx" name="codigo_xxx" class="smallInput" tabindex="1" value="<%= ((CaracterizacaoBean)request.getAttribute("caracterizacao")).getCodFunep()%>"  <%=(request.getAttribute("update") != null ? "readonly='readonly'" : "") %> />
									<label for="codigo_funep" class="smallLabel">Código Funep</label> 
									<input type="text" id="codigo_funep" name="codigo_funep" class="required smallInput" tabindex="2" value="<%= ((CaracterizacaoBean)request.getAttribute("caracterizacao")).getCodFunep()%>" <%=(request.getAttribute("update") != null ? "readonly='readonly'" : "") %>/>
								</p>
	
								<p>
									<label for="nome_area">Nome da área</label> 
									<input type="text" id="nome_area" name="nome_area" class="required" tabindex="3" value="<%=((CaracterizacaoBean)request.getAttribute("caracterizacao")).getNomeArea()== "-1" ? "" : ((CaracterizacaoBean)request.getAttribute("caracterizacao")).getNomeArea()%>"  />
								</p>
	
								<p>
									<label for="id_regiao_operacao">Região Op</label> 
									<input type="text" id="cod_regiao_op" name="cod_regiao_op" tabindex="4" value="<%=((CaracterizacaoBean)request.getAttribute("caracterizacao")).getCodRegiaoOp()%>" />
									
								</p>
	
								<p>
									<label for="codigo_vulnerabilidade">Vulnerabilidade</label> 
									<select id="codigo_vulnerabilidade" name="codigo_vulnerabilidade" tabindex="5" >
										<%
											if(request.getAttribute("allVulnerabilidade") != null){
											ArrayList<VulnerabilidadeBean> vulnerabilidade = (ArrayList)request.getAttribute("allVulnerabilidade");
											
											for(int i=0; i < vulnerabilidade.size(); i++)
											{
										%>
										<option value="<%= vulnerabilidade.get(i).getCodigo() %>" <%=vulnerabilidade.get(i).getSelected() %>>
										<%= vulnerabilidade.get(i).getDescricao() %>
										</option>
										<%}}%>
								  </select>
								</p>
	
								<p>
									<label for="codigo_localizacao">Localização</label> 
									<input type="text" id="codigo_localizacao" name="codigo_localizacao" tabindex="6" value="<%=((CaracterizacaoBean)request.getAttribute("caracterizacao")).getCodLocalizacao()%>"/>
														
								</p>
	
								<p>
									<label for="qt_uhs_mapeada">Nº Uhs Mapeadas</label> 
									<input class="smallInput" id="qt_uhs_mapeada" name="qt_uhs_mapeada" onchange="setValueMapeadaPlus(this.value)" tabindex="7" value="<%= ((CaracterizacaoBean)request.getAttribute("caracterizacao")).getNumUhsMapeadas()%>" class="required"/>
									<script type="text/javascript">

								$("#qt_uhs_mapeada").change(function() {      

									var qt_uhs_mapeada = $("#qt_uhs_mapeada").val();

									var calcula = ((qt_uhs_mapeada * 5)/100) + (qt_uhs_mapeada * 1);

									$("#qt_uhs_mapeada_plus").val(Math.ceil(calcula));

								});

								(function($) {
									$(document).ready
									(function() {
										var qt_uhs_mapeada = $("#qt_uhs_mapeada").val();
										if(qt_uhs_mapeada != '')
										{
											var calcula = ((qt_uhs_mapeada * 5)/100) + (qt_uhs_mapeada * 1);
											$("#qt_uhs_mapeada_plus").val(Math.ceil(calcula));
										}
									});
								})(jQuery);
								</script>
								
									<label for="qt_uhs_mapeada_plus" class="smallLabel">+5%</label> 
									<input class="smallInput" id="qt_uhs_mapeada_plus" name="qt_uhs_mapeada_plus" disabled="disabled" readonly=readonly tabindex="8" value="<%= ((CaracterizacaoBean)request.getAttribute("caracterizacao")).getNumUhsMapeadasPercentual()%>"/>
								</p>
								<p>

								<label for="cad_unidades">Unidades Cadastradas</label> 

								<input type="text" id="cad_unidades" name="cad_unidades"  tabindex=9 value="<%= ((CaracterizacaoBean)request.getAttribute("caracterizacao")).getCadunidades() == "-1" ? "" : ((CaracterizacaoBean)request.getAttribute("caracterizacao")).getCadunidades()%>"/>

							</p>
								
	
								<p>
									<label for="codigo_tipologia">Tipologia</label> 
									<select id="codigo_tipologia" name="codigo_tipologia" tabindex="10" >
										<%
											if(request.getAttribute("allTipologia") != null){
											ArrayList<TipologiaBean> tipologia = (ArrayList)request.getAttribute("allTipologia");
											
											for(int i=0; i < tipologia.size(); i++)
											{
										%>
										<option value="<%= tipologia.get(i).getCodigo() %>" <%=tipologia.get(i).getSelected() %>>
										<%= tipologia.get(i).getDescricao() %>
										</option>
										<%}}%>
								  </select>
								</p>
								
								<p>
									<label for="area_manancial">Manancial</label>
									<input type="text" id="area_manancial" name="area_manancial" tabindex="11" value="<%= ((CaracterizacaoBean)request.getAttribute("caracterizacao")).getCodManancial()%>"></input>
										
								</p>
								<p>

								<label for="area_em_projeto">Área em Projeto</label>
								<select id="area_em_projeto" name="area_em_projeto" tabindex=12>
								<option value="">Selecione</option>
										<option value="1" <%= ((CaracterizacaoBean)request.getAttribute("caracterizacao")).getAreaEmProjeto() == 1 ? "SELECTED" : ""%> >Sim</option>
										<option value="2" <%= ((CaracterizacaoBean)request.getAttribute("caracterizacao")).getAreaEmProjeto() == 2 ? "SELECTED" : ""%> >Não</option>
									</select>

							</p>
								
								
								<p>
									<label for="id_tipo_assentamento">Tipo assentamento</label> 
									<select id="codigo_tipo_assentamento" name="codigo_tipo_assentamento" tabindex="13" >
										<%
											if(request.getAttribute("allTipoAssentamento") != null){
											ArrayList<TipoAssentamentoBean> tipoAssentamento = (ArrayList)request.getAttribute("allTipoAssentamento");
											
											for(int i=0; i < tipoAssentamento.size(); i++)
											{
										%>
										<option value="<%= tipoAssentamento.get(i).getCodigo() %>" <%=tipoAssentamento.get(i).getSelected() %>>
										<%= tipoAssentamento.get(i).getDescricao() %>
										</option>
										<%}}%>
								  </select>									
								</p>
	
								<p>
									<label for="id_situacao_propriedade">Situação Propriedade</label> 
									<select id="codigo_situacao_propriedade" name="codigo_situacao_propriedade" tabindex="14"  multiple="multiple">
										<%
											if(request.getAttribute("allSituacaoPropriedade") != null){
											ArrayList<SituacaoPropriedadeBean> situacaoPropriedade = (ArrayList)request.getAttribute("allSituacaoPropriedade");
											
											for(int i=0; i < situacaoPropriedade.size(); i++)
											{
										%>
										<option value="<%= situacaoPropriedade.get(i).getCodigo() %>" <%=situacaoPropriedade.get(i).getSelected() %>>
										<%= situacaoPropriedade.get(i).getDescricao() %>
				
										</option>
										<%}}%>
								  </select>
								</p>
								<p>
									<label for="obs_situacao_propriedade" class="bigLabel">Observações</label> 
									<textarea id="obs_situacao_propriedade" name="obs_situacao_propriedade" class="specialTextArea" tabindex="15" ><%= ((CaracterizacaoBean)request.getAttribute("caracterizacao")).getObsSituacaoPropriedade()%></textarea>
									<script type="text/javascript" >
								(function($) {
									$(document).ready
									(function() {
										$(document.getElementById('obs_situacao_propriedade')).wysiwyg();
									});
								})(jQuery);
								</script>
								</p>
								
								
							</div>
							
							<div class="colunas">
							
							<p>

								<label for="id_situacao_propriedade" class="bigLabel">Situação da Intervenção</label> 

								<br/><br/><br/>

								<label for="cod_programa" class="smallLabel">Programa</label> 

								<select id="cod_Programa" name="cod_Programa" tabindex=16  multiple="multiple">
<%
											if(request.getAttribute("allPrograma") != null){
											ArrayList<ProgramaBean> prog = (ArrayList)request.getAttribute("allPrograma");
											
											for(int i=0; i < prog.size(); i++)
											{
										%>
										<option value="<%= prog.get(i).getCodigo() %>" <%=prog.get(i).getSelected() %>>
										<%= prog.get(i).getDescricao() %>
										</option>
										<%}}%>
								</select>

								<label for="cod_estagio" class="smallLabel">Estágio</label> 

								<select id="cod_estagio" name="cod_estagio" tabindex=17>

										<%if(request.getAttribute("allEstagio") != null){
											ArrayList<EstagioBean> estag = (ArrayList)request.getAttribute("allEstagio");
											
											for(int i=0; i < estag.size(); i++)
											{
										%>
										<option value="<%= estag.get(i).getCodigo() %>" <%=estag.get(i).getSelected() %>>
										<%= estag.get(i).getDescricao() %>
										</option>
										<%}}%>
								</select>

							</p>

							

							<p>

								<label for="classGeral" >Classificação Geral</label> 

								<input type="text" id="classGeral" name="classGeral" class="smallInput" tabindex=18 value="<%= ((CaracterizacaoBean)request.getAttribute("caracterizacao")).getClassGeral()== "null" ? "" :((CaracterizacaoBean)request.getAttribute("caracterizacao")).getClassGeral()%>"/>

								<label for="hierarq_prog" class="smallLabel">Hierarquização no Programa</label> 

								<input type="text" id="hierarq_prog" name="hierarq_prog" class="smallInput" tabindex=19 value="<%= ((CaracterizacaoBean)request.getAttribute("caracterizacao")).getHierarquizacao()%>" />

							</p>
								<p>
									<label class="bigLabel">Ano de Ocupação</label> 
									<label for="dt_ocupacao" class="smallLabel">Documentado</label> 
									<input id="dt_ocupacao" name="dt_ocupacao" class="smallInput" tabindex="20" value="<%= ((CaracterizacaoBean)request.getAttribute("caracterizacao")).getDataOcupacaoDoc()%>" class="required"/>
									<label for="dt_ocupacao_entrevista" class="smallLabel">Moradores</label> 
									<input id="dt_ocupacao_entrevista" name="dt_ocupacao_entrevista" class="smallInput" tabindex="19" value="<%= ((CaracterizacaoBean)request.getAttribute("caracterizacao")).getDataOcupacaoEntrevista()%>" class="required"/>
								</p>
								
								<p>
									<label for="apps">Apps</label>
									<select id="apps" name="apps" tabindex="21"  multiple="multiple">
										<%
											if(request.getAttribute("allApps") != null){
											ArrayList<AppsBean> apps = (ArrayList)request.getAttribute("allApps");
											
											for(int i=0; i < apps.size(); i++)
											{
										%>
										<option value="<%= apps.get(i).getCodigo() %>" <%=apps.get(i).getSelected() %>>
										<%= apps.get(i).getDescricao() %>
										</option>
										<%}}%>
								  </select>
								</p>
	
								<p>
									<label for="codigo_zoneamento">Zoneamento</label>
									<select id="codigo_zoneamento" name="codigo_zoneamento" tabindex="22" >
										<%
											if(request.getAttribute("allZoneamento") != null){
											ArrayList<ZoneamentoBean> zoneamento = (ArrayList)request.getAttribute("allZoneamento");
											
											for(int i=0; i < zoneamento.size(); i++)
											{
										%>
										<option value="<%= zoneamento.get(i).getCodigo() %>" <%=zoneamento.get(i).getSelected() %>>
										<%= zoneamento.get(i).getDescricao() %>
										</option>
										<%}}%>
								  </select>
								</p>
	
								<p>
									<label for="codigo_feicao_morfologica">Feição Morfológica</label>
									<input type="text" id="codigo_feicao_morfologica" name="codigo_feicao_morfologica" tabindex="23" value="<%=((CaracterizacaoBean)request.getAttribute("caracterizacao")).getCodFeicaoMorfologica()%>"/>
										
								</p>
	
								<p>
									<label for="codigo_gravames_judiciais">Gravames Judiciais</label> 
									<input id="codigo_gravames_judiciais" name="codigo_gravames_judiciais" tabindex="24" value="<%= ((CaracterizacaoBean)request.getAttribute("caracterizacao")).getCodGravamesJudiciais() == "-1" ? "" : ((CaracterizacaoBean)request.getAttribute("caracterizacao")).getCodGravamesJudiciais()%>" />
								</p>
								
								<p>
								<label for="obs_judicial" class="bigLabel">Observações Juridicas</label> 
								<textarea id="obs_judicial" name="obs_judicial" class="specialTextArea" style= "height: 253px" tabindex="25"><%= ((CaracterizacaoBean)request.getAttribute("caracterizacao")).getObsJudicial()%> </textarea>
								<script type="text/javascript" >
								(function($) {
									$(document).ready(function() {
										$(document.getElementsByName('obs_judicial')).wysiwyg().value;
									});
								})(jQuery);
								</script>
								</p>
							</div>
							<legend>Caracterização Físico-Urbanística</legend>
							<p class="width100">
								<label for="car_fis_urb" class="bigLabel">Descrição</label> 
								<textarea id="car_fis_urb" name="car_fis_urb" class="specialTextArea" tabindex="26"><%= ((CaracterizacaoBean)request.getAttribute("caracterizacao")).getCaracFiscoUrban()%></textarea>
								<script type="text/javascript" >
								(function($) {
									$(document).ready(function() {
										$(document.getElementById('car_fis_urb')).wysiwyg();
									});
								})(jQuery);
								</script>
							</p>
							<legend>Pontos de GPS</legend>
							<p class="width100">
								<label for="p_gps" class="bigLabel">Descrição</label> 
								<textarea id="p_gps" name="p_gps" class="specialTextArea" tabindex="27"><%= ((CaracterizacaoBean)request.getAttribute("caracterizacao")).getPontoGps()%></textarea>
								<script type="text/javascript" >
								(function($) {
									$(document).ready(function() {
										$(document.getElementById('p_gps')).wysiwyg();
									});
								})(jQuery);
								</script>
							</p>
					<legend>Galeria de Fotos Gravadas</legend>
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
						<a onclick="ocultaImagem(this, 'deleteImage?codigo_funep=<%= ((CaracterizacaoBean)request.getAttribute("caracterizacao")).getCodFunep()%>&delete_image=<%out.print(nomeImage.get(x));%>')" href="javascript: void()">Remover</a> 
						 
					</div>
					<%}
					
									
					}%></div>
					
						
					
						<legend>Incluir novas fotos</legend>
						<div class="colunas">	
										
							<div id="carregandoGaleria_01" style="display: none; background-image: url(images/loadingAnimation.gif); height: 13px; width: 208px; margin-left: 150px"></div>
							
							<p id="carregaGaleria_01">
								<iframe src="uploadImage.jsp?codigo_funep=<%= ((CaracterizacaoBean)request.getAttribute("caracterizacao")).getCodFunep()%>" frameborder="0" width="300" height="60" scrolling="no"></iframe>
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
								<h2>Confirmar alteração de Cadastro?</h2>
								<%}else{%>
								<h2>Confirmar cadastro de Cadastro?</h2>
								<%}%>
							</div>
							<br />
							<center>
							<table border="0" style="width: 200px">
								<tr>
									<td><button id="registerButton" type="submit" onclick="return verificaSubmit()">Sim</button></td>
									<td><button id="registerButton" type="Button" onClick="javascript:mainPage()">Não</button></td>
									
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
				<br/>
				Rua Jacquey, 61 Rudge Ramos - CEP 09634 - 000
				<br/>
				PABX 4367 - 6400
			</div>
			
		</div>
			
	<script type="text/javascript">
		$(document).ready(function(){
			$("#dt_ocupacao").mask("9999");
			$("#dt_ocupacao_entrevista").mask("9999");

		});
	</script>
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
		
	}
	</script>

</body>
</html>
