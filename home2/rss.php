<?xml version="1.0" encoding="UTF-8" ?>
<rss version="2.0"
	xmlns:content="http://purl.org/rss/1.0/modules/content/"
	xmlns:wfw="http://wellformedweb.org/CommentAPI/"
	xmlns:dc="http://purl.org/dc/elements/1.1/"
	xmlns:atom="http://www.w3.org/2005/Atom"
	xmlns:sy="http://purl.org/rss/1.0/modules/syndication/"
	xmlns:slash="http://purl.org/rss/1.0/modules/slash/"
	xmlns:itunes="http://www.itunes.com/dtds/podcast-1.0.dtd"
	xmlns:media="http://search.yahoo.com/mrss/"
>
<?php 
	require_once "libs/libGeral.php"; 
	$charset=Propriedade('charset')!=""?Propriedade('charset'):"UTF-8";
	ini_set('default_charset',$charset);
	header("content-type: text/rss+xml");
	//header("content-type: text/rss+xml; charset=".$charset);
	date_default_timezone_set("America/Recife"); //-0300
	
	$base='http://'.$_SERVER['HTTP_HOST'].$_SERVER['SCRIPT_NAME'];
	$base=str_replace("rss.php", "", $base);
	
	$Configs=ConteudoDeTabela("opentube_config");
	if(count($Configs)==1){
		$Config= $Configs[0];
	}
	
	$order = Propriedade("order");
	if($order=="mostviews"){
		$Videos=ConteudoDeTabela("opentube_videos", null ,  "views DESC", null, 0, 29);
		$Order = "MAIS VISTOS";
	}else{
		$Videos=ConteudoDeTabela("opentube_videos", null ,  "timeUpdate DESC", null, 0, 29);
		$Order = "RECENTES";
	}

?>
	<channel>
		<title><![CDATA[<?php 
			echo $Config['ChannelName']!=""?$Config['ChannelName']." ($Order) - ":"($Order) - ";
		?>OPENTUBE]]></title>
		<description><![CDATA[A sua TV Open Source]]></description>
		<link><?=$base;?></link>
		<pubDate><?=date("r");?></pubDate>
		<author>Lunovox Heavenfinder</author>
		<icon><?=$Config['urlBanner']!=''?$Config['urlBanner']:$base.'imgs/bicons/sbl_opentube.png';?></icon>
		<image>
			<url><?=$Config['urlBanner']!=''?$Config['urlBanner']:$base.'imgs/banners/banner_opentube.png';?></url>
			<title>OPENTUBE <?=$Config['ChannelName']!=""?" - ".$Config['ChannelName']:"";?></title>
			<link><?=$base;?></link>
			<width>490</width>
			<height>150</height>
		</image><?php
		//$Videos=ConteudoDeTabela("opentube_videos", null ,  "timeUpdate DESC", null, 0, 29);
		//print_r($Videos);
		for($V=0; $V<count($Videos); $V++){ ?>
			<item>
				<title><![CDATA[<?=utf8_encode($Videos[$V]['Title']);?>]]></title>
				<link><?=$base.'?video='.$Videos[$V]['ID'];?></link>
				<pubDate><?=date('r',strtotime($Videos[$V]['timeUpdate']));?></pubDate>
				<description><![CDATA[
					<center>
						<a target="_blank" href="<?php 
							if($Videos[$V]['videoTypeLink']=="Redirect"){
								echo $Videos[$V]['urlVideo'];
							}else{
								echo $base.'?video='.$Videos[$V]['ID'];
							}
						?>">
							<img src="<?php echo $Videos[$V]['urlPoster']; ?>" width="600px" />
						</a>
					</center>
					<?php
						$Desc = CodigoParaHTML(Converter_CodigoCaracter(utf8_encode($Videos[$V]['Description'])));
						echo $Desc;
					?>
				]]></description>
				<guid isPermaLink="false"><?=$Videos[$V]['urlVideo'];?></guid>
				<enclosure url="<?=$Videos[$V]['urlVideo'];?>" type="video/ogg"/>
			</item>
		<?php }	?>
	</channel>
</rss>

