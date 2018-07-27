$(document).ready(function() {      
	if(navigator.appName.indexOf('Internet Explorer')>0){
		var msg =	'<div>' +
						'Esse site é melhor visualizado em <a href="https://www.google.com/chrome?hl=pt-br" target="_blank" title="Download - Google Chrome">Google Chrome</a> ou <a href="http://www.mozilla.org/pt-BR/firefox/new/" target="_blank" title="Download - Mozilla Firefox">Mozilla Firefox</a>.' +
					'</div>';
		$("#header").html(msg);
	}
});

function verificaAssent()
{
	var nome	= $("#nome_area").val()
	var n_funep	= $("#codigo_funep").val();
	var bairro	= $("#bairro").val();
	
	if(nome == "" && n_funep == "" && bairro == "")
	{
		alert('Preencha um dos campos para efetuar a pesquisa.');
		return false;
	}
	
}
function filtraAssent(campo)
{
	var nome	= ($("#nome_area").val() == "")?true:false;
	var n_funep	= ($("#codigo_funep").val() == "")?true:false;
	var bairro	= ($("#bairro").val() == "")?true:false;
	if(campo['id']=="nome_area")
	{
		if(n_funep == false || bairro == false)
		{
			alert('Só é permitido o preenchimento de um campo.');
			$("#nome_area").val("");
		}
	}
	if(campo['id']=="codigo_funep")
	{
		if(nome == false || bairro == false)
		{
			alert('Só é permitido o preenchimento de um campo.');
			$("#codigo_funep").val("");
		}
	}
	if(campo['id']=="bairro")
	{
		if(n_funep == false || nome == false)
		{
			alert('Só é permitido o preenchimento de um campo.');
			$("#bairro").val("");
		}
	}
}
function ocultaImagem(identificador, url)
{
	window.open(url, 'popup', 'width=200,height=200');
	$(identificador).parent().toggle('slow');
	return false;
}
function abreBusca()
{
	$("#iframeBusca").slideToggle('slow');
}
function inseriCampos(numero)
{
	$("#tabelaIntegrantes tr.campos").remove();
	$("#renda_total").val("");
	for(i=0; i<numero; i++)
	{
		controleVoltarCampo = numero - 1;
		if(controleVoltarCampo==i)
			imprimiControle = 'onkeydown="return tabInput(\'n_pessoas_domicilio\', event)"';
		else
			imprimiControle = '';
		
		criaIntegrantes = '<tr class="campos">' +
							'<td><input type="text" name="integrante['+i+']"/></td>' +
							'<td><input type="text" name="parentesco['+i+']"/></td>' +
							'<td><input type="text" style="width: 100px" name="idade['+i+']" onkeyup="numberOnly(this)"/></td>' +
							'<td><input type="text" id="renda_'+i+'" name="renda['+i+']" onchange="calculaRenda()" '+imprimiControle+'/></td>' +
							'</tr>';
		$("#tabelaIntegrantes").append(criaIntegrantes);
	}
}

this.increment = 0;
var incrementator=true;
function criaComposicaoFamiliar()
{
	var ultimoHidden = $("input[type=hidden]:last").attr("id");
	if(incrementator ==true && (!isNaN(ultimoHidden) && ultimoHidden != ""))
	{
		this.increment= ultimoHidden;
		this.increment= parseInt(this.increment);
		incrementator=false;
	}
	
	var n_cadastro	= $("#n_cadastro").val();
	if(n_cadastro == "")
	{
		alert("Não foi encontrado o número de cadastro nos \"Dados Gerais\".\nVerifique antes de incluir um integrante familiar.");
		return false;
	}
	
	this.increment = this.increment+1;
	
	imprimiControle = 'onkeydown="return tabInput(\'addIntFam\', event)"';
	criaIntegrantes = '<tr class="campos">' +
	'<td><a href="javascript: void()" onclick="removeLinha(this)"><img src="./images/delete.png"/></a></td>' +
	'<td><input type="text" readonly=readonly style="background: #f1f1f1" name="dom_n_cadastro['+this.increment+']" value="'+n_cadastro+'"/></td>' +
	'<td><input type="text" name="dom_nome['+this.increment+']"/></td>' +
	'<td><select name="dom_parentesco['+this.increment+']">'+
	optionCombo2 +
	'</select></td>' +
	'<td><input type="text" name="dom_cpf['+this.increment+']"/></td>' +
	'<td><input type="text" name="dom_rg['+this.increment+']"/></td>' +
	'<td><input type="text" name="dom_renda['+this.increment+']"/></td>' +
	'<td><input type="text" name="dom_familia['+this.increment+']"/></td>' +
	'<td><select id="dom_sexo" name="dom_sexo['+this.increment+']">' +
	'<option value="-1">Selecione</option>' +
	'<option value="1">Masc</option>' +
	'<option value="2">Fem</option>' +
	'</select>'+
	'</td>' +
	'<td><input type="text" name="dom_idade['+this.increment+']"/></td>' +
	'<td><select name="dom_cor['+this.increment+']">'+
	optionCombo3 +
	'</select></td>' +
	'<td><select name="dom_escolaridade['+this.increment+']">'+
	optionCombo +
	'</select></td>'+
	'<td><input type="text" name="dom_ocupacao['+this.increment+']"/></td>' +
	'<td><select '+imprimiControle+' name="dom_deficiencia['+this.increment+']">'+ 
	'<option value="-1">Selecione</option>' +
	'<option value="1">Sim</option>' +
	'<option value="2">Não</option>' +
'</select>'+
	
	'</td>' +
	'</tr>';
		$("#tabelaIntegrantes").append(criaIntegrantes);
		
}

function removeLinha(campo)
{
	var confirmacao = confirm("Tem certeza que deseja remover essa entrada de dados?");
	if(confirmacao)
		$(campo).parent().parent().html("");
	else
		return false;
}

function inseriCampos2(numero)
{
	$("#tabelaIntegrantes tr.campos").remove();
	$("#renda_total").val("");
	for(i=0; i<numero; i++)
	{
		controleVoltarCampo = numero - 1;
		if(controleVoltarCampo==i)
			imprimiControle = 'onkeydown="return tabInput(\'n_pessoas_domicilio\', event)"';
		else
			imprimiControle = '';
		
		criaIntegrantes = '<tr class="campos">' +
							'<td><input type="text" name="dom_n_cadastro['+i+']"/></td>' +
							'<td><input type="text" name="dom_nome['+i+']"/></td>' +
							'<td><input type="text" name="dom_parentesco['+i+']"/></td>'+
							'<td><input type="text" name="dom_cpf['+i+']"/></td>' +
							'<td><input type="text" name="dom_rg['+i+']"/></td>' +
							'<td><input type="text" name="dom_renda['+i+']"/></td>' +
							'<td><input type="text" name="dom_familia['+i+']"/></td>' +
							'<td><input type="text" name="dom_sexo['+i+']"/></td>' +
							'<td><input type="text" name="dom_idade['+i+']"/></td>' +
							'<td><input type="text" name="dom_cor['+i+']"/></td>' +
							'<td><input type="text" name="dom_escolaridade['+i+']"/></td>' +
							'<td><input type="text" name="dom_ocupacao['+i+']"/></td>' +
							'<td><input type="text" name="dom_deficiencia['+i+']"/></td>' +
							'</tr>';
		$("#tabelaIntegrantes").append(criaIntegrantes);
	}
}

function calculaRenda()
{
	//valor = (valor*1) + ($("#renda_total").val()*1) + ".00";
	
	n_campos = $("#n_pessoas_domicilio").val();
	valor = 0;
	for(i=0; i< n_campos; i++)
	{
		if($("#renda_"+i).val() != "")
		{
			campo = $("#renda_"+i).val();
			campo = campo.replace(",", ".");
			
			valor = parseFloat(campo) + parseFloat(valor);
		}
	}
	$("#renda_total").val(valor.toFixed(2));

}

function exibiRisco()
{
	$("#itemRisco").toggle();
}

function tabInput(destino, event)
{
	if (event.keyCode == 9) {
		$("#"+destino).focus();
		return false;
	}	
}

/**
* FUNCAO RESPONSAVEL POR HABILITAR CAMPOS DE FORMULARIO
* PATRAMETRO campo DEVE SER UM ARRAY
*/
function habilitaCampo(campo)
{	
	$(campo).each
	(
		function(index) {
			if($("#"+campo[index]).attr("disabled"))
			{
				$("#"+campo[index]).attr("disabled", false);
				$("#"+campo[index]).removeClass("disabled");
			}
			else
			{
				$("#"+campo[index]).attr("disabled", true);
				$("#"+campo[index]).addClass("disabled");
				if($("#"+campo[index]).attr('type') == "text")
					$("#"+campo[index]).val("");
			}
		}
	)
}

/**
* FUNCAO RESPONSAVEL POR CAPTURAR A URL
*/
function getPathName()
{
	var url = window.location.pathname;
	return url;
}

/**
* REMOVE A IMAGEM DA GALERIA
*/
function removeImagem(campo)
{
	$(campo).parent().parent().html("");
}
/**
* VERIFICA SE ALGUM CAMPO OBRIGATÓRIO AINDA PRECISA SER PREENCHIDO
**/
function verificaSubmit()
{
	if($("#erros").is(':visible'))
	{
		jAlert("Verifique os erros no cadastro antes de enviar.", "AVISO");
		return false;
	}
}

function dump(obj) {
    var out = '';
    for (var i in obj) {
        out += i + ": " + obj[i] + "\n";
    }

    alert(out);

    // or, if you wanted to avoid alerts...

    var pre = document.createElement('pre');
    pre.innerHTML = out;
    document.body.appendChild(pre)
}

/**
 * FUNCAO RESPONSAVEL POR GRAVAR O ITEM RISCO
**/
codigoRisco = 0;
function salvaRisco()
{	
	this.riscoStep = {};
	$("#id_setor").val(Trim($("#id_setor").val()));
	if($("#id_setor").val() == "")
	{
		jAlert("O campo setor precisa ser preenchido.", "AVISO");
		return false;
	}
	
	if($("#json_risco").val() != '')
		this.riscoStep = jQuery.parseJSON($("#json_risco").val());
	
	this.riscoStep[codigoRisco] =
	{
		id_setor				:$("#id_setor").val(),
		id_tipo_risco			:$("#id_tipo_risco").val(),
		id_grau_risco			:$("#id_grau_risco").val(),
		uhs						:$("#uhs").val(),
		remocao_indicada		:$("#remocao_indicada").val(),
		dt_ultimo_monitoramento	:$("#dt_ultimo_monitoramento").val(),
		observacoes				:$("#observacoes").val(),
		chk_interv_1			:$("#chk_interv_1").val(),
		detalhe_inter_1			:$("#detalhe_inter_1").val(),
		chk_interv_2			:$("#chk_interv_2").val(),
		detalhe_inter_2			:$("#detalhe_inter_2").val(),
		chk_interv_3			:$("#chk_interv_3").val(),
		detalhe_inter_3			:$("#detalhe_inter_3").val()
	};
	
	//console.log(JSON.stringify(this.riscoStep));
	$("#json_risco").val(JSON.stringify(this.riscoStep));
	htmlAntigo = $("#coluna_left").html();
	$("#coluna_left").html(htmlAntigo + 
							"<div>" + 
								"<p>" + 
									"<label style='width: 390px;text-align: left;'>" + 
										"<img src='images/arrow_more.png' title='Setor' /> " +
										$("#id_setor").val() + 
									" - <a href='javascript: void("+codigoRisco+")' id='risco"+codigoRisco+"' title='REMOVER ITEM' onclick='removeRisco(" + codigoRisco + ")' class='linkComun'>Remover Setor</a>" + 
									" - <a href='javascript: void("+codigoRisco+")' id='risco"+codigoRisco+"' title='EDITAR ITEM' onclick='editarRisco(" + codigoRisco + ")' class='linkComun'>Editar Setor</a>" + 
									"</label> " + 
								"</p>" + 
							"</div>");
	codigoRisco++;
	
	jAlert("Setor adicionado/atualizado com sucesso!", "AVISO");
	
	$("#id_setor").val("");
	$("#id_tipo_risco").val("");
	$("#id_grau_risco").val("");
	$("#uhs").val("");
	$("#remocao_indicada").val("");
	$("#dt_ultimo_monitoramento").val("");
	$("#observacoes").val("");
	$("#chk_interv_1").val("OFF");
	$("#detalhe_inter_1").val("");
	$("#chk_interv_2").val("OFF");
	$("#detalhe_inter_2").val("");
	$("#chk_interv_3").val("OFF");
	$("#detalhe_inter_3").val("");
}

function editarRisco(item)
{
	this.riscoStepEdit = jQuery.parseJSON($("#json_risco").val());
	//console.log(this.riscoStepEdit[item]);
	//alert(this.riscoStepEdit[item].id_setor);
	
	$("#id_setor").val(this.riscoStepEdit[item].id_setor);
	$("#id_tipo_risco").val(this.riscoStepEdit[item].id_tipo_risco);
	$("#id_grau_risco").val(this.riscoStepEdit[item].id_grau_risco);
	$("#uhs").val(this.riscoStepEdit[item].uhs);
	$("#remocao_indicada").val(this.riscoStepEdit[item].remocao_indicada);
	$("#dt_ultimo_monitoramento").val(this.riscoStepEdit[item].dt_ultimo_monitoramento);
	$("#observacoes").val(this.riscoStepEdit[item].observacoes);
	$("#chk_interv_1").val(this.riscoStepEdit[item].chk_interv_1);
	$("#detalhe_inter_1").val(this.riscoStepEdit[item].detalhe_inter_1);
	$("#chk_interv_2").val(this.riscoStepEdit[item].chk_interv_2);
	$("#detalhe_inter_2").val(this.riscoStepEdit[item].detalhe_inter_2);
	$("#chk_interv_3").val(this.riscoStepEdit[item].chk_interv_3);
	$("#detalhe_inter_3").val(this.riscoStepEdit[item].detalhe_inter_3);
	
	removeRisco(item);
	
	//console.log(JSON.stringify(this.riscoStep));
}

function removeRisco(item)
{
	this.riscoStepDel = jQuery.parseJSON($("#json_risco").val());
	delete this.riscoStepDel[item];
	campo = "#risco"+item;
	$(campo).parent().parent().parent().html("");
	$("#json_risco").val(JSON.stringify(this.riscoStepDel));
}

function gravaRisco()
{
	campo = new Array();
	salva = new salvaRisco();
	campo = salva.riscoStep;
	alert(campo["chk_interv_3"]);
	alert(campo.toString());
	//$("#valores_risco").val(campo);
}

$(document).ready(function() {       
	// cria o efeito dropdown no menu
	$('#lista-menu > li').hover(
		function () {
			//$(this).find('ul').toggle("fast");
			//alert($(this).children("ul").html());
			$(this).children("ul").toggle("fast");
		}
	)	
});

function Trim(str){return str.replace(/^\s+|\s+$/g,"");}

function numberOnly(campo)
{
	var stringSize = $(campo).val().length-1;
	var valorCampo = Trim($(campo).val());
	$(campo).val(valorCampo);
	if (isNaN(valorCampo))
	{
		if(stringSize == 0)
		{
			novoValor = "";
		}
		else
		{
			novoValor = valorCampo.substring(0, stringSize);
		}
		$(campo).val(novoValor);
	}
}

/**
*FUNCAO RESPONSAVEL POR CRIAR O EFEITO SLIDE SHOW NA HOME
*/
function slideShow() {
 
    //Set the opacity of all images to 0
    $('#gallery a').css({opacity: 0.0});
     
    //Get the first image and display it (set it to full opacity)
    $('#gallery a:first').css({opacity: 1.0});
     
    //Set the caption background to semi-transparent
    $('#gallery .caption').css({opacity: 0.7});
 
    //Resize the width of the caption according to the image width
    $('#gallery .caption').css({width: $('#gallery a').find('img').css('width')});
     
    //Get the caption of the first image from REL attribute and display it
    $('#gallery .content').html($('#gallery a:first').find('img').attr('rel'))
    .animate({opacity: 0.7}, 400);
     
    //Call the gallery function to run the slideshow, 6000 = change to next image after 6 seconds
    setInterval('gallery()',6000);
     
}

/**
*FUNCAO RESPONSAVEL POR CRIAR O EFEITO SLIDE SHOW NA HOME
*/
function gallery() {
     
    //if no IMGs have the show class, grab the first image
    var current = ($('#gallery a.show')?  $('#gallery a.show') : $('#gallery a:first'));
 
    //Get next image, if it reached the end of the slideshow, rotate it back to the first image
    var next = ((current.next().length) ? ((current.next().hasClass('caption'))? $('#gallery a:first') :current.next()) : $('#gallery a:first'));   
     
    //Get next image caption
    var caption = next.find('img').attr('rel'); 
     
    //Set the fade in effect for the next image, show class has higher z-index
    next.css({opacity: 0.0})
    .addClass('show')
    .animate({opacity: 1.0}, 1000);
 
    //Hide the current image
    current.animate({opacity: 0.0}, 1000)
    .removeClass('show');
     
    //Set the opacity to 0 and height to 1px
    $('#gallery .caption').animate({opacity: 0.0}, { queue:false, duration:0 }).animate({height: '1px'}, { queue:true, duration:300 }); 
     
    //Animate the caption, opacity to 0.7 and heigth to 100px, a slide up effect
    $('#gallery .caption').animate({opacity: 0.7},100 ).animate({height: '65px'},500 );
     
    //Display the content
    $('#gallery .content').html(caption);
         
}