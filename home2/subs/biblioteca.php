<style>
	.linhafocalizavel{
		/*background-color:#DDDDF0;/**/
		color:#000000;
		cursor:pointer;
		white-space:nowrap;
	}
	.linhafocalizavel:hover{
		background-color:#CCEEFF; /*DDEEFF;/**/
		color:#0088FF;
	}
</style>
<div style="padding:5px 0px 5px 0px;">
	<?php
	################ CONFIGURAÇÕES #######################################
	$Redirecionar="?sub=biblioteca";
	$PastaBase="../../../";
	$PastaDosIcones="imgs/icons";
	//$ResultadoDoTeste=Autorizacao_do_colaborador();
	$Local=Propriedade("Local");
	//if($Local==""){$Local="/";}
	######################################################################
	//if(isLoged()){
		$Pasta=@opendir($PastaBase.$Local);
		?>
		<div style="white-space:nowrap;">
			<img src='<?=$PastaDosIcones;?>/sbl_pasta.gif' border='0' align='absmiddle'> <b>ENDEREÇO:</b>
			<input type='text' value='<?=$Local;?>' style='width:640px' readonly /><br/>
		</div>
		<br/>
		<?php if($Local!=""){ ?>
			<div class='linhafocalizavel' align='left' alt='Voltar'
				onclick="window.location='<?=$Redirecionar;?>'"
			>
				<img src='<?=$PastaDosIcones;?>/sbl_home.gif' border='0' align='absmiddle'>
				<b>INÍCIO</b>
			</div>
			<div class='linhafocalizavel' align='left' alt='Voltar' 
				onclick="window.location='javascript:history.back(1)'"
			>
				<img src='<?=$PastaDosIcones;?>/sbl_voltar.gif' border='0' align='absmiddle'>
				<b>VOLTAR</b>
			</div>
			<br>
			<?php 
		} 
		
		
		$qtd=0;
		$sorteds = array();
		while ($Conteudo=@readdir($Pasta)) {
			$qtd++;
			$sorteds[$qtd]=$Conteudo;
		}
		sort($sorteds);
		//print_r($sorteds);
		
		while (list($key, $val) = each($sorteds)) { 
			$Conteudo=$val;
			if($Conteudo!="." and $Conteudo!=".." and $Conteudo!="db"){
				$URL=$PastaBase.$Local."/".$Conteudo;
				$Peso=@filesize($URL);
				$Peso=(int)($Peso/1024)+1;
				//echo "→→→→'$URL'←←←←";
				//echo "→→→→'".is_dir($URL)."'←←←←";
				if(is_dir($URL)){
					$QuantiaInterna=0;
					$Interna=@opendir($URL);
					while ($Int=@readdir($Interna)){
						if($Int!="." and $Int!=".." and $Int!="" and preg_match("/\.(db)$/", $Int)==""){
							$QuantiaInterna++;
						}
					}
					$QuantiaInterna=str_pad($QuantiaInterna, 2, "0", STR_PAD_LEFT);
					$Icone="$PastaDosIcones/sbl_pasta.gif";
					$Tipo="Pasta";
				}elseif(is_file($URL)){
					$Partes=explode(".",$Conteudo);
					$Tipo=strtolower($Partes[count($Partes)-1]);
					if($Tipo=="html" or $Tipo=="htm" or $Tipo=="shtml" or $Tipo=="mhtml" or $Tipo=="mht"){
						$Icone="$PastaDosIcones/sbl_file_html.gif";
					}elseif($Tipo=="wml" or $Tipo=="swml"){
						$Icone="$PastaDosIcones/sbl_file_wml.gif";
					}elseif($Tipo=="rss" or $Tipo=="xml"){
						$Icone="$PastaDosIcones/sbl_file_rss.gif";
					}elseif($Tipo=="php"){
						$Icone="$PastaDosIcones/sbl_file_php.gif";
					}elseif($Tipo=="sql"){
						$Icone="$PastaDosIcones/sbl_file_sql.gif";
					}elseif($Tipo=="txt"){
						$Icone="$PastaDosIcones/sbl_file_txt.gif";
					}elseif($Tipo=="pdf"){
						$Icone="$PastaDosIcones/sbl_file_pdf.gif";
					}elseif($Tipo=="doc"){
						$Icone="$PastaDosIcones/sbl_file_doc.gif";
					}elseif($Tipo=="xls"){
						$Icone="$PastaDosIcones/sbl_file_xls.gif";
					}elseif($Tipo=="js"){
						$Icone="$PastaDosIcones/sbl_file_js.gif";
					}elseif($Tipo=="eml"){
						$Icone="$PastaDosIcones/sbl_file_eml.gif";
					}elseif($Tipo=="mid" or $Tipo=="midi" or $Tipo=="mp3" or $Tipo=="wma" or $Tipo=="wav"){
						$Icone="$PastaDosIcones/sbl_file_mid.gif";
					}elseif($Tipo=="jpg" or $Tipo=="jpeg"){
						$Icone="$PastaDosIcones/sbl_file_jpg.gif";
					}elseif($Tipo=="gif" or $Tipo=="png"){
						$Icone="$PastaDosIcones/sbl_file_gif.gif";
					}elseif($Tipo=="jar" or $Tipo=="jad"){
						$Icone="$PastaDosIcones/sbl_file_jar.gif";
					}elseif($Tipo=="com"){
						$Icone="$PastaDosIcones/sbl_file_com.gif";
					}elseif($Tipo=="exe"){
						$Icone="$PastaDosIcones/sbl_file_exe.gif";
					}elseif($Tipo=="zip"){
						$Icone="$PastaDosIcones/sbl_file_zip.gif";
					}elseif($Tipo=="rar"){
						$Icone="$PastaDosIcones/sbl_file_rar.gif";
					}else{
						$Icone="$PastaDosIcones/sbl_file.gif";
					}
				}else{
					$Tipo="";
					$Icone="";
				}
				if($Tipo!="db" and $Tipo!="ini"){
					$Nome=ucfirst(trim(str_replace("_"," ",$Conteudo)));
					//echo "→→→→'".$Tipo."'←←←";
					if($Tipo!="" and $Tipo!="Pasta"){ ?>
						<div class='linhafocalizavel' align='left' 
							style="white-space:nowrap; padding:3px 0px 3px 15px;"
							onclick="window.open('<?=$URL;?>')"
						>
							<img src='<?=$Icone;?>' border='0' align='absmiddle'>
							<?=$Nome;?> <small>(<b><?=$Peso;?> KB</b>)</small>
						</div><?php 
					}else{ ?>
						<div class='linhafocalizavel' align='left' 
							style="white-space:nowrap; padding:3px 0px 3px 15px;"
							onclick="window.location='<?=$Redirecionar;?>&Local=<?=$Local."/".$Conteudo;?>'"
						>
							<img src='<?=$Icone;?>' border='0' align='absmiddle'> <b><?=$Nome;?></b> 
							<small>(<?=$QuantiaInterna;?> UI)</small>
						</div><?php 
					}
				}
				//if($T!="." and $T!=".." and $T!="" and preg_match("/\.(db)$/", $T)==""){$Tema[]=$T;}
			}
		}
	/*}else{
		require_once "subs/log.php";
	}/**/
	?>
	<br/><br/>
</div>
