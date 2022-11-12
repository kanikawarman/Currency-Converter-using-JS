/**
 * 
 */


function convertLogic() {
	var amount = document.forms["CC"]["amount"].value;
	var from_curr = document.forms["CC"]["sell"].value;
	var to_curr = document.forms["CC"]["buy"].value;
	

	var xmlhttp = new XMLHttpRequest();
	var URL = "https://api.exchangerate.host/latest?symbols=" + from_curr + "," + to_curr;
	xmlhttp.open("GET", URL, true);
	xmlhttp.send();


	xmlhttp.onreadystatechange = function() {
		
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			
			var result = xmlhttp.responseText;
			//alert(result);
			var jsResult = JSON.parse(result);
			var conversion_factor = jsResult.rates[to_curr] / jsResult.rates[from_curr];
			result = conversion_factor * amount;
			document.getElementById("result").value=result; 
			document.location.href ="resultDisplay.jsp?result="+result;
		}
	}

	
}