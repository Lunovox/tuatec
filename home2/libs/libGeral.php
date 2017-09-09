<?php
	ini_set('display_errors', 'On'); 
	ini_set('error_reporting', 'E_ALL | E_STRICT'); 
	error_reporting(E_ERROR | E_STRICT | E_WARNING | E_PARSE);

	session_start("tuatec-home");
	//ini_set('default_charset',"ISO-8859-15");
	ini_set('default_charset',"UTF-8");
	header("content-type: text/html");
	date_default_timezone_set("America/Recife"); //-0300

	//ini_set('log_errors', false); 
	//ini_set('error_log', 'php_debug.txt'); 

	require_once "libMySQL.php";
	require_once "libConversao.php";

	function Propriedade($NomeDaPropriedade=NULL){
		if(isset($NomeDaPropriedade) && $NomeDaPropriedade!=""){
			if(isset($_POST[$NomeDaPropriedade]) && $_POST[$NomeDaPropriedade]!=""){
				$Conteudo=$_POST[$NomeDaPropriedade];
			}elseif(isset($_GET[$NomeDaPropriedade]) && $_GET[$NomeDaPropriedade]!=""){
				$Conteudo=$_GET[$NomeDaPropriedade];
			}
			if(isset($Conteudo)){return $Conteudo;}
		}
	}
	function setLogin($Email="", $Senha=""){
		if($Email!="" && $Senha!=""){
			$Users=ConteudoDeTabela("opentube_users", "Email='$Email' AND Senha=PASSWORD('$Senha')");
			//print_r($Users);
			if(count($Users)>=1){
				$_SESSION["log-email"] = $Email;
				$_SESSION["log-type"] = $Users[0]['NivelDeAcesso'];
				$_SESSION["log-pass"] = md5($Senha);
				$_SESSION["log-auth"] = md5("auth:".$_SESSION["log-email"].$_SESSION["log-pass"].$_SESSION["log-type"].date("yyyy-mm-dd"));

				$Comando="
				UPDATE opentube_users SET
				LastLogin = NOW()
				WHERE Email='$Email'";
				@SQL_Consulta($Comando);
				return true;
			}
		}
		/**/
		return false;
	}
	function setLogout(){
		unset($_SESSION["log-email"]);
		unset($_SESSION["log-type"]);
		unset($_SESSION["log-pass"]);
		unset($_SESSION["log-auth"]);
	}
	function isLoged(){
		return (
			isset($_SESSION["log-email"]) && isset($_SESSION["log-type"]) && isset($_SESSION["log-pass"]) && isset($_SESSION["log-auth"]) &&  
			$_SESSION["log-auth"]==md5("auth:".$_SESSION["log-email"].$_SESSION["log-pass"].$_SESSION["log-type"].date("yyyy-mm-dd"))
		);
	}
	function getLogedType(){
		if(isLoged()){
			return $_SESSION["log-type"];
		}
		return "none";
	}
	function getLogedEmail(){
		if(isLoged()){
			return $_SESSION["log-email"];
		}
		return "";
	}
	function isLogedOwner(){
		return getLogedType()=="owner";
	}
	function isLogedUser(){
		return getLogedType()=="user";
	}
	function isLogedModerator(){
		return getLogedType()=="moderator";
	}
?>
