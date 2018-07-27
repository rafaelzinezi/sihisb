<?xml version='1.0' encoding='UTF-8' ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:h="http://java.sun.com/jsf/html">
    <h:head>
        <title>SIHISB - SEHAB - SBC</title>
    </h:head>
    <body>
		<a name="topo"></a>
		<div id="header"></div>
		<div id="top-site">
			<div id="logo"></div>
			<div id="logo_sihisb"></div>
    
    
			<form method="post" action="validaLogin.do">
				<h1>SIHISB</h1>
				<h:panelGrid id="gridLoginSenha" columns="2">
			        <outputText id="loginLabel" value="Matricula:"/>
			        <inputText id="login" value="" type="text" class="cxInput" name="nome"/>
			
			        <outputText id="senhaLabel" value="Senha:"/>
			        <inputSecret id="senha" value="" type="password" class="cxInput" name="senha"/>
				</h:panelGrid>
				<commandButton id="botao" value="Entrar" type="submit" value="ACESSAR"  class="btOk"/>
			</form>
		</div>
    </body>
</html>