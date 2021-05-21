<%
	session("username") = ""
	response.cookies("username") = ""
	response.redirect("main.asp")
%>