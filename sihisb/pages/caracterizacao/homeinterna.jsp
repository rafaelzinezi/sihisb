<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">

<%@page import="br.gov.sp.saobernardo.sehab.loginBean.LoginBean"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Prefeitura de São Bernardo do Campo - Sihisb</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="SIHISB - Planejamento e monitoramento da Política Habitacional no município" />
<meta name="keywords" content="SEHAB SIHISP MAPA HABITAÇÃO MONITORAMENTO MAPEAMENTO" />
<META HTTP-EQUIV="CACHE-CONTROL" CONTENT="NO-CACHE">
<META HTTP-EQUIV="PRAGMA" CONTENT="NO-CACHE">
<link rel="stylesheet" href="css/style.css" type="text/css"	media="screen" />
<link rel="stylesheet" href="css/box.css" type="text/css"	media="screen" />
<link rel="stylesheet" href="css/jquery-ui-1.8.11.custom.css" type="text/css" />
<link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/sliding.form.js"></script>
<script type="text/javascript" src="js/global.js"></script>
<script type="text/javascript" src="js/box.js"></script>
<script type="text/javascript" src="js/jquery-ui.min.js"></script>
<%  
LoginBean usuario = (LoginBean)session.getAttribute("user"); 
if(usuario == null){
%>  
<% response.sendRedirect("index2.jsp");%>
<%}%>

<style type="text/css">
.B, .C, .D, .E, .F{display:none}
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
					<li class="B"><a href="#">ASSENTAMENTOS</a>
					
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
					<li class="C" ><a href="#">CADASTRO <br/> FAMILIAS</a>
					
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

					<li class="D"><a href="http://192.168.237.24:8081/apex/f?p=100">RENDA<br/>ABRIGO</a>
					
				</li>
			
					<li class="E"><a href="http://192.168.237.24:8081/apex/f?p=102">TERMO PERMISSÃO<br/>USO</a>
					
				</li>
					<li class="F"><a href="#">EMPREENDIMENTOS</a>

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

		<h1>SIHISB - SÃO BERNARDO DO CAMPO</h1>

		<div id="wrapper">

		

		

			<div id="sitio">

				<div id="gallery" style="height: 300px">

					<a href="#" class="show">

						<img src="images/banners/banner_001.jpg" 

						alt="" title="" width="980" height="300" rel="<h3>Urbanização e Arte Urbana</h3>no Alvarenga"/>

					</a>

					<a href="#">

						<img src="images/banners/banner_002.jpg" 

						alt="" title="" width="980" height="300" rel="<h3>Conjunto Habitacional</h3>3 Marias"/>

					</a>

					<a href="#">

						<img src="images/banners/banner_003.jpg" 

						alt="" title="" width="980" height="300" rel="<h3>Conjunto Habitacional Silvina</h3>Moradores fazem mudança para apartamentos"/>

					</a>

					<a href="#">

						<img src="images/banners/banner_004.jpg" 

						alt="" title="" width="980" height="300" rel="<h3>Conjunto Habitacional</h3>Nova Silvina 3"/>

					</a>

					<a href="#">

						<img src="images/banners/banner_005.jpg" 

						alt="" title="" width="980" height="300" rel="<h3>Obras em Andamento</h3>no Parque São Bernardo"/>

					</a>

					<div class="caption"><div class="content"></div></div>

				</div>

				<div class="clear"></div>

				<script type="text/javascript">

				$(document).ready(function() {      

					//Execute the slideShow

					slideShow();

				});

				</script>

				

				

				<div id="posts">
				
					<h2>Eventos</h2>

					<legend>Atualizado: 10 de setembro de 2013</legend>

					<p></p>
					
					<ul class="lista-decorativa">

						<li><a href="javascript: void()" onclick="$(&#39;#seminario&#39;).slideToggle()">Seminário: Sistema de Informação de Habitação de Interesse Social - SIHISB: uma experiência de customização do HABISP</a></li>

						<div id="seminario" class="toggleBox" style="display: none;">

							<img src="images/Seminario.png" class="align-left">

							<p><b>Sistema de Informação de Habitação de Interesse Social de São Bernardo do campo:</b><br><br>

							• O seminário "Sistema de Informação de Habitação de Interesse Social (Sihisb): uma experiência de customização do Habisp" foi realizado em 09 de agosto de 2013, na Pinacoteca de São Bernardo do Campo.<br><br>

							Além do chefe do Executivo, também estiveram no evento a secretária de Habitação de São Bernardo, Tássia Regino; a representante do Banco Mundial, Juliana Garrido; o secretário de Habitação de São Paulo, José Floriano de Azevedo Marques Neto; William Cobbett, diretor da Aliança das Cidades; além da secretária nacional de Habitação, Inês Magalhães.<br><br>

							"Em 2009 não tínhamos dados organizados, era uma verdadeira tragédia. Mas a partir do Sihisb, tivemos um instrumento importante para facilitar o nosso trabalho", disse o prefeito. "A habitação foi definida como política prioritária quando assumimos a Prefeitura", completou, lembrando ainda das 3.450 unidades habitacionais entregues à população e também das 17 mil regularizações fundiárias em andamento no município.<br><br>

							A experiência de criação dessa ferramenta, que confere ainda mais transparência às ações da Prefeitura na área da habitação, virou um livro. O "Sihisb: "Sistema de Informação de Habitação de Interesse Social (Sihisb): uma experiência de customização do Habisp" foi entregue pelo prefeito a todos os convidados. A publicação é resultado da parceria do município de São Bernardo com o Banco Mundial.<br><br>

							"Ter um sistema como o Sihisb faz com que a informação seja obtida com maior qualidade para a população e também para o poder público", disse a secretária nacional de Habitação, Inês Magalhães.<br><br>

							A representante do Banco Mundial, Juliana Garrido, destacou a experiência de São Bernardo do Campo com o sistema. "É uma ferramenta fundamental para sistematizar os dados habitacionais do município com informações consistentes e confiáveis. Essa experiência de São Bernardo deve ser levada para outros municípios do Brasil e da América Latina", afirmou.<br>
							<br><small><I>Vinícius Dominichelli</I></small>
							<br><small><I>redação – Secretaria de Comunicação</I></small></p><br>
							• <a href="http://sihisb.saobernardo.sp.gov.br/seminario/" target="_blank" title="Clique para abrir a página da programação"> Programação</a>

							
							<div style="clear: both"></div>

							<br>

							

							<p>

								<b>Slides das apresentações:</b><br><br>

								<a href="arquivos/Mesa1.zip" target="_blank" title="Clique para fazer download"><img src="images/excel.png"/> Mesa 1 - A importância do Sistema de Informação para o Planejamento e Gestão Urbano-habitacional dos municípios brasileiros</a><br>
								
								<a href="arquivos/Mesa2.zip" target="_blank" title="Clique para fazer download"><img src="images/excel.png"/> Mesa 2 - A construção do SIHISB – Sistema de Informação da SEHAB de São Bernardo do Campo a partir da customização do HABISP</a><br>
								
								<a href="arquivos/Mesa3.zip" target="_blank" title="Clique para fazer download"><img src="images/excel.png"/> Mesa 3 - Disseminação da experiência para os municípios: Limites e possibilidades</a><br>

							</p>

							
							<small>(Dados atualizados: setembro/2013)</small>

						</div>
						
						</ul>
						
					<h2>Publicações e downloads</h2>

					<legend>Atualizado: 10 de setembro de 2013</legend>

					<p></p>
					
					<ul class="lista-decorativa">

						<li><a href="javascript: void()" onclick="$(&#39;#livro&#39;).slideToggle()">Sistema de Informação de Habitação de Interesse Social - SIHISB: uma experiência de customização do HABISP</a></li>

						<div id="livro" class="toggleBox" style="display: none;">

							<img src="images/livro_sihisb.png" class="align-left">

							<p><b>Publicação da experiência de customização do HABISP em São Bernardo do Campo</b><br><br>

							<a href="arquivos/SIHISB-portugues.pdf" target="_blank" title="Clique para fazer download"><img src="images/file_pdf.png"/> Versão em português (portuguese version)</a><br>

							<a href="arquivos/SIHISB-ingles.pdf" target="_blank" title="Clique para fazer download"><img src="images/file_pdf.png"/> Versão em inglês (english version)</a><br>

							</p>

							
							

						</div>
						
						<li><a href="javascript: void()" onclick="$(&#39;#PLHIS&#39;).slideToggle()">PLHIS - Plano Local de Habitação de Interesse Social</a></li>

						<div id="PLHIS" class="toggleBox" style="display: none;">

							<p><a href="arquivos/PLHIS_Sao-Bernardo-do-Campo_2010_2025.pdf" target="_blank" title="Clique para fazer download"><img src="images/file_pdf.png"/> PLHIS - Plano Local de Habitação de Interesse Social</a></p>

							</p>

							
							

						</div>
						
						</ul>

					<h2>O SIHISB</h2>

					<legend>Publicado: 25 de Junho de 2012</legend>

					<p>É um sistema de informações, via web, desenvolvido com tecnologia livre, com capacidade para armazenar e processar dados e informações alfa numéricas e espaciais, sobre a Habitação de Interesse Social em São Bernardo do Campo.</p>

					<p>O armazenamento de dados e, consequentemente, a geração de informações complexas, como indicadores sociais, análises espaciais e mapas, fazem deste sistema um importante instrumento para o planejamento e o monitoramento da Política Habitacional no município.</p>

					<p>Foi desenvolvido em ação de Cooperação Técnica com a Prefeitura de São Paulo, que formulou o HABISP, sistema que deu origem ao SIHISB e com a Aliança de Cidades. É coordenado em São Bernardo pela Secretaria de Habitação.</p>

					<p><a href="arquivos/guia_sihisb.pdf" target="_blank" title="Clique para fazer download"><img src="images/file_pdf.png"/> Saiba mais sobre como acessar o SIHISB</a></p>



					

					<h2>A Secretaria de Habitação</h2>

					<legend>Publicado: 25 de Junho de 2012</legend>

					<img src="images/a_politica_sbc.jpg" class="align-right" />

					<p>A Secretaria de Habitação é o órgão responsável pela coordenação da execução da Política Habitacional do município.</p>

					<p>A Política Municipal de Habitação se rege pelo princípio constitucional do direito à moradia digna, que aquela que assegura padrões básicos de habitabilidade, infraestrutura, saneamento ambiental, mobilidade e acesso a equipamentos e serviços urbanos e sociais, constituindo-se em vetor de inclusão social e de qualidade de vida na cidade.</p>

					<p>Para a implementação da Política Habitacional de Interesse Social, no período de 2010 e 2011 São Bernardo formulou o Plano Local de Habitação de Interesse Social.</p>

	

					<div style="clear:both"><br/></div>

				

					<h2>PLHIS - Plano Local de Habitação de Interesse Social</h2>

					<legend>Publicado: 25 de Junho de 2012</legend>

					

					<img src="images/plhis.jpg" class="align-left" />

					<p>O PLHIS é o instrumento de planejamento no município das ações da Política Habitacional de Interesse Social, abrangendo famílias de baixa renda, não atendidas pelo mercado formal. Tem o horizonte temporal de 2010 a 2025, correspondendo a quatro períodos de Plano Plurianual (PPA): o atual e os próximos três.</p>

					<p>Foi concebido também como instrumento de implementação local das ações da Política Nacional de Habitação (PNH) e adesão ao Sistema Nacional de Habitação de Interesse Social (SNHIS - Lei Federal no 11.124/05). E elaborado com a participação da sociedade, por meio do Conselho da Cidade e do Meio Ambiente – CONCIDADE e do Conselho Municipal do Orçamento Participativo – CMO.</p>

					<p>Uma das bases principais para a elaboração do PLHIS foi o Mapeamento de Assentamentos Precários e/ou Irregulares, estudo realizado em 2009 e 2010, que caracterizou os assentamentos quanto aos aspectos físico-ambientais e habitacionais (inclusive riscos, trazidos do PMRR), jurídico-fundiário e sócio-econômicos. A atualização do mapeamento apresentada no SIHISB mostra que a cidade tem <b>265</b> áreas irregulares mapeadas, sendo: <b>160</b> assentamentos do tipo favela, <b>105</b> assentamentos do tipo loteamento irregular. A irregularidade do município tem uma peculiaridade que é o fato de mais de 50% dos domicílios irregulares estarem construídas em <b>152</b> assentamentos precários e/ou irregulares localizados na Área de Proteção aos Mananciais Metropolitanos da Represa Billings - APRM-B.</p>

					<p>Considerando as necessidades habitacionais identificadas no município, o PLHIS estruturou suas linhas programáticas de intervenção e seus programas. São 3 linhas programáticas e 6 programas, , todos com ações em andamento. Considerando especialmente os programas focados no enfrentamento do déficit habitacional, atualmente as ações da Política Habitacional da Prefeitura abrangem quase 80 áreas, em ações que beneficiaram ou vão beneficiar mais de 30.000 famílias.</p>

					<p><a href="arquivos/PLHIS_Sao-Bernardo-do-Campo_2010_2025.pdf" target="_blank" title="Clique para fazer download"><img src="images/file_pdf.png"/> Saiba mais sobre o PLHIS</a></p>

					

					

					<h2>Linhas Programáticas de Intervenção</h2>

					<legend>Publicado: 25 de Junho de 2012</legend>

					<p>As linhas programáticas visam atender às diferentes necessidades habitacionais, mas também as necessidades institucionais para a implementação da política habitacional.</p>

					

					<ul class="lista-decorativa">

						<li><a href="javascript: void()" onclick="$('#div_lpa_01').slideToggle()">LPA1 - Integração Urbana de Assentamentos Precários e/ou Informais</a></li>

						<div id="div_lpa_01" class="toggleBox">

							<img src="images/lpa_01.jpg" class="align-left" />

							<p>Esta Linha Programática abrange programas que se destinam ao atendimento das necessidades existentes no universo dos assentamentos precários e irregulares, compreendendo: reparcelamento do solo (quando necessário), implantação de infra-estrutura completa, execução de obras de correção de risco, viabilização da regularização fundiária e promoção de melhorias habitacionais nas áreas.</p>

							<p style="clear: both; padding-top: 15px">Abrange os programas de:</p>

							<ul class="lista-comum">

								<li>PA 1.1 - Programa de Urbanização Integrada e Regularização de Assentamentos Precários e Irregulares</li>

								<li>PA 1.2 - Programa de Regularização Fundiária de Assentamentos Irregulares Consolidados</li>

								<li>PA 1.3 - Programa Municipal de Redução de Risco e Ações Emergenciais</li>

								<li>PA 1.4 - Programa de Fiscalização, Controle e Prevenção de Ocupações Irregulares e Adensamento de áreas ocupadas</li>

							</ul>

						</div>

						<li><a href="javascript: void()" onclick="$('#div_lpa_02').slideToggle()">LPA 2 – Produção da Habitação</a></li>

						<div id="div_lpa_02" class="toggleBox">

							<img src="images/lpa_02.jpg" class="align-left" />

							<p>Esta linha programática abrange o conjunto de ações que visam a produção de novas unidades habitacionais no município.</p>

							<p style="clear: both; padding-top: 15px">Abrange o programa de:</p>						

							<ul class="lista-comum">

								<li>PA 2.1 – Programa de Produção de Unidades Habitacionais</li>

							</ul>

						</div>

						<li><a href="javascript: void()" onclick="$('#div_lpa_03').slideToggle()">LPA 3 – Desenvolvimento Institucional</a></li>

						<div id="div_lpa_03" class="toggleBox">

							<img src="images/lpa_03.jpg" class="align-left" />

							<p>Esta linha programática abrange o conjunto de ações de gestão necessárias à implementação do Plano de Habitação de Interesse Social no município, consolidando ações de desenvolvimento institucional e normativo e arranjos de gestão e execução do Plano. As ações necessárias foram organizadas conforme a sua natureza em dois programas, a serem coordenados pela SEHAB, e um conjunto de ações a serem desenvolvidas em articulação institucional com os demais agentes, especialmente públicos, que atuam no setor habitacional. Os Programas que estruturam suas ações são: o Programa de Desenvolvimento Institucional da Habitação e o Programa de Gestão Participativa, e respectivos Subprogramas, apresentados na seqüência, e os dois blocos de ações de articulação institucional:</p>

							<ul class="lista-comum">

								<li>§  PA 3.1 Programa de Desenvolvimento Institucional da Habitação;</li>

								<li>§  PA 3.2 Programa de Gestão Participativa</li>

							</ul>

						</div>

					</ul>

					

					

					

					

					

					

						<h2>Empreendimentos do Programa de Produção Habitacional e Programa de Urbanização Integrada</h2>

					<legend>Publicado: 13 de Dezembro de 2012</legend>

					<p></p>

					<ul class="lista-decorativa">

						<li><a href="javascript: void()" onclick="$(&#39;#empe_2_1_01&#39;).slideToggle()">Conjunto Habitacional Três Marias</a></li>

						<div id="empe_2_1_01" class="toggleBox" style="display: none;">

							<img src="images/ch_tres_marias_01.jpg" class="align-left">

							<p><b>OBJETO:</b><br>

							• Implantação de Conjunto Habitacional em área vazia destinado ao reassentamento de famílias residentes em áreas de riscos e de proteção ambiental de quatro assentamentos precários da Região do Grande Alvarenga que estão em Área de Proteção aos Mananciais do Reservatório Billings. As unidades remanescentes são destinadas a famílias que antes residiam em alojamentos provisórios e precários ou que foram removidas de áreas de risco e atendidas provisoriamente pelo Programa Renda Abrigo.</p>

							<p><b>LOCALIZAÇÃO:</b><br>

								• Rua Céu Azul, s/n, Bairro Cooperativa.	• Região OP: K

							</p>

							<div style="clear: both"></div>

							<br>

							<p><b>AÇÕES:</b>

								<br>

								• Produção de 1.236 unidades habitacionais;<br>

								• Infraestrutura compreendendo: sistema viário completo, contenções, drenagem, paisagismo, sistema de abastecimento de água, iluminação e urbanismo;<br>

								• Execução de equipamentos públicos: Praça/Parque e Centro Comercial;<br>

								• Regularização Urbanística e Fundiária das unidades;<br>

								• Trabalho Social com a comunidade, iniciado com a discussão do projeto e segue por nove meses após a conclusão das obras;<br>

								• Destinação de áreas para implantação do Centro de Educação Unificada – CEU, com recursos da Secretaria de Educação e Centro de Reciclagem, sob responsabilidade da Secretaria de Serviços Urbanos.

							</p>

							<p>

								<b>FAMÍLIAS BENEFICIADAS:</b>

								<br>

								• 1.236 

							</p>

							<p>

								<b>ESTÁGIO ATUAL:</b>

								<br>

								• 1.188 unidades habitacionais entregues e 48 em construção.

							</p>

							<small>(Dados atualizados: maio/2013)</small>

						</div>

						

						<li><a href="javascript: void()" onclick="$(&#39;#empe_2_1_03&#39;).slideToggle()">Conjunto Habitacional Nova Silvina</a></li>

						<div id="empe_2_1_03" class="toggleBox" style="display: none;">

							<img src="images/ch_silvina_naval_01.jpg" class="align-left">

							<p><b>OBJETO:</b><br>

								• Implantação de Conjunto Habitacional destinado ao reassentamento de famílias oriundas dos assentamentos precários Naval, Colina e Pedreira, e famílias que residiam em alojamentos provisórios precários do município. 


							</p>

							

							<p><b>LOCALIZAÇÃO:</b><br>

								• Avenida Dr. José Fornari, 1.650, Bairro Ferrazópolis.	• Região OP: Q

							</p>

							

							<div style="clear: both"></div>

							<br>

							

							<p><b>AÇÕES:</b><br>

								• Produção de 540 unidades habitacionais;<br>

								• Execução de Centro Comercial: 14 unidades comerciais destinadas à reposição de unidades nas quais os moradores desenvolviam atividade econômica;<br>

								• Áreas de Lazer com playground e área de lazer de pequeno porte com salões condominiais para apoio às atividades sociais<br>

								• Regularização Urbanística e Fundiária das unidades;<br>

								• Trabalho Social com a comunidade, iniciado com a discussão do projeto e segue por nove meses após a conclusão das obras;<br>

								• Destinação de área para implantação do Centro de Educação Unificada – CEU, com recursos da Secretaria de Educação. Terá 1292 vagas para alunos de zero a 10 anos, com atividades que vão da creche ao Ensino Fundamental, Alfabetização e Educação de Jovens e Adultos. <br>
								
								• Destinação de área para as obras de canalização do Ribeirão dos Couros e construção da Via Marginal.<br>

							</p>

							<p><b>FAMÍLIAS BENEFICIADAS:</b><br>

								• 540

							</p>

							<p><b>ESTÁGIO ATUAL:</b><br>

								• 540 Unidades Habitacionais entregues. 

							</p>

							<small>(Dados atualizados: maio/2013)</small>

						</div>

						

						<li><a href="javascript: void()" onclick="$(&#39;#empe_1_1_01&#39;).slideToggle()">Conjunto Habitacional Jardim Esmeralda</a></li>

						<div id="empe_1_1_01" class="toggleBox" style="display: none;">

							<img src="images/ch_j_esmeralda_01.jpg" class="align-left">

							<p><b>OBJETO:</b><br>

								• Projeto de urbanização por substituição integral de moradias precárias com a implantação do Conjunto Habitacional Jardim Esmeralda, destinado às famílias residentes e cadastradas na própria área. </p>

							<p><b>LOCALIZAÇÃO:</b><br>

								• Rua Pedroso Horta, s/nº, Bairro Alves Dias.	• Região OP: K

							</p>

							<div style="clear: both"></div>

							<br>

							<p><b>AÇÕES:</b><br>
							
								<b>1ª fase de obras:</b><br>

								• Produção de 564 unidades habitacionais;<br>

								• Execução de obras de infraestrutura que beneficiam também as 332 unidades da 1ª Etapa no Conjunto Habitacional Jardim Esmeralda;<br>

								• Implantação de Praça / Parque;<br>
								
								<b>2ª fase de obras:</b><br>

								• Execução de reforma do campo de futebol Corintinhas e implantação de área de esportes e lazer;<br>

								• Construção de Centro Comercial – para repor unidades nas quais os moradores desenvolviam atividade econômica;<br>

								• Regularização Urbanística e Fundiária das unidades;<br>

								• Trabalho Social com a comunidade, iniciado com a discussão do projeto e segue por nove meses após a conclusão das obras.

							</p>

							<p><b>FAMÍLIAS BENEFICIADAS:</b><br>

								• 896 

							</p>

							<p><b>ESTÁGIO ATUAL:</b><br>

								• 1ª fase: 564 unidades habitacionais entregues;<br>
								• 2ª fase: obras em andamento.

							</p>

							<small>(Dados atualizados: maio/2013)</small>

						</div>

						

						<li><a href="javascript: void()" onclick="$(&#39;#empe_2_1_02&#39;).slideToggle()">Conjunto Habitacional Vila Esperança</a></li>

						<div id="empe_2_1_02" class="toggleBox">

							<img src="images/ch_vila_esperanca_01.jpg" class="align-left">

							<p><b>OBJETO:</b><br>

								• Conjunto Habitacional destinado ao reassentamento de famílias que residiam em alojamentos provisórios precários do município, dois dos quais construídos na própria área e de famílias residentes em situação de risco de deslizamento da Vila Esperança. 

							</p>

							

							<p><b>LOCALIZAÇÃO:</b><br>

								• Avenida Tiradentes, nº 2951, Bairro Montanhão.	• Região OP: R

							</p>

							

							<div style="clear: both"></div>

							<br>

							

							<p><b>AÇÕES:</b><br>

								• Produção de 446 unidades habitacionais, sendo 162 unidades habitacionais tipo casas sobrepostas e 284 unidades habitacionais verticalizadas;<br>

								• Implantação de infraestrutura compreendendo: redes de água, esgoto, energia elétrica, drenagem e pavimentação, implantação de parque e paisagismo;<br>

								• Execução de Centro Comercial e Área de Lazer.<br>

								• Ações necessárias à regularização urbanística e fundiária das unidades;<br>

								• Trabalho Social com a comunidade, iniciado com a discussão do projeto e segue por nove meses após a conclusão das obras.

							</p>

							<p><b>FAMÍLIAS BENEFICIADAS:</b><br>	

								• 1ª etapa: 80<br>
                                • 2ª etapa - fase 1: 68<br>
								• 2ª etapa - fase 2: 298<br>



							</p>

							<p><b>ESTÁGIO ATUAL:</b><br>

								• 148 Unidades Habitacionais entregues (80 na 1ª etapa e 68 na 2ª etapa)

							</p>

							<small>(Dados atualizados: maio/2013)</small>

						</div>

						

						<li><a href="javascript: void()" onclick="$(&#39;#empe_2_1_06&#39;).slideToggle()">Residencial Nova Baeta/Projeto Pai Herói</a></li>

						<div id="empe_2_1_06" class="toggleBox">

							<img src="images/Residencial_Nova_Baeta.jpg" class="align-left">

							<p><b>OBJETO:</b><br>

								• Produção Habitacional destinada ao reassentamento de famílias removidas do assentamento precário Pai Herói, em condições de risco de vida, inclusive em função do deslizamento ocorrido em 2005, período de emenda parlamentar.

							</p>

							

							<p><b>LOCALIZAÇÃO:</b><br>

								• Rua Giacinto Tognato, Bairro Baeta Neves.	• Região OP: F

							</p>

							

							<div style="clear: both"></div>

							<br>

							

							<p><b>AÇÕES:</b><br>

								• Produção de 22 unidades habitacionais, sendo um bloco com 20 unidades habitacionais e um bloco de casas sobrepostas (duas unidades);<br>
								• Infraestrutura compreendendo redes de água, esgoto, energia elétrica, drenagem, pavimentação e paisagismo;<br>
								• Regularização urbanística e fundiária das unidades;<br>
								• Trabalho social com a comunidade, iniciado com a discussão do projeto; segue por nove meses após a conclusão das obras.


								
							</p>

							

							<p><b>FAMÍLIAS BENEFICIADAS:</b><br>

								• 22

							</p>

							

							<p><b>ESTÁGIO ATUAL:</b><br>

								• 22 unidades habitacionais entregues.

							</p>

							<small>(Dados atualizados: maio/2013)</small>

						</div>

						

						<li><a href="javascript: void()" onclick="$(&#39;#empe_1_1_11&#39;).slideToggle()">Conjunto Habitacional Jardim Lavínia</a></li>

						<div id="empe_1_1_11" class="toggleBox">

							<img src="images/ch_jardim_lavinia_01.jpg" class="align-left">

							<p><b>OBJETO:</b><br>

								• Urbanização por substituição integral de moradias precárias, por meio da construção de conjunto habitacional com 184 unidades para atender em sua totalidade a famílias residentes no assentamento Lavínia.

							</p>

							

							<p><b>LOCALIZAÇÃO:</b><br>

								• Avenida Pres. João Café Filho, s/nº, Bairro Assunção	• Região OP: J

							</p>

							

							<div style="clear: both"></div>

							<br>

							

							<p><b>AÇÕES:</b><br>

								• Produção de 184 unidades habitacionais;<br>

								• Infraestrutura compreendendo: terraplenagem/contenção, sistema viário, drenagem e pavimentação, rede de água, rede de esgotamento sanitário; rede de energia elétrica e iluminação pública;<br>

								• Implantação de paisagismo, áreas verdes e de lazer.<br>

								• Regularização fundiária das unidades;<br>

								• Trabalho social com a comunidade.

							</p>

							

							<p><b>FAMÍLIAS BENEFICIADAS:</b><br>

								• 184

							</p>

							<p><b>ESTÁGIO ATUAL:</b><br>

								• Obras em andamento.

							</p>

							<small>(Dados atualizados: maio/2013)</small>

						</div>		

						

						<li><a href="javascript: void()" onclick="$(&#39;#empe_2_1_04&#39;).slideToggle()">Projeto de Urbanização Integrada do Assentamento Silvina Oleoduto</a></li>

						<div id="empe_2_1_04" class="toggleBox">

							<img src="images/ch_silvina_oleoduto_01.jpg" class="align-left">

							<p><b>OBJETO:</b><br>

								• Projeto de urbanização por substituição integral de moradias precárias com a produção do Conjunto Habitacional Jardim Silvina, destinadas às famílias residentes e cadastradas no próprio Assentamento Precário Silvina Oleoduto. A 1ª Etapa do Conjunto Habitacional Jardim Silvina foi entregue anteriormente a 2009.<br>

							</p>

							<p><b>LOCALIZAÇÃO:</b><br>

								• Rua Padre Léo Commissari, s/nº, Bairro Montanhão / Ferrazópolis.	• Região OP: Q

							</p>

							<div style="clear: both"></div>

							<br>

							<p><b>AÇÕES:</b><br>

								<b>1ª fase de obras:</b><br>
								• Produção de 532 unidades habitacionais;<br>
								• Execução de obras de infraestrutura que beneficiam também as 240 unidades da 1ª Etapa no Conjunto Habitacional Jardim Silvina;<br>
								<b>2ª fase de obras:</b><br>
								• Construção de Centro Comercial;<br>
								• Recuperação ambiental da faixa do Oleoduto;<br>
								• Regularização Urbanística e Fundiária das unidades;<br>
								• Trabalho Social com a comunidade, iniciado com a discussão do projeto e segue por nove meses após a conclusão das obras;<br>
								• Destinação da área para construção de Creche e EMEI pela Secretaria de Educação.


							</p>


							<p><b>FAMÍLIAS BENEFICIADAS:</b><br>

								• 772

							</p>

							<p><b>ESTÁGIO ATUAL:</b><br>

								• 1ª fase: 532 unidades habitacionais entregues<br>
								• 2ª fase: obras em licitação.


							</p>

							<small>(Dados atualizados: maio/2013)</small>

						</div>
						

						

						<li><a href="javascript: void()" onclick="$(&#39;#empe_1_1_02&#39;).slideToggle()">Projeto de Urbanização Integrada PAC Alvarenga</a></li>

						<div id="empe_1_1_02" class="toggleBox">

							<img src="images/urb_integrada_alvarenga_02.jpg" class="align-left">

							<p><b>OBJETO:</b><br>

								• Urbanização de quatro núcleos do Bairro Alvarenga inseridos na Área de Proteção e Recuperação dos Mananciais do Reservatório Billings - APRM-B: Sítio Bom Jesus, Divineia/Pantanal, Ipê e Alvarenga Peixoto. O Projeto tem como área de reassentamento o Conjunto Habitacional Três Marias que atende às famílias cujas moradias não poderão ser mantidas nesses núcleos.


							</p>

							

							<p><b>LOCALIZAÇÃO:</b><br>

								• Bairro Alvarenga	• Região OP: L

							</p>

							

							<div style="clear: both"></div>

							<br>

							<p><b>AÇÕES:</b><br>

								• Produção de 878 unidades habitacionais;<br>

								• Consolidação e regularização de 610 unidades habitacionais;<br>

								• Infraestrutura compreendendo: sistema viário completo, contenções, drenagem, paisagismo, sistema de abastecimento de água, iluminação e urbanismo;<br>

								• Construção de equipamentos compreendendo centros comerciais, CRAS – Centro de Referência da Assistência Social, Centro de Educação Ambiental e Cultura, Parque do Ipê - e reforma de um campo de futebol;<br>
								
								• Construção de Parques Lineares resultantes da recuperação ambiental das faixas de APP dos córregos;<br>

								• Regularização urbanística e fundiária das unidades;<br>

								• Trabalho social com a comunidade foi iniciado com a discussão do projeto e segue por nove meses após a conclusão das obras.

							</p>

							<p><b>FAMÍLIAS BENEFICIADAS:</b><br>

								• 1.488 com solução habitacional e mais 648 beneficiadas com ampliação de infraestrutura.  

							</p>

							<p><b>ESTÁGIO ATUAL:</b><br>

								• Obras em andamento. 212 Unidades Habitacionais entregues no Sítio Bom Jesus.

							</p>

							<small>(Dados atualizados: maio/2013)</small>

						</div>

						

						<li><a href="javascript: void()" onclick="$(&#39;#empe_1_1_03&#39;).slideToggle()">Projeto de Urbanização Integrada PAC Alvarenga – Área Sítio Bom Jesus</a></li>

						<div id="empe_1_1_03" class="toggleBox">

							<img src="images/urb_integrada_alvarenga_01.jpg" class="align-left">

							

							<p><b>LOCALIZAÇÃO:</b><br>

								• Rua Ieda Luiza de Souza, s/n, Bairro Alvarenga.	• Região OP: L

							</p>

							

							<p><b>AÇÕES:</b><br>

								• Produção de 344 unidades habitacionais;<br>

								• Consolidação e regularização de 226 unidades habitacionais;<br>

								• Reassentamento de 179 famílias no Conjunto Habitacional Três Marias;<br>

								• Equipamentos: centro comercial, CRAS, parque linear e áreas de lazer.

							</p>

							<p><b>FAMÍLIAS BENEFICIADAS:</b><br>

								• 749<br>

							</p>

							<p><b>ESTÁGIO ATUAL:</b><br>

								• 212 unidades habitacionais, Centro Comercial, CRAS e 1º trecho do Parque Linear entregues. Obras em andamento.<br>
<div style="clear: both"></div>
<img class="align-left" src="images/Sitio_Bom Jesus_obras.jpg"></img>
<div style="clear: both"></div>

							</p>

							<small>(Dados atualizados: maio/2013)</small>



							<div style="clear: both"></div>

							<br>

							<img src="images/urb_integrada_alvarenga_03.jpg" class="align-left" style="border: solid 1px #CCC">

							<div style="clear: both"></div>

						</div>

						

						<li><a href="javascript: void()" onclick="$(&#39;#empe_1_1_04&#39;).slideToggle()">Projeto de Urbanização Integrada PAC Alvarenga – Área  Divinéia / Pantanal</a></li>

						<div id="empe_1_1_04" class="toggleBox">

							<img src="images/urb_integrada_alvarenga_04.jpg" class="align-left">
							
							

							<p><b>LOCALIZAÇÃO:</b><br>

								• Rua dos Feltrins, s/n, Bairro Alvarenga.	• Região OP: L

							</p>

							

							<p><b>AÇÕES:</b><br>
							
								• Produção de 404 unidades habitacionais;<br>

								• Consolidação por urbanização e regularização de 214 unidades habitacionais;<br>

								• Reassentamento de 139 famílias no Conjunto Habitacional Três Marias;<br>

								• Equipamentos: centro comercial e parque linear.
						

							</p><br>

							

							<p><b>FAMÍLIAS BENEFICIADAS:</b><br>

								• 757

							</p>

							<br>

							<div style="clear: both"></div>

							<p><b>ESTÁGIO ATUAL:</b><br>

								• Obras em andamento.

							</p>
                            <div style="clear: both"></div>
							<img class="align-left" src="images/Divineia_obras.jpg"></img>
							<div style="clear: both"></div>

							<small>(Dados atualizados: maio/2013)</small>
                            

						</div>

						

						<li><a href="javascript: void()" onclick="$(&#39;#empe_1_1_05&#39;).slideToggle()">Projeto de Urbanização Integrada PAC Alvarenga - Área Jardim Ipê</a></li>

						<div id="empe_1_1_05" class="toggleBox">

							<img src="images/urb_integrada_alvarenga_05.jpg" class="align-left">


							<p><b>LOCALIZAÇÃO:</b><br>

								• Rua dos Sobreiros, s/n, Bairro Alvarenga.	• Região OP: L

							</p>

							

							<p><b>AÇÕES:</b><br>

								• Consolidação de 70 unidades habitacionais;<br>

								• Reassentamento de 679 famílias no Conjunto Habitacional Três Marias;<br>

								• Equipamentos: parque e Centro de Cultura e Educação Ambiental.

							</p>

							<p><b>FAMÍLIAS BENEFICIADAS:</b><br>

								• 749

							</p>

							<p><b>ESTÁGIO ATUAL:</b><br>

								• Obras em andamento.

							</p>

							<small>(Dados atualizados: maio/2013)</small>

							<div style="clear: both"></div>

							<img src="images/ch_jardim_ipe_02.jpg" class="align-left">

							<div style="clear: both"></div>

						</div>

						

						<li><a href="javascript: void()" onclick="$(&#39;#empe_1_1_06&#39;).slideToggle()">Projeto de Urbanização Integrada Alvarenga - Área Alvarenga Peixoto</a></li>

						<div id="empe_1_1_06" class="toggleBox">

							<img src="images/urb_integrada_alvarenga_06.jpg" class="align-left">

							

							<p><b>LOCALIZAÇÃO:</b><br>

								• Rua Alvarenga Peixoto, s/n, Bairro Alvarenga.	• Região OP: L

							</p>

							

							<p><b>AÇÕES:</b><br>

								• Produção de 130 unidades habitacionais;<br>

								• Consolidação por urbanização e regularização de 100 unidades habitacionais;<br>

								• Reassentamento de 29 famílias no Conjunto Habitacional Três Marias;<br>

								• Equipamentos: áreas verdes e melhoria no campo existente.<br>


							</p>

							<p><b>FAMÍLIAS BENEFICIADAS:</b><br>

								• 259

							</p>

							<p><b>ESTÁGIO ATUAL:</b><br>

								• Remoções em andamento. Aguarda Licenciamento Ambiental pela SMA – Secretaria Estadual de Meio Ambiente.

							</p>

							<small>(Dados atualizados: maio/2013)</small>

							<div style="clear: both"></div>

							<img src="images/urb_integrada_alvarenga_07.jpg" class="align-left">

							<div style="clear: both"></div>

						</div>

										

						<li><a href="javascript: void()" onclick="$(&#39;#empe_1_1_07&#39;).slideToggle()">Projeto de Urbanização Integrada do Parque São Bernardo, Alto da Bela Vista e Novo Parque</a></li>

						<div id="empe_1_1_07" class="toggleBox">

							<img src="images/ch_parque_sao_bernardo_01.jpg" class="align-left">

							<p><b>OBJETO:</b><br>

								• Projeto de Urbanização Integrada que atende as famílias residentes nos assentamentos precários Parque São Bernardo, Alto da Bela Vista e Novo Parque.

							</p>

							

							<p><b>LOCALIZAÇÃO:</b><br>

								• Avenida Luis Pequini, s/nº, Bairro Montanhão	• Região OP: F

							</p>

							

							<div style="clear: both"></div>

							<br>

							

							<p><b>AÇÕES:</b><br>

								• Produção de 778 unidades habitacionais;<br>

								• Consolidação por urbanização e regularização de 1.763 moradias por meio de infraestrutura compreendendo sistema viário completo, contenções, drenagem, paisagismo, sistema de abastecimento de água, iluminação e urbanismo; <br>

								• Execução de equipamentos públicos: centro comercial, creche, centro de educação e práticas esportivas, pista de skate, praças e áreas de convivência;<br>

								• Regularização urbanística e fundiária de todas as unidades, incluindo 582 unidades habitacionais que demandam apenas regularização fundiária;<br>

								• Trabalho Social com a comunidade, iniciado com a discussão do projeto e seguirá por nove meses após a conclusão das obras.<br>

							</p>

							

							<p><b>FAMÍLIAS BENEFICIADAS:</b><br>

								• 3.123

							</p>

							<p><b>ESTÁGIO ATUAL:</b><br>

								• Obras em andamento. 196 unidades habitacionais entregues.

							</p>

							<small>(Dados atualizados: maio/2013)</small>

						</div>

						

						<li><a href="javascript: void()" onclick="$(&#39;#empe_1_1_08&#39;).slideToggle()">Projeto de Urbanização Integrada Jardim Colina</a></li>

						<div id="empe_1_1_08" class="toggleBox">

							<img src="images/ch_colina_01.jpg" class="align-left">

							<p><b>OBJETO:</b><br>

								• Urbanização integrada do assentamento precário Jardim Colina, por meio da consolidação de unidades de bom padrão, e produção de novas unidades na própria área para o remanejamento de famílias ocupantes de habitações precárias e em área de risco. Ação combinada com o reassentamento externo de famílias residentes em moradias não consolidáveis já atendidas no Conjunto Habitacional Nova Silvina.
								O projeto de urbanização é a 2ª etapa de um contrato maior que tem como objetivo a execução do Projeto de Drenagem dos Córregos Mininha e Colina.



							</p>

							

							<p><b>LOCALIZAÇÃO:</b><br>

								• Rua dos Vianas, s/nº, Bairro Baeta Neves	• Região OP: F

							</p>

							

							<div style="clear: both"></div>

							<br>

							<p><b>AÇÕES:</b><br>

								• Produção de 100 unidades habitacionais, sendo 80 unidades habitacionais verticalizadas e 20 unidades sobrepostas;<br>

								• Consolidação por urbanização e regularização de 46 moradias;<br>

								• Infraestrutura compreendendo terraplenagem/contenção, sistema viário, drenagem e pavimentação, rede de água, rede de esgotamento sanitário, rede de energia elétrica e iluminação pública;<br>

								• Construção de centro condominial;<br>

								• Paisagismo, áreas verdes e de lazer;<br>

								• Regularização urbanística e fundiária das unidades;<br>

								• Trabalho social com a comunidade.

								
							</p>

							

							<div style="clear: both"></div>

							<img src="images/ch_colina_02.jpg" class="align-left">

							

							<p><b>FAMÍLIAS BENEFICIADAS:</b><br>

								• 146

							</p>

							<p><b>ESTÁGIO ATUAL:</b><br>

								• Obras em andamento.

							</p>

							<small>(Dados atualizados: maio/2013)</small>

							<div style="clear: both"></div>

						</div>

						

						<li><a href="javascript: void()" onclick="$(&#39;#empe_2_1_05&#39;).slideToggle()">Projeto de Urbanização Integrada Silvina Audi</a></li>

						<div id="empe_2_1_05" class="toggleBox">

							<img src="images/ch_silvina_audi_01.jpg" class="align-left">

							<p><b>OBJETO:</b><br>

								• Urbanização Integrada dos assentamentos precários e/ou irregulares Jardim Silvina, Silvina Audi, Rua Washington Luís, Gaspar de Souza e Bananal 3. Conta com o Conjunto Habitacional de Reassentamento Externo a ser construído no âmbito do PMCMV em terreno desapropriado pela Prefeitura.

							</p>

							

							<p><b>LOCALIZAÇÃO:</b><br>

								• Rua Padre Léo Comissari, s/nº, Bairro Ferrazopólis / Montanhão	• Região OP: Q

							</p>

							

							<div style="clear: both"></div>

							<br>

							

							<p><b>AÇÕES:</b><br>

								• Produção de 437 unidades habitacionais; <br>

								• Consolidação por urbanização e regularização de 2.344 moradias;<br>
								
								• Conta com o apoio de 552 UHs de Conjunto Habitacional de Reassentamento Externo a ser construído no âmbito do PMCMV;<br>

								• Infraestrutura compreendendo: terraplenagem, execução de muros de arrimo e obras de consolidação geotécnica para estabilização de áreas de risco, sistema viário, drenagem e pavimentação; rede de água; rede de esgotamento sanitário; rede de energia elétrica e iluminação pública;<br>

								• Ações de recuperação ambiental e implantação de Parque na área remanescente de remoções de unidades que se encontravam em situação de risco geotécnico para proteção ao meio ambiente, com equipamento de lazer para recreação;<br>

								• Regularização Urbanística e Fundiária das unidades;<br>

								• Trabalho Social com a comunidade, iniciado com a discussão do projeto e seguirá por nove meses após a conclusão das obras.

								

							</p>

							

							<p><b>FAMÍLIAS BENEFICIADAS:</b><br>

								• 3.333

							</p>

							<p><b>ESTÁGIO ATUAL:</b><br>

								• Obras e ações contratadas em licitação<br>


							</p>

							<small>(Dados atualizados: maio/2013)</small>

						</div>

						

						<li><a href="javascript: void()" onclick="$(&#39;#empe_1_1_09&#39;).slideToggle()">Projeto de Urbanização Integrada Saracatan / Colina</a></li>

						<div id="empe_1_1_09" class="toggleBox">

							<img src="images/ch_saracatan_colina_01.jpg" class="align-left">

							<p><b>OBJETO:</b><br>

								• Projeto que beneficia com solução habitacional de urbanização e/ou novas moradias as famílias residentes e cadastradas de sete assentamentos precários e/ou irregulares que são: Novo Parque; Vila Feliz; Rua dos Vianas; Vanguarda; Ilha Luis Pequini; Rua Amazonas e Vila Canarinho. Tem o apoio do Projeto Residencial Independência – MCMV, que responde pelas obras de produção habitacional para reassentamento de famílias cujas moradias não podem ser consolidadas.

							</p>

							

							<p><b>LOCALIZAÇÃO:</b><br>

								• Rua Amazonas / Avenida Lus Pequini, s/nº, Bairro Montanhão / Baeta Neves / Nova Petrópolis	• Região OP: F 



							</p>

							

							<div style="clear: both"></div>

							<br>

							

							<p><b>AÇÕES</b><br>

								• Produção de 40 unidades habitacionais na área de intervenção;<br>
								
								• Consolidação por urbanização e regularização de 2513 moradias;<br>
								
								• Conta com o apoio de 420 UHs de Conjunto Habitacional de Reassentamento Externo em construção no âmbito do PMCMV;<br>
								
								• Execução de obras de drenagem e sistema viário, recuperação ambiental, construção de equipamentos públicos;<br>
								
								• Construção de centros comerciais;<br>
								
								• Canalização dos Córregos Colina – 2º trecho - e Saracantan – 2º trecho;<br>
								
								• Regularização urbanística e fundiária das unidades;<br>
								
								• Trabalho social com a comunidade, iniciado com a discussão do projeto; seguirá por nove meses após a conclusão das obras.


								
							</p>

							

							<p><b>FAMÍLIAS BENEFICIADAS:</b><br>

								• 2.973

							</p>

							<p><b>ESTÁGIO ATUAL:</b><br>

								• Obras e ações contratadas em licitação.<br>

							</p>

							<small>(Dados atualizados: maio/2013)</small>

						</div>

						

						<li><a href="javascript: void()" onclick="$(&#39;#empe_1_1_10&#39;).slideToggle()">Projeto de Urbanização Integrada Capelinha / Cocaia</a></li>

						<div id="empe_1_1_10" class="toggleBox">

							<img src="images/ch_capelinha_cocaia_01.jpg" class="align-left">

							<p><b>OBJETO:</b><br>

								• Projeto de urbanização, produção habitacional, regularização fundiária e recuperação ambiental dos assentamentos precários Capelinha e Cocaia, implantados em área de proteção aos mananciais.

							</p>

							

							<p><b>LOCALIZAÇÃO:</b><br>

								• Estrada Caminho do Mar (Capelinha), Estrada da Cocaia (Cocaia), s/nº, Bairro Varginha	• Região OP: S

							</p>



							

							<div style="clear: both"></div>

							<br>

							

							<p><b>AÇÕES</b><br>

								• Produção de 298 unidades habitacionais, sendo 246 no Assentamento Capelinha e 52 no Assentamento Cocaia;<br>
								
								• Produção de 17 unidades comerciais no Assentamento Capelinha;<br>

								• Consolidação por urbanização e regularização de 620 moradias, sendo 552 no Assentamento Capelinha e 68 no Assentamento Cocaia; <br>

								• Infraestrutura compreendendo fornecimento de água, coleta de esgoto, sob responsabilidade da Sabesp, drenagem de águas pluviais, pavimentação e obras de estabilização de encostas;<br>

								• Parque linear com espaços de lazer para a população local e pequenos jardins espalhados pelo núcleo. No parque linear estão previstos campo de futebol, pista de caminhada e áreas de playground e ginástica;<br>
								 
								• Recuperação ambiental de áreas de preservação permanente;<br>

								• Regularização urbanística e fundiária das unidades;<br>

								• Trabalho social com a comunidade, iniciado com a discussão do projeto; seguirá por nove meses após a conclusão das obras;<br>

								• O projeto conta com parceria da SABESP na implantação das redes de água e esgoto, inclusive tratamento.


							</p>

							

							<p><b>FAMÍLIAS BENEFICIADAS:</b><br>

								• 935

							</p>

							<p><b>ESTÁGIO ATUAL:</b><br>

								• Obras e ações contratadas em licitação<br>


							</p>

							<small>(Dados atualizados: maio/2013)</small>

						</div>

					</ul>


				</div>
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

	<input type="hidden" id="grupo" value="<%=usuario.getGrupo() %>"/>
	<input type="hidden" id="modulo1" value="<%=usuario.getModulo1()%>"/>
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
		var modulo1 = $("#modulo1").val();
					
			
			$(modulo1).show();
		
		

	</script>
	


</body>



</html>