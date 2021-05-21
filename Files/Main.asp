<!DOCTYPE html>
<html>
<head>
	<title>Travelicious</title>
	<link rel="stylesheet" type="text/css" href="StyleMain.css">
</head>
<body style="background-color: #8ab2e0">
	<div class="menuLogo">
		<img src="Logo.png">
		<%
			if session("username") = "present" or not request.cookies("username") = "" then
				response.write("<a href='LogOut.asp'><h3 class='Logintext'>Logout</h3></a>")
				response.write("<a href='Registrationform.asp'><h3 class='Registerform'>Register Tour</h3> </a>")
			else
				response.write("<a href='LoginDisplay.html'><h3 class='Logintext'>Login</h3></a>")
				response.write("<a href='LoginDisplay.html'><h3 class='Registerform'>Register Tour</h3> </a>")
			end if
		%>
		<a href='AboutUs.html'><h3 class='Logintext'>About Us</h3></a>
	</div>
	<div class="FirstFrame"></div>
	<a href="Rome.asp"><div class="RomeFrame"></div></a>
	<a href="London.asp"><div class="LondonFrame"></div></a>
	<a href="PragueBudapest.asp"><div class="PragueBudapestFrame"></div></a>
</body>
</html>