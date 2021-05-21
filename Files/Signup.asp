<% @language="vbscript"%>
<%option explicit%>
<%
	dim con,rs,u,p,email,flag
	u=Request.form("username")
	p=Request.form("password")
	email=Request.form("email")
	set con=Server.CreateObject("ADODB.connection")
	con.Provider="Microsoft.Jet.OLEDB.4.0"
	con.open"C:/inetpub/wwwroot/Code/TraveliciousDatabase.mdb"
	set rs=Server.CreateObject("ADODB.RecordSet")
	rs.Open"Login",con,0,3,2
	while not rs.EOF
		if  rs("Username")=u then
			flag=1
			rs.close
			set rs=Nothing
			con.close
			Response.redirect "Signinvalid.html"
		else
			rs.MoveNext
		end if
	Wend
	if flag=0 then
		rs.AddNew
		rs("Email")=email
		rs("Username")=u
		rs("Password")=p
		rs.Update
		rs.close
		set rs=Nothing
		con.close
		set con=Nothing
		response.redirect("LoginDisplay.html")
	end if
%>
