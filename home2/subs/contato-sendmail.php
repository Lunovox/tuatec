<?php
	require_once "libs/libEmail.php";
	
	$Remetente=Propriedade('Remetente');
	$Nome=Propriedade('Nome');
	$Destinatario=Propriedade('Destinatario');
	$Assunto=Propriedade('Assunto');
	$Mensagem=Propriedade('Mensagem');
	$Formulario=Propriedade('Formulario');
	$Aviso=Enviar_Email("TXT",$Destinatario,$Nome."<".$Remetente.">",$Assunto,$Mensagem);
	//if(strpos($Aviso,"sucesso")!=""){$Recado="";}
	
	echo "
		<script>
		window.location='index.php".
			"?sub=".urlencode($Formulario).
			"&Nome=".urlencode($Nome).
			"&Remetente=".urlencode($Remetente).
			"&Mensagem=".urlencode($Mensagem).
			//"&Destinatario=".urlencode($Destinatario).
			//"&Assunto=".urlencode($Assunto).
			"&Aviso=".urlencode($Aviso)."';
		</script>
	";/**/
?>

