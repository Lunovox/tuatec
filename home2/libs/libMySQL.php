<?php
	class DataBase{
		function DataBase(){
			//$Servidor=(($_SERVER['SERVER_NAME']=="tuatec.ddns.net" || $_SERVER['SERVER_NAME']=="127.0.0.1" || $_SERVER['SERVER_NAME']=="localhost")?"localhost":"mysql.tuatec.ddns.net");
			$Servidor="localhost";
			$Usuario="username";
			$Password="*******";
			$database="opentube";
			
			$con = @mysql_connect($Servidor,$Usuario,$Password); // tem @ na frente pq esta funcao esta deprecada
			if(!$con){die('Could not connect: ' . mysql_error());	}
 			$BD = mysql_select_db ($database);
			if(isset($BD)){return $BD;}
		}
	}
#-----------------------------------------------------------------------------------------------------------------------
	function SQL_Consulta($Comando=""){
		//echo $Comando;
	  if($Comando!=""){
	    $com = new DataBase;
	    if(isset($com) && $com!=""){
	      $Consulta=@mysql_query($Comando);
	      if(isset($Consulta) && $Consulta!=""){
					return $Consulta;
				}else{
					return "Falha de consulta: $Comando";
				}
	    }else{
				return "DataBase não declarado!";
			}
	  }else{
			return "Comando não declarado!";
		}
	}
#-----------------------------------------------------------------------------------------------------------------------
	function SQL_DeleteRegistro($Tabela=NULL, $Campo=NULL, $Valor=NULL){
	  if(isset($Tabela) && $Tabela!=""){
	    if(isset($Campo) && $Campo!=""){
	      if(isset($Valor) /* && $Valor pode ser="" */){
	        $com = new DataBase;
	        if(isset($com) && $com!=""){
	          $Comando="DELETE FROM $Tabela WHERE $Campo='$Valor'";
	          $Consulta=@mysql_query($Comando);
	          if(isset($Consulta) && $Consulta!=""){return $Consulta;}
	        }
	      }
	    }
	  }
	}
#-----------------------------------------------------------------------------------------------------------------------
	function SQL_DeleteRegistro2($Tabela="", $Teste=""){
	  if($Tabela!=""){
	    if($Teste!=""){
				$com = new DataBase;
				if(isset($com) && $com!=""){
					$Comando="DELETE FROM $Tabela WHERE $Teste";
					$Consulta=@mysql_query($Comando);
					if(isset($Consulta) && $Consulta!=""){return $Consulta;}
				}
			}
		}
	}
#-----------------------------------------------------------------------------------------------------------------------
	function SQL_Resultados($Consulta=NULL){
	  if(isset($Consulta) && $Consulta!=""){
	    $Cmp=0;
	    while($Linha = mysql_fetch_row($Consulta)){
	      $Cmp++;
	      $Campo=strtoupper(mysql_field_name($Consulta,$Cmp));
	      $Resultado[$Campo]=$Linha;
	    }
	    if(isset($Resultado) && $Resultado!=""){return $Resultado;}
	  }else{
	    return "Falha em funcoes_sql.SQL_Resultados()";
	  }
	}
#-----------------------------------------------------------------------------------------------------------------------
	function SQL_Matriz($Consulta=NULL){  #Retorna [<NumeroDosCampos>]<=<ConteudoDosCampos>
	  if(isset($Consulta) && $Consulta!=""){
	    while($Linha = @mysql_fetch_row($Consulta)){
	      $Resultado[]=$Linha;
	    }
	    if(isset($Resultado) && $Resultado!=""){return $Resultado;}
	  }
	}
#-----------------------------------------------------------------------------------------------------------------------
	function Formatar_Matriz($Matriz=NULL, $Nome=NULL){  #Retorna [<NumeroDosCampos>]<=<ConteudoDosCampos>
		if(empty($Nome) || $Nome==""){$Nome="MATRIZ";}
		if(isset($Matriz) && $Matriz!=""){
			return $Nome."='".str_replace("(","<br/>(",str_replace(")","<br/>)",str_replace("[","<br/>[",print_r($Matriz,1))))."'<br/>\n";
		}else{
			return $Nome."=NULL<br/>\n";
		}
	}
#-----------------------------------------------------------------------------------------------------------------------
	function ConteudoDeTabela($Tabela=NULL, $Teste=NULL, $Ordem=NULL, $CamposDeRetorno=NULL, $LimiteMinimo=0, $LimiteMaximo=9999){
		if(empty($CamposDeRetorno) || $CamposDeRetorno==""){$CamposDeRetorno="*";}
		if(isset($Tabela) && $Tabela!="" && isset($Teste) && $Teste!=""){
			$SQL="SELECT $CamposDeRetorno FROM $Tabela WHERE $Teste";
		}elseif(isset($Tabela) && $Tabela!=""){
			$SQL="SELECT $CamposDeRetorno FROM $Tabela";
		}
		if(isset($SQL) && $SQL!=""){
			if(isset($Ordem) && $Ordem!=""){$SQL.=" ORDER BY ".$Ordem;}
			$SQL.=" LIMIT ".(INT)$LimiteMinimo.", ".(INT)$LimiteMaximo;
			$Consulta=SQL_Consulta($SQL);
			//print_r($Consulta);
			if(count($Consulta)>=1){$Campos=(int)@mysql_num_fields($Consulta);}
			else{$Campos=0;}
			$Matriz=SQL_Matriz($Consulta);

			for ($M=0; $M<count($Matriz); $M++) {
				for ($C=0; $C<$Campos; $C++) {
					$Campo[$C]=mysql_field_name($Consulta,$C);
					if($Matriz[$M][$C]!=NULL){
						$Registros[$M][$Campo[$C]]=$Matriz[$M][$C];
					}else{
						$Registros[$M][$Campo[$C]]="";
					}
				}
			}
			//Imprimir_Matriz($Matriz);
			//Imprimir_Matriz($Registros,"Registros");
			if(count($Matriz)>=1){return $Registros;}
			/*
			if(count($Matriz)==1){
			  if($CamposDeRetorno!="*"){$ValorDoCampo=$Registros[0];}
			  else{$ValorDoCampo=$Registros;}
		  	return $ValorDoCampo;
			}elseif(count($Matriz)>1){
		  	return $Registros;
			}/**/
		}
	}
#-----------------------------------------------------------------------------------------------------------------------
	function ConteudoDeMatriz($Tabela=NULL, $Teste=NULL, $Ordem=NULL, $CamposDeRetorno=NULL){
		if(empty($CamposDeRetorno) || $CamposDeRetorno==""){$CamposDeRetorno="*";}
		if(isset($Tabela) && $Tabela!="" && isset($Teste) && $Teste!=""){
			$SQL="SELECT $CamposDeRetorno FROM $Tabela WHERE $Teste";
		}elseif(isset($Tabela) && $Tabela!=""){
			$SQL="SELECT $CamposDeRetorno FROM $Tabela";
		}
		if(isset($SQL) && $SQL!=""){
			if(isset($Ordem) && $Ordem!=""){$SQL.=" ORDER BY ".$Ordem;}
			$Consulta=SQL_Consulta($SQL);
			if(count($Consulta)>=1){$Campos=mysql_num_fields($Consulta);}
			else{$Campos=0;}
			$Matriz=SQL_Matriz($Consulta);
			if(count($Matriz)==1){
				if($CamposDeRetorno!="*"){$ValorDoCampo=$Matriz[0];}
				else{$ValorDoCampo=$Matriz;}
				return $ValorDoCampo;
			}elseif(count($Matriz)>1){
				return $Matriz;
			}
		}
	}
#-----------------------------------------------------------------------------------------------------------------------
	function Listar_BancoDeDadosAtual(){
		$Comando='SELECT DATABASE();';
		$BancoDeDadosAtual=SQL_Matriz(SQL_Consulta($Comando));
		return $BancoDeDadosAtual[0][0];
	}
#-----------------------------------------------------------------------------------------------------------------------
	function Listar_Tabelas($FiltroDeTabela=""){
		if($FiltroDeTabela==""){
			$Comando='SHOW TABLES;';
		}else{
			$Comando="SHOW TABLES LIKE '%$FiltroDeTabela%';";
		}
		$MatrizDeTabelas=SQL_Matriz(SQL_Consulta($Comando));
		for($T=0;$T<count($MatrizDeTabelas);$T++){
			$Tabela=$MatrizDeTabelas[$T][0];
			$Tabelas[]=$Tabela;
		}
		return $Tabelas;
	}
#-----------------------------------------------------------------------------------------------------------------------
	function Comando_Criar_Tabela($Tabela=""){
		if($Tabela!=""){
			$Comando="SHOW CREATE TABLE $Tabela;";
			$CCT=SQL_Matriz(SQL_Consulta($Comando));
			Return $CCT[0][1];
		}
	}
#-----------------------------------------------------------------------------------------------------------------------
	function Listar_Campos($Tabela=""){
		if($Tabela!=""){
			$Comando="SHOW FIELDS FROM $Tabela;";
			$LC=SQL_Matriz(SQL_Consulta($Comando));
			for($C=0;$C<count($LC);$C++){
				$Campos[]=$LC[$C][0];
			}
			Return $Campos;
		}
	}
#-----------------------------------------------------------------------------------------------------------------------
	function Extrair($IndicandoBD="1",$TabelasSelecionadas="",$SeApagaEstrutura="1",$SeCriaEstrutura="1",$SeApagaRegistros="0",$SeInsereRegistros="1"){
		$ResultadoFinal="";
		$BancoAtual=Listar_BancoDeDadosAtual();
		if($IndicandoBD==1){
			$ResultadoFinal.="USE $BancoAtual;\r\n\r\n";
			$ResultadoFinal.="# ------------------------------------------------------------------------------------------------------;\r\n\r\n";
		}
		$Tabelas=Listar_Tabelas();
		for($T=0;$T<count($Tabelas);$T++){
			$Tabela=$Tabelas[$T];
			$Onde=strpos("\r\n".$TabelasSelecionadas,$Tabela,0);
			//echo "Onde='$Onde';\n<br/>";
			if($TabelasSelecionadas=="*" or $Onde!="" or $TabelasSelecionadas=="TUDO"){
				if($SeApagaEstrutura=="1"){$ResultadoFinal.="DROP TABLE IF EXISTS $Tabela;\r\n";}
				if($SeCriaEstrutura=="1"){
						$ComandoCriar=Comando_Criar_Tabela($Tabela);
						$ResultadoFinal.=$ComandoCriar.";\r\n\r\n";
					}
				if($SeApagaRegistros=="1"){$ResultadoFinal.="TRUNCATE TABLE ".$Tabela.";\r\n";}
				if($SeInsereRegistros=="1"){
					$Campos=Listar_Campos($Tabela);
					$ListaDeCampos=implode(", ",$Campos);
					$Registros=ConteudoDeMatriz($Tabela);
					for($R=0;$R<count($Registros);$R++){
						$Registro=$Registros[$R];
						for($C=0;$C<count($Registro);$C++){
							$Registro[$C]=str_replace("\r\n",'\r\n',$Registro[$C]);
							$Registro[$C]=str_replace("'","\\'",$Registro[$C]);
							//$Registro[$C]=str_replace(";","\;",$Registro[$C]);
							//ECHO $Registro[$C]."\n";
						}
						//break(2);
						$ListaDeRegistro=implode("', '",$Registro);
						$ResultadoFinal.="INSERT INTO $Tabela ($ListaDeCampos) VALUES ('$ListaDeRegistro');\r\n";
					}
				}
				$ResultadoFinal.="\r\n# ------------------------------------------------------------------------------------------------------;\r\n\r\n";
			}
		}
		return $ResultadoFinal;
	}
#-----------------------------------------------------------------------------------------------------------------------
	function LerAplicativo($Aplicativo=""){
		/*-------------- FILTRA COMENT�RIOS ----------------*/
		do {
			$Inicio=strpos($Aplicativo,"#");
			if($Inicio!=""){
				$Fim=strpos($Aplicativo,"\r\n",$Inicio);
				if($Fim!=""){
					$Linha=substr($Aplicativo, $Inicio, (($Fim - $Inicio)-1));
					if($Linha!=""){$Aplicativo=str_replace($Linha,"\r\n",$Aplicativo);}
				}
			}
		} while ($Inicio!="");
		do{
			$Inicio=strpos($Aplicativo,"//");
			if($Inicio!=""){
				$Fim=strpos($Aplicativo,"\r\n",$Inicio);
				if($Fim!=""){
					$Linha=substr($Aplicativo, $Inicio, (($Fim - $Inicio)-1));
					if($Linha!=""){$Aplicativo=str_replace($Linha,"\r\n",$Aplicativo);}
				}
			}
		}while($Inicio!="");
		do {
			$Inicio=strpos($Aplicativo,"/*");
			if($Inicio!=""){
				$Fim=strpos($Aplicativo,"*/",$Inicio);
				if($Fim!=""){
					$Linha=substr($Aplicativo, $Inicio, (($Fim - $Inicio)-1));
					if($Linha!=""){$Aplicativo=str_replace($Linha,"",$Aplicativo);}
				}
			}
		} while ($Inicio!="");
		/*--------------------------------------------------*/
		if($Aplicativo!=""){
			$Comandos=explode(";\r\n",$Aplicativo);
			$Aviso="";
			for($C=0;$C<count($Comandos);$C++){
				IF(trim($Comandos[$C])!=""){
					//$Comandos[$C]=str_replace("\r\n","",$Comandos[$C]);
					$com = new DataBase;
					if(isset($com) && $com!=""){
						$Consulta=mysql_query($Comandos[$C]);
						if (!$Consulta) {
							$Aviso.=htmlentities(trim($Comandos[$C])).";\r\n";
							$Aviso.="#ERRO na linha".($C+1).": ".mysql_error().";\r\n";
						}else{
							$Aviso.=htmlentities(trim($Comandos[$C])).";\r\n";
						}
					}
				}
			}
			if($Aviso!=""){return $Aviso;}
		}
	}
#-----------------------------------------------------------------------------------------------------------------------
	function Listar_Tamanho($FiltroDeTabela="",$Campo="",$Valor=""){
		if($Campo=="" and $Valor==""){
			if($FiltroDeTabela==""){
				$Comando='SHOW TABLE STATUS;';
			}else{
				$Comando="SHOW TABLE STATUS LIKE '%$FiltroDeTabela%';";
			}
			$MatrizDeTabelas=SQL_Matriz(SQL_Consulta($Comando));
			$Tamanho=0;
			for($T=0;$T<count($MatrizDeTabelas);$T++){$Tamanho+=$MatrizDeTabelas[$T][6];/*6=Data_length/**/}
			return $Tamanho;
		}elseif($Campo!="" and $Valor!=""){
			$Caracteres=0;
			$Tabelas=Listar_Tabelas($FiltroDeTabela);
			//$Tabelas=Listar_Tabelas("conserte_");
			for($T=0;$T<count($Tabelas);$T++){
				$Comando="SELECT * FROM ".$Tabelas[$T]." WHERE $Campo='$Valor'";
				$MatrizDeTabelas=SQL_Matriz(SQL_Consulta($Comando));
				for($R=0;$R<count($MatrizDeTabelas);$R++){
					$Registro=$MatrizDeTabelas[$R];
					for($C=0;$C<count($Registro);$C++){
						$Caracteres+=strlen($Registro[$C]);
					}
				}
			}
			//echo "Caracteres=".$Caracteres."<br/>\n";
			return $Caracteres;
		}
	}
?>

