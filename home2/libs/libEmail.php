<?php 
function Enviar_Email($Formato="TXT",$Destinatario="lunovox@disroot.org",$Remetente="",$Assunto="",$Recado=""){
	if($Destinatario!=""){
		if($Remetente!=""){
			if($Recado!=""){
				if(strtoupper($Formato)!="HTML" and strtoupper($Formato)!="HTM"){
					$Corpo=$Recado;
					$Cabecalho=
					"MIME-Version: 1.0\n".
						"Content-Type: text/plain; charset=UTF-8;\n".
						"From: $Remetente;\n";
				}else{
					//$Recado=nl2br($Recado);
					$Mensagem=$Recado;
					$Corpo="
						<html>
							<head>
							<title>$Assunto</title>
							</head>
							<body
								bgcolor='#CCCCCC'
								textcolor=000000
								link=0000FF
								vlink=444444
								alink=0000FF
								topmargin=0
								leftmargin=0
								rightmargin=0
								bottommargin=0
								marginwidth=0
								marginheight=0
								bgproperties=fixed
								oncontextmenu='return false'
							>
							$Mensagem
							</body>
						</html>
					";
					$Cabecalho=
					"Content-Type: text/html; charset=UTF-8;\n".
					"From: $Remetente;\n";
				}
#-------------------------------------------------------------------------------------------------------------------
				$ResultadoDoEMail=@mail($Destinatario,$Assunto,$Corpo,$Cabecalho);
				if($ResultadoDoEMail!=""){
					$Recado="";
					return
					"<center><font color='#008800' size='4'><h2>MENSAGEM ENVIADA COM SUCESSO!</h2></font><br/>".
					"Logo respoderemos sua mensagem.</center><br/><br>".
					"Em caso de urgência telefone: <font color=0000FF><nobr><b>(081)9.9675.4954</b></nobr></font>.";
				}else{
					return 
					"<center><font size=4 color=FF0000><b>FALHA AO ENVIAR MENSAGEM</b></font></center>".
					"<p align=justify>Não foi possível enviar sua mensagem de testo através da Internet. ".
					"Tente novamente mais tarde, ou em caso de urgência telefone: ".
					"<font color=0000FF><nobr><b>(081)9.9675.4954</b></nobr></font></p>";
				}
#-------------------------------------------------------------------------------------------------------------------
			}else{return "<font color=FF0000>Digite sua <b>Mensagem</b> na caixa de testo!";}
		}else{return "<font color=FF0000>Digite o <b>Seu E-Mail</b>!";}
	}else{return "<font color=FF0000>Digite o <b>E-Mail do(s) destinatário(s)</b>!";}
}
?>

