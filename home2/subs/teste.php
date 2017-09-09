<?php
#---------- teste de login ------------------------------------------------------------
	if(Propriedade("fun")=="login"){
		if(setLogin("lunovox", "14789653")){
			echo "Login executado com sucesso!!!<br>";
		}else{
			echo "Login ou Senha inválidos!!!<br>";
			setLogout();
		}
	}elseif(Propriedade("fun")=="logout"){
		setLogout();
		echo "Logout executado com sucesso!!!<br>";
	}
	if(isLoged()){ 
		echo "vc está logado numa sessão!!!";
	}else{
		echo "vc está <u>não</u> numa sessão logado!!!";
	}
#--------------------------------------------------------------------------------------
?>