function getUrlVars() {
    var vars = {};
    var parts = window.location.href.replace(/[?&]+([^=&]+)=([^&]*)/gi, function(m,key,value) {
        vars[key] = value;
    });
    return vars;
}
function getUrlVar($var) {
	return getUrlVars()[$var];
}


function include($jsFilePath, $objID) {
	var xmlhttp = new XMLHttpRequest();
	xmlhttp.onreadystatechange = function(){
		if(xmlhttp.status == 200 && xmlhttp.readyState == 4){
			var $conteudo = xmlhttp.responseText;
			document.getElementById($objID).innerHTML = $conteudo;
			//document.getElementById($objID).innerHTML = "aaaaaaaaaaa";
			//alert($conteudo);
		}
	};
	xmlhttp.open("GET",$jsFilePath,true);
	xmlhttp.send();
}

function include2($jsFilePath, $objID) {
	var js = document.createElement("script");

	js.type = "text/javascript";
	js.src = $jsFilePath;

	//document.body.appendChild(js);
	var $obj = document.getElementById($objID);
	$obj.appendChild(js);
}
