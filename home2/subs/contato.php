<form method="post" action="?sub=contato-sendmail">
	<input type="hidden" name="Formulario" value="<?=Propriedade('sub');?>">
	<input type="hidden" name="Destinatario" value="lunovox@disroot.org">
	<input type="hidden" name="Assunto" value="SAC TUATEC">

	<div>
		<p align="justify">
			<? if(Propriedade('Aviso')==""){ ?>
			O atendimento é de segunda-feira a sexta-feira das 08h:00 as 13h:00 por áudio através do software 
			<a href="?sub=mumble">Mumble</a>. Ou pelo formulário abaixo que enviará sua mesagem para o e-mail 
			<a href="mailto:lunovox@disroot.org">lunovox@disroot.org</a>.<br/>
			<? }else{ echo Propriedade('Aviso'); }?>
		</p>
	</div><br/>

	<b>Seu Nome:</b><br/>
	<input
		id="txtNome" name="Nome" type=text
		style="width:300px" required="true"
		value="<?=Propriedade('Nome');?>"
	/><br/><br/>

	<b>Seu E-mail:</b> <br/>
	<SCRIPT SRC="subs/contato.js"></SCRIPT>
	<input
		id="txtRemetente" name="Remetente" type="email"
		style="width:300px" required="true"
		value="<?=Propriedade('Remetente');?>"
	/><br/><br/>

	<b>Mensagem:</b> <br/>
	<TEXTAREA id="txtMensagem" name="Mensagem" required="true"
		style="width:98%; height:135px; color:#000000; font-size:14px; font-family:arial;"
	><?=Propriedade("Mensagem");/**/ ?></TEXTAREA><br/><br/>

	<center>
		<button id="btnEnviar" onclick="return onSendMail();">Enviar</button>
	</center>

</form>
