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
		id="txtNome" name="Nome" type=text equired="true"
		value="<?=Propriedade('Nome');?>"
	/><br/><br/>

	<b>Seu E-mail:</b> <br/>
	<script SRC="subs/contato.js"></script>
	<input
		id="txtRemetente" name="Remetente" type="email" required="true"
		value="<?=Propriedade('Remetente');?>"
	/><br/><br/>

	<b>Mensagem:</b> <br/>
	<TEXTAREA id="txtMensagem" name="Mensagem" required="true" rows="4"
	><?=Propriedade("Mensagem");/**/ ?></TEXTAREA><br/><br/>

	<center>
		<button id="btnEnviar" onclick="return onSendMail();">Enviar</button>
	</center>

</form>
<br/><br/><br/><br/><br/>
