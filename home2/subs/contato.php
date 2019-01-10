<form method="post" action="?sub=contato-sendmail">
	<input type="hidden" name="Formulario" value="<?=Propriedade('sub');?>">
	<input type="hidden" name="Destinatario" value="lunovox@disroot.org">
	<input type="hidden" name="Assunto" value="SAC TUATEC">

	<div>
		<p align="justify">
			<? if(Propriedade('Aviso')==""){ ?>
			
			O atendimento é de segunda-feira a sexta-feira das 
			12h:00 as 18h:00 por áudio através do <a href="?sub=tools_webrtc">Web RTC</a>.
			Ou pelo formulário abaixo que enviará sua mesagem para o e-mail 
			<a href="mailto:lunovox@disroot.org">lunovox@disroot.org</a>.
			<br/><br/>
			
			<details>
				<summary style="cursor:pointer; color:blue;"><b>O que é Web RTC ?</b></summary><br/>
				<div>
					<b>Web RTC</b> é uma API em desenvolvimento elaborada pela World Wide Web 
					Consortium (W3C) para permitir aos navegadores executar aplicações de chamada
					telefônica, video chat e compartilhamento P2P sem a necessidade de plugins. 
					<br/>
				</div>
			</details>
			
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
	<br/>
</form>
