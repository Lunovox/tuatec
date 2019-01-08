<script>
    function doStar($object){
        var maqMostruario = document.getElementById('maqMostruario');
        //var $object = document.getElementById($id);
        maqMostruario.start(); 
        $object.style.opacity=0.7;
    }
    function doStop($object){
        var maqMostruario = document.getElementById('maqMostruario');
        //var $object = document.getElementById($id);
        maqMostruario.stop(); 
        $object.style.opacity=1.0;
    }
</script>
<marquee 
	id="maqMostruario" 
	behavior="alternate" 
	scrollamount="5" 
	scrolldelay="1" 
	_direction="right" 
	vspace="0" 
	onload="this.start();"
>
	<div class="divMarquee">
	    <a class="linkMarquee" href="?sub=tools_mumble">
	       <img 
	            class="imgMarquee" onmouseover="doStop(this);" onmouseout="doStar(this);"
        		src="imgs/simbolos/mumble_screenshot.png" 
        		title="TELEFONIA POR INTERNET"
        	/><br/>
        	TELEFONIA POR INTERNET
        </a> 
    </div>
	<div class="divMarquee">
    	<a class="linkMarquee" href="?sub=tools_webcloud">
    	    <img 
        	    class="imgMarquee" onmouseover="doStop(this);" onmouseout="doStar(this);"
        		src="imgs/simbolos/nextcloud_screenshot.png" 
        		title="ARMAZENAMENTO EM NÚVEM"
        	/><br/>
    	    ARMAZENAMENTO EM NÚVEM
        </a> 
    </div>
	<div class="divMarquee">
    	<a class="linkMarquee" href="?sub=hint_embarcado">
            <img 
        	    class="imgMarquee" onmouseover="doStop(this);" onmouseout="doStar(this);"
        		src="imgs/simbolos/raspberry-pi-2-hand-v2-970x647-c.jpg" 
        		title="COMPUTADORES EMBARCADOS"
        	/><br/>
    	    COMPUTADORES EMBARCADOS
        </a>
    </div>
	
	<!--
	<a target="_blank" href="http://libretube.tuatec.com.br"><img 
		src="imgs/modelos/libretube.tuatec.ddns.net.png" 
		style="display:inline; cursor:pointer; cursor:hand; opacity:0.9;"
		onmouseover="document.getElementById('maqMostruario').stop(); this.style.opacity=1.0;"
		onmouseout="document.getElementById('maqMostruario').start(); this.style.opacity=0.8;"
	/></a>

	<a target="_blank" href="../apps/lojista/"><img 
		src="imgs/modelos/lojista.tuatec.com.br.png" 
		style="display:inline; cursor:pointer; cursor:hand; opacity:0.9;"
		onmouseover="document.getElementById('maqMostruario').stop(); this.style.opacity=1.0;"
		onmouseout="document.getElementById('maqMostruario').start(); this.style.opacity=0.8;"
	/></a>
	
	<a target="_blank" href="bitcoin:1M2vqrKkVydN1JXs36ZymukdiyUDqzXFa1?amount=1&label=Doação para Lunovox"><img 
		src="imgs/modelos/lojista.tuatec.com.br.png" 
		style="display:inline; cursor:pointer; cursor:hand; opacity:0.9;"
		onmouseover="document.getElementById('maqMostruario').stop(); this.style.opacity=1.0;"
		onmouseout="document.getElementById('maqMostruario').start(); this.style.opacity=0.8;"
	/></a>
	
	-->

</marquee>
