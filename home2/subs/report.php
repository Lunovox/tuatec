	<?php
#----------------------------------------------------------------------------------------------
  //require_once "funcoes_acesso.php";
  require_once "libs/libConversor.php";
#----------------------------------------------------------------------------------------------
	$De="SENTINELA TUATEC";
	$Para=Propriedade('rc');//Recipiente para os avisos.
	$Assunto=Propriedade('sb');//Tema do E-mail

	$hr=Propriedade('hr');//HTTP_REFERER
	$sw=Propriedade('sw');//Nome do programa
	$vr=Propriedade('vr');//Versão do programa
	$ns=Propriedade('ns');//Número de Série do programa

	$ru=Propriedade('ru');//REQUEST_URI = Endereço solicitado pelo usuário

	$Erro=Propriedade('rs');//REDIRECT_STATUS = Numero Do Erro
	$Onde="$sw $vr ".($ns!=""?"($ns):":"")."$ru";
	$Quando=time();
	$IPdoUsuario=$_SERVER['REMOTE_ADDR'];//REMOTE_ADDR = IP do Usuário
	$Razao="$IPdoUsuario: $Assunto.";
#----------------------------------------------------------------------------------------------
	/*$ErrosJadeclarados=ConteudoDeTabela("tbl_erros","Onde='$Onde' and Razao='$Razao'");
	if(count($ErrosJadeclarados)<=0){
		$Comando="
			INSERT INTO tbl_erros (
				RegistroWeb, Programa_ID, SeUsuarioAvisado, Numero, Ocorrencias,
				Quando, Onde, Razao, Observacoes
			) VALUES (
				NULL, '$IPdoUsuario', '1', '$Erro', '1', '$Quando',
				'$Onde', '$Razao', '$hr'
			);
		";
	}else{
	  $Comando="
		  UPDATE tbl_erros SET
				Ocorrencias='".($ErrosJadeclarados[0]['Ocorrencias']+1)."',
				Quando='$Quando'
			WHERE RegistroWeb='".$ErrosJadeclarados[0]['RegistroWeb']."'
		";
	}
  @SQL_Consulta($Comando);/**/
#----------------------------------------------------------------------------------------------
	$Mensagem="
		<table width=100% cellpadding=0 cellspacing=5 border=0>
			<tr>
				<td rowspan=99>
				  <img src='http://www.tuatec.com.br/home/imgs/modelos/telefonista.png' altsrc='../imagens/modelos/balconista.jpg'>
				</td>
				<td align=center colspan=2>
				  <font face='arial' color='#000000' size=5><b>$Assunto
				</td>
			</tr>
			<tr>
				<td align=right nowrap=true>
				  <font face='arial' color='#000000' size='3'><b>PC USUÁRIO</b>:
				</td>
				<td>
				  <font face='arial' color='#000000' size='3'>$IPdoUsuario
				</td>
			</tr>
			<tr>
				<td align=right nowrap=true>
				  <font face='arial' color='#000000' size='3'><b>HTTP REFERER</b>:
				</td>
				<td>
				  <font face='arial' color='#000000' size='3'>$hr
				</td>
			</tr>
			<tr>
				<td align=right nowrap=true>
				  <font face='arial' color='#000000' size='3'><b>NÚMERO DO ERRO</b>:
				</td>
				<td>
				  <font face='arial' color='#000000' size='3'>$Erro
				</td>
			</tr>
			<tr>
				<td align=right nowrap=true>
				  <font face='arial' color='#000000' size='3'><b>QUANDO</b>:
				</td>
				<td>
				  <font face='arial' color='#000000' size='3'>".InteiroPHPparaDataHoraBR($Quando)/**/."
				</td>
			</tr>
			<tr>
				<td align=right nowrap=true>
				  <font face='arial' color='#000000' size='3'><b>URL</b>:
				</td>
				<td>
				  <font face='arial' color='#000000' size='3'><a href='$Onde' target='_blank'>$Onde</a>
				</td>
			</tr>
			<tr>
				<td align=right nowrap=true>
				  <font face='arial' color='#000000' size='3'><b>REPORTADO PARA</b>:
				</td>
				<td>
				  <font face='arial' color='#000000' size='3'><a href='mailto:$Para'>$Para</a>
				</td>
			</tr>
		</table>
	";
#----------------------------------------------------------------------------------------------
	$Corpo="
<html>
	<head>
	  <title>$Assunto</title>
	</head>
	<body
	  bgcolor=000044
		textcolor='#000000'
		link=00CCFF
		vlink=444444
		alink=00FFFF
		topmargin=0
		leftmargin=0
		rightmargin=0
		bottommargin=0
		marginwidth=0
		marginheight=0
		background='http://www.tuatec.com.br/home/imgs/templantes/background-tuatec-03b.png'
		bgproperties=fixed
		oncontextmenu='return false'
	>
		<table border=0 align=ABSMIDLE width=100% height=100% cellpadding=0 cellspacing=0>
			<tr>
				<td align=center>
					<table width=790px height=100% cellpadding=0 cellspacing=0>
						<tr height=114px>
							<td style='height:114px; background:url(http://www.tuatec.com.br/home/imgs/simbolos/titulo_tuatec3.png) #EEEEEE; background-repeat:no-repeat;'></td>
						</tr>
						<tr height=22>
							<td colspan=3 align=center bgcolor='#EAF7FF' 
								background='http://www.tuatec.com.br/home/imgs/templantes/barra-horizontal-azul2.png'
							</td>
						</tr>
						<tr height=100%>
							<td bgcolor=FFFFFF valign=top>
							  $Mensagem
							</td>
						</tr>
						<tr height=22>
							<td colspan=3 align=center bgcolor='#EAF7FF' 
								background='http://www.tuatec.com.br/home/imgs/templantes/barra-horizontal-azul2.png'
							</td>
						</tr>
						<tr>
							<td bgcolor='#CCCCCC' align=center >
								<a href=\"http://www.tuatec.com.br\">
									<font face='arial' size=2 color=00CCFF>
										<b>www.tuatec.com.br</b>
									</font>
								</a><br>
								<font face='arial' size=1 color='#000000'>
									sac@tuatec.com.br<br>
									(081)8731-0165
								</font>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</body>
</html>
";
#----------------------------------------------------------------------------------------------
$Cabecalho=
	"Content-Type: text/html; charset=iso-8859-1;\n".
	"From: $De <www.tuatec.com.br>;\n";
#----------------------------------------------------------------------------------------------
	if($Para!=""){
	  //print_r($ErrosJadeclarados);
	  if(count($ErrosJadeclarados)>=1){
	    if($ErrosJadeclarados[0]['Quando']!=time()){
	  	  $ResultadoDoEMail=@mail($Para,$IPdoUsuario.".".$Assunto,$Corpo,$Cabecalho);
	  	}
	  }else{
	    $ResultadoDoEMail=@mail($Para,$IPdoUsuario.".".$Assunto,$Corpo,$Cabecalho);
	  }
  }
  echo $Mensagem;
#----------------------------------------------------------------------------------------------
?>

