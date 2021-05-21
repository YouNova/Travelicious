<%@ language=vbscript%>
<%
		Dim con,rs,u,p,sql
		set con=Server.CreateObject("ADODB.Connection")
		con.Provider="Microsoft.Jet.OLEDB.4.0"
		con.Open"C:/inetpub/wwwroot/Code/TraveliciousDatabase.mdb"
		set rs=Server.CreateObject("ADODB.Recordset")
		u=Request.form("username")
		p=Request.form("password")
		sql="select Username,Password from Login where Username='"&u&"' AND Password='"&p&"'"
		rs.Open sql,con
		if rs.EOF=True then
			Response.Redirect "logininvalid.html"	
		else
			Session("username") = "present"
			Response.cookies("username") = u
			Response.cookies("username").Expires = Date + 365
			response.Redirect("Main.asp")
		end if
		rs.close
		con.close
%>
