<div style="background-color:#FFFF00"><?="LogEmail:".Propriedade("LogEmail")." LogPass:".Propriedade("LogPass");?></div>
<script language="JavaScript"><?php
	if(setLogin(Propriedade("LogEmail"), Propriedade("LogPass"))){
		echo "window.location='?sub=vitrine';";
	}else{
		echo "window.location='?sub=log&LogEmail=".Propriedade("LogEmail")."&Aviso=".urlencode("Email ou Senha inválidos!")."';";
		//setLogout();
	}
?></script>
	}
?></script>