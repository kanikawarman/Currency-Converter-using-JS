<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Assignment 7</title>
<link rel="stylesheet" href="ccdisplay.css">
<script type="text/javascript" src="convertlogic.js">
	
</script>
</head>
<jsp:useBean id="ccbean" scope="session" class="websys.ccbean" />
<jsp:setProperty name="ccbean" property="*" />
<body>
	<h1>Currency Converter</h1>
	<form name="resultDisplay" action = "CC.jsp">

		<div>
			<label><b>From Amount: </b></label>
			<jsp:getProperty name="ccbean" property="amount" />
			<br>

		</div>
		<div>

			<label><b>From Currency: </b></label>
			<jsp:getProperty name="ccbean" property="sell" />
			<br>

		</div>
		<div>


			<label><b>To Currency: </b></label>
			<jsp:getProperty name="ccbean" property="buy" />
			<br>
		</div>
		<div id = "one">
			<label><b>Converted Amount:</b></label>
			<br>
			<b>
			<jsp:getProperty name="ccbean" property="result" /> </b>
			<br>

		</div>
		<br>
		<input type="Submit" value="New Conversion" name="resetnew">

	</form>
</body>
</html>