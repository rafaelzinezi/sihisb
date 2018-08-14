<%@ page language="java" contentType="text/html"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="br.gov.sp.saobernardo.sehab.bean.CaracterizacaoBean" %>
<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <title>Upload</title>
	<meta name="description" content="SIHISB - Planejamento e monitoramento da Política Habitacional no município" />
	<meta name="keywords" content="SEHAB SIHISP MAPA HABITAÇÃO MONITORAMENTO MAPEAMENTO" />
	<link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />
	<link rel="stylesheet" href="css/style.css" type="text/css"	media="screen" />
    <script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript">
		function enviaImagem()
		{
			
			//var url = window.location.search.substring(1).split("=");
			var pai = window.parent.document;
	
			//var alvo = url[1];
			var alvo = "01";
			var codigoFunep = $("#codigo_funep", pai).val();
			$("#codigo_funep").val(codigoFunep);
			var carregaGaleria		= "#carregaGaleria_"+alvo;
			var carregandoGaleria	= "#carregandoGaleria_"+alvo;
		
			$(carregaGaleria, pai).css("visibility", "hidden");
			$(carregandoGaleria, pai).css("display", "block");
			$("#id_galeria").val(alvo);
			$("#upload").submit();
		}
		
		function retorno()
		{			
			if($("#file_name").val() != "" && $("#file_name").val() != "null" )
			{			
				//var url = window.location.search.substring(1).split("=");
				var pai = window.parent.document;
				var alvo = "01";
				var carregaGaleria		= "#carregaGaleria_"+alvo;
				var carregandoGaleria	= "#carregandoGaleria_"+alvo;
				var galeriaRetorno		= '#galeria_'+alvo;
				var caminhoArquivo		= $('#file_name').val();
				$(galeriaRetorno, pai).append('<div><p>' + caminhoArquivo +
													'<img src="/images/'+$('#file_name').val()+'" width="50" height="50" class="align-left"/> ' + 
													' - <a href="javascript: void()" onclick="removeImagem(this)" class="linkComun">Remover</a>' +
													'<input type="hidden" name="gprGaleria['+$("#file_name").val()+']" id="gprGaleria['+$("#file_name").val()+']" value="'+$("#file_name").val()+'" />' +
												'</p></div>'
											  );
				$(carregandoGaleria, pai).css("display", "none");
				$(carregaGaleria, pai).css("visibility", "visible");
			}
		}
	</script>

</head>
 
<body onload="return retorno()">

	<div id="formImage">
		<form id="upload" action="cadastroImagem" method="post" enctype="multipart/form-data">
				<p align="left" style="cursor:pointer">
					<a href="javascript: void()" onClick="document.getElementById('file-original').click();">
						<img src="images/photo.png" title="Enviar Foto" class="align-left"/>
					</a>
					<input name="file-original" type="file" id="file-original" onchange="enviaImagem()" />
					<input type="hidden" name="id_galeria" id="id_galeria"/>
					<input type="hidden" name="codigo_funep" id="codigo_funep" value="<%=request.getAttribute("codigo_funep")%>"/>
				</p>
		</form>
	</div>
	
	<div id="resultado">
		
		<input type="hidden" name="file_name" id="file_name" value="<%=request.getAttribute("file_name")%>" />
		<input type="hidden" name="file_path" id="file_path" value="<%=request.getAttribute("file_path")%>" />
	</div>
</body>
</html>