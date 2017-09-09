<center>
	<form action="?sub=log-in" method="POST" enctype="application/x-www-form-urlencoded">
		<table>
			<?php if(Propriedade("Aviso")!=""){ ?>
			<tr>
				<td colspan="2" align="center" bgcolor="#FFFF00" 
					style="border-width:1px; border-style:dashed; border-color:#000000"
				>
					<?=Propriedade("Aviso");?>
				</td>
			</tr>
			<?php } ?>
			<tr>
				<td align="right">E-mail:</td>
				<td><input id="txtLogEmail" name="LogEmail" type="email" required="true" autocomplete="true" value="<?=Propriedade("LogEmail");?>"></td>
			</tr>
			<tr>
				<td align="right">Senha:</td>
				<td><input id="txtLogPass" name="LogPass" type="password" required="true"></td>
			</tr>
			<tr>
				<td align="right" colspan="2">
					<input type="submit" value="Entrar"/>
				</td>
			</tr>
		</table>
	</form>
</center>