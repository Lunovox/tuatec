<script>
// FONTE: http://diveintohtml5.com.br/forms.html
function onBuscar(){
	var frmSearch=document.getElementById("frmSearch");
	var txtBuscar=document.getElementById("txtBuscar");
	var txtRedirect=document.getElementById("txtRedirect");
	if(txtBuscar.value!=""){
		//doAvisoDeDesativação();
		txtRedirect.value="bitcoin-search-results";
		frmSearch.submit();
		//window.location="?sub=bitcoin-search-results&b="+escape(txtBuscar.value);
	}else{
		alert("Não esqueça de digitar o produto/serviço que deseja Comprar por bitcoins no Brasil!!!");
		txtBuscar.focus();
	}
	//return false;
}
function onAdicionar(){
	var frmSearch=document.getElementById("frmSearch");
	var txtBuscar=document.getElementById("txtBuscar");
	var txtRedirect=document.getElementById("txtRedirect");
	if(txtBuscar.value!=""){
		//doAvisoDeDesativação();
		txtRedirect.value="bitcoin-search-submit";
		frmSearch.submit();
		//window.location="?sub=bitcoin-search-submit&b="+escape(txtBuscar.value);
	}else{
		alert("Não esqueça de digitar o produto/serviço que deseja Vender por bitcoins no Brasil!!!");
		txtBuscar.focus();
	}
	//return false;
}
function doAvisoDeDesativação(){
	alert("Desculpe!\nEste botão não esta funcionando, pois esta página ainda esta em fase de construção.");
}

</script>
<div align="center" style="height:500px; vertical-align:middle;" valign="middle">
	<br/><br/><br/>
	<img src="imgs/simbolos/titulo_tuatec.png" width="250"/><br/>
	Compra e Venda de produtos e serviços com moeda Bitcoin.<br/>
	<form id_="frmSearch" target_="_top" method_="get" action_="http://www.tuatec.com.br/home/">
		<input id="txtRedirect" type="hidden" name="sub" value="bitcoin-search"/>	
		<input autofocus required novalidate id="txtBuscar" name="b" type="search" style="width:600px" placeholder="Digite aqui o produto/serviço que deseja Comprar/Vender por bitcoins no Brasil:" onSubmit="onBuscar();" /><br/>
		<button onClick="onBuscar();">Buscar Compra</button>
		<button onClick="onAdicionar();">Ofertar Venda</button>
	</form>
	<br/>
	<small>
		Ponha um destes selos abaixo no site de sua loja para <br/>
		indicar que está recebendo bitcoins como pagamento!<br/>
		<br/>
		<img src="http://www.tuatec.com.br/imagens/selos/selo_bitcoin-aceito-aqui_18x15.png" hspace="5" alt="Ponha este selo no site de sua loja!"/><br/>
		<img src="http://www.tuatec.com.br/imagens/selos/selo_bitcoin-aceito-aqui_1024x390.png" height="80" hspace="5" alt="Ponha este selo no site de sua loja!"/><br/>
	</small>
</div>
