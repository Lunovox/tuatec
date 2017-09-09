function onSendMail(){
	txtNome=getID("txtNome");
	txtRemetente=getID("txtRemetente");
	txtMensagem=getID("txtMensagem");
	if(txtNome.value!=""){
		if(txtRemetente.value!=""){
			if(txtMensagem.value!=""){
				//submit();
				$C=confirm("Deseja enviar esta mensagem?");
				if($C==true){submit();}else{return false;}/**/
			}else{
				//txtRecado.focus();
				alert("Digite sua mensagem!");
				return false;
			}
		}else{
			//txtRemetente.focus();
			alert("Digite seu endereço de email!");
			return false;
		}
	}else{
		//txtRemetente.focus();
		alert("Digite seu nome!");
		return false;
	}
}