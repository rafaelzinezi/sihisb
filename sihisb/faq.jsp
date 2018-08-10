<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>

<head>

<title>Prefeitura de São Bernardo do Campo - SIHISB</title>

<META HTTP-EQUIV="CACHE-CONTROL" CONTENT="NO-CACHE">

<META HTTP-EQUIV="PRAGMA" CONTENT="NO-CACHE">

<meta http-equiv="content-type" content="text/html; charset=utf-8" />

<meta name="description" content="SIHISB - Planejamento e monitoramento da PolÍtica Habitacional no municÍpio" />

<meta name="keywords" content="SEHAB SIHISP MAPA HABITAÇÃO MONITORAMENTO MAPEAMENTO" />

<link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />

<link rel="stylesheet" href="css/style.css" type="text/css"	media="screen" />

<link rel="stylesheet" href="css/box.css" type="text/css"	media="screen" />

<script type="text/javascript" src="js/jquery.min.js"></script>

<script type="text/javascript" src="js/sliding.form.js"></script>

<script type="text/javascript" src="js/global.js"></script>

<script type="text/javascript" src="js/box.js"></script>
<script>
function retirarAcento(objResp) {  
var varString = new String(objResp.value);  
var stringAcentos = new String('àâêôûãõáéíóúçüÀÂÊÔÛÃÕÁÉÍÓÚÇÜ');  
var stringSemAcento = new String('aaeouaoaeioucuAAEOUAOAEIOUCU');  
  
var i = new Number();  
var j = new Number();  
var cString = new String();  
var varRes = '';  
  
for (i = 0; i < varString.length; i++) {  
cString = varString.substring(i, i + 1);  
for (j = 0; j < stringAcentos.length; j++) {  
if (stringAcentos.substring(j, j + 1) == cString){  
cString = stringSemAcento.substring(j, j + 1);  
}  
}  
varRes += cString;  
}  
objResp.value = varRes;  
}  
</script>  

</head>



<body>

	<a name="topo"></a>

	<div id="header"></div>

	<div id="top-site">

		<div id="logo"></div>

		<div id="logo_sihisb"></div>



		<div id="menu">

			<ul id="lista-menu">

				<li><a href="index.html">HOME</a></li>

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

				<li>

					<a href="faq.jsp">DÚVIDAS FREQUENTES</a>

				</li>

				<li class="dropMenuDown"><a href="#"><img src="images/intranet.png" class="align-left"/></a>
					<ul class="homeLogin">
						<li>
							<div>
							<form method="post" action="validaLogin.do">
								<label>Matricula:</label>
								<input type="text" class="cxInput" name="nome"/>
								
								<label>Senha:</label>
								<input type="password" class="cxInput" name="senha"/>
								<br/><br/>
								<input type="submit" value="ACESSAR"  class="btOk"/>
								<a href="recuperarSenha.jsp" class="linkComun">Esqueceu a senha?</a>
							</form>
							</div>
						</li>
					</ul>
				</li>
				

			</ul>
		</div>

		<div style="clear: both;"></div>

	</div>

	

	<div id="content">

		<h1>SIHISB - SÃO BERNARDO DO CAMPO</h1>

		<div id="wrapper">

			<legend class="legenda">Dúvidas Frequentes - FAQ</legend>

			<%if(request.getAttribute("msg") != null){%>
						<div id="secess">
						<%=request.getAttribute("msg") %>
						</div>
						<%}%>

			<div id="sitio" style="clear:both; padding-top:0">

				<div id="steps">

					<form id="formContato" name="formContato" action="formularioFaq" method="post">

						<fieldset class="step">

							<div >

								<a href="javascript: void()" class="linkComun" onclick="$('#formulario_contato').slideToggle()"><img src="images/mail.png" class="align-left"/>CASO PREFIRA ENTRE EM CONTATO ATRAVÉS DO NOSSO FORMULÁRIO</a>

							</div>

							

							<div id="formulario_contato" style="clear: both; display: none">

								<p class="width100">

									<label for="nome" >Nome</label> 

									<input type="text" id="nome" name="nome"  />

								</p>

					

								<p class="width100">

									<label for="email" >E-mail</label> 

									<input type="text" id="email" name="email"  />

								</p>

								

								<p class="width100">

									<label for="telefone" >Telefone:</label> 

									<input type="text" id="telefone" name="telefone" />

								</p>

								

								<p class="width100">

									<label for="assunto" >Assunto</label> 

									<input type="text" id="assunto" name="assunto" onChange="javascript:retirarAcento(this);" />

								</p>

								


								<p class="width100">

									<label for="mensagem" >Mensagem</label> 

									<textarea id="mensagem" name="mensagem" onChange="javascript:retirarAcento(this);" ></textarea>

								</p>

								<button id="registerButton" type="submit" style="margin: 0 0 20px 20px" onclick="return verificaAssent()">Enviar</button>

							</div>

							

						</fieldset>

					</form>

				</div>

				<h3>Dúvidas</h3>

				<ul class="lista-comum">

					<li><a href="#peg1">Quando abro o mapa aparece um quadro branco com os dizeres "Dados do Mapa", o que fazer?</a></li>

					<li><a href="#peg2">Digito o nome do meu assentamento e nenhum resultado aparece.</a></li>

					<li><a href="#peg3">Digito o nome do meu assentamento com a acentuação correta e ainda assim nenhum resultado aparece.</a></li>

					<li><a href="#peg4">As cores do mapa estão se sobrepondo e não consigo identificar pela cor se é uma favela ou um loteamento irregular.</a></li>

					<li><a href="#peg5">Faço a busca por região do Orçamento Participativo e não aparece nada no mapa.</a></li>

				</ul>

				

				

				<br/><hr/><br/><br/>

				

				

				<h3>Respostas</h3>

				<ul class="lista-faqR">

					<li>

						<a name="peg1"></a>

						<p>

							<b>Quando abro o mapa aparece um quadro branco com os dizeres "Dados do Mapa", o que fazer?</b>

							<br/>

							<img src="images/dados_mapa_google.jpg"/>

							<br/>

							Verifique se o acesso estão sendo feito pelo Internet Explorer. O site do SIHISB é mais bem visualizado através dos navegadores Google Chrome ou Mozilla Firefox.

						</p>

						<span><a href="#topo" title="Voltar ao topo" class="linkComun">Voltar ao topo</a></span>

					</li>

					<li>

						<a name="peg2"></a>

						<p>

							<b>Digito o nome do meu assentamento e nenhum resultado aparece.</b>

							<br/>

							Verificar se o nome do seu assentamento possui acentuação gráfica e recomece a busca.

							<br/>

							Exemplo: Ipê, Divinéia, São Pedro, Pai Herói. 

						</p>

						<span><a href="#topo" title="Voltar ao topo" class="linkComun">Voltar ao topo</a></span>

					</li>

					<li>

						<a name="peg3"></a>

						<p>

							<b>Digito o nome do meu assentamento com a acentuação correta e ainda assim nenhum resultado aparece.</b>

							Verificar na pesquisa se a escolha do 'Filtro' foi feita conforme a intenção da  busca.

							<br/>

							Exemplo: assentamento, região do Orçamento Participativo, logradouro ou bairro. 

						</p>

						<span><a href="#topo" title="Voltar ao topo" class="linkComun">Voltar ao topo</a></span>

					</li>

					<li>

						<a name="peg4"></a>

						<p>

							<b>As cores do mapa estão se sobrepondo e não consigo identificar pela cor se é uma favela ou um loteamento irregular.</b>

							<br/>

							Verificar na lateral esquerda da tela se existe mais de um quadradinho (layer) selecionado.

							<br/>

							Exemplo:  tipo  de  assentamento,  tipologia,  gravame  judicial. A visualização dessas opções é melhor quando selecionadas uma de cada vez para não gerar a sobreposição de cores.

						</p>

						<span><a href="#topo" title="Voltar ao topo" class="linkComun">Voltar ao topo</a></span>

					</li>

					

					<li>

						<a name="peg5"></a>

						<p>

							<b>Faço a busca por região do Orçamento Participativo e não aparece nada no mapa.</b>

							<br/>

							Verificar na lateral esquerda da tela se o quadradinho (layer) de 'Regiões  OP' estão selecionado. Quando ele estiver selecionado aparecerá na tela o contorno da região do Orçamento Participativo que foi pesquisada.

							<br/>

							Se você selecionar também o quadradinho (layer) do 'Tipo de assentamento' será possível visualizar quais assentamentos precários e/ou irregulares estão localizados na região do OP que foi pesquisada.

						</p>
						<li>
						<a name="peg6"></a>
						<p>
							<b>Ainda tenho dúvidas. O que devo fazer?</b>
							<br/>
							Caso ainda tenha dúvidas, entre em contato através do email <a href="mailto:suportesihisb@saobernardo.sp.gov.br" title="suportesihisb@saobernardo.sp.gov.br">suportesihisb@saobernardo.sp.gov.br</a>.
						</p>
						<span><a href="#topo" title="Voltar ao topo" class="linkComun">Voltar ao topo</a></span>
			

					</li>					

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



</body>

<script type="text/javascript">

$(document).ready(function() {      

	if(navigator.appName.indexOf('Internet Explorer')>0){

		alert('AVISO:\nEsse site é melhor visualizado em Google Chrome ou Mozilla Firefox.');

	}

});

</script>

</html>