<%@language=Vbscript%>
<html>
<head>
	<title>Your Bill</title>
	<style type="text/css">
		table{
			font-size: 15px; 
			height:130px;
		}

		td{
			width:220px;
		}
	</style>
	<link rel="stylesheet" type="text/css" href="StyleMain.css"></link>
</head>
<body bgcolor="#8AB2E0">
	<%
		gotocalculations = true
		costing = 0
		romeVisits = Request.cookies("countRome")
		if romeVisits = "" then
			romeVisits = 0
		end if
		londonVisits = Request.cookies("countLondon")
		if londonVisits = "" then
			londonVisits = 0
		end if
		pragueBudapestVisits = Request.cookies("countPragueBudapest")
		if pragueBudapestVisits = "" then
			pragueBudapestVisits = 0
		end if
		name = Request.form("username")
		phoneNumber = Request.form("phone")
		allMemberHaveAadhar = Request.form("Aadhar_Validate")
		allMemberHavePassport = Request.form("Passport_Validate")
		residentialAddress = Request.form("Address")
		numberOfAdult = Request.form("Num_Adult")
		numberOfChildren = Request.form("Num_Child")
		aadharDetails = Request.form("Aadhar_details")
		place = Request.form("place")
		tandc = Request.form("t&c")
		if name = "" then
			gotocalculations = false
		end if
		if phoneNumber = "" then
			gotocalculations = false
		end if
		if allMemberHaveAadhar = "" then
			gotocalculations = false
		end if
		if allMemberHavePassport = "" then
			gotocalculations = false
		end if
		if residentialAddress = "" then
			gotocalculations = false
		end if
		if numberOfAdult = "" then
			gotocalculations = false
		end if
		if numberOfChildren = "" then
			gotocalculations = false
		end if
		if aadharDetails = "" and allMemberHaveAadhar = "Yes" then
			gotocalculations = false
		end if
		if place = "" then
			gotocalculations = false
		end if
		if tandc = "" then
			gotocalculations = false
		end if
		if gotocalculations then
			if place = "Rome" then
				costing = 125000 * (1 + (romeVisits * 0.05))
				response.cookies("countRome") = 0
			elseif place = "London" then 
				costing = 175000 * (1 + (londonVisits * 0.05))
				response.cookies("countLondon") = 0
			elseif place = "Prague_Budapest" then 
				costing = 175000 * (1 + (pragueBudapestVisits * 0.05))
				response.cookies("countPragueBudapest") = 0	
			end if
			numberOfAdult = CInt(numberOfAdult)
			numberOfChildren = CInt(numberOfChildren)
			costing = (costing * numberOfAdult) + (costing * 0.75 * numberOfChildren)
		%>
		<div class="menuLogo">
		<img src="Logo.png">
		</div>
		<div class="Bill">
			<center>
			<img src="Logo.png"><br>
			<h5> 78-79, Bajaj Bhavan, Nariman Point, Mumbai - 400021</h5>
			<h5> Contact Number: 02222023225 &nbsp; &nbsp; Email : travelwithus@travelicious.com</h5>
			<hr>
			</center>
			<p style="float: left; margin-left: 25px;"><b>Name:</b><%=name%></p>
			<p style="float: right; margin-right: 25px;"><b>Phone Number:</b><%=phoneNumber%></p><br>
			<br><br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Residential Address:</b><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=residentialAddress%>
			<br><br>
			<form action="Main.asp">
			<center>
				<table border=1>
					<tr>
						<td><b>Adults:</b></td>
						<td><%=numberOfAdult%><br></td>
					</tr>
					<tr>
						<td><b>Children:</b></td>
						<td><%=numberOfChildren%><br></td>
					</tr>
					<tr>
						<td><b>Place:</b></td>
						<td><%=place%><br></td>
					</tr>
					<tr>
						<td><b>Total Cost:</b></td>
						<td> Rs.<%=costing%>/-<br></td>
					</tr>
				</table><br>
				<input type="submit" value="Confirm" style="width:100px; height:40px; color: white; background-color: #17598d; border-radius: 20px;">
				<button onclick="print()" style="width: 100px; height:40px; color: white; background-color: #17598d; border-radius: 20px;">Print</button>
			</center>
			</form>
		</div>
		<%
			set con=Server.CreateObject("ADODB.connection")
			con.Provider="Microsoft.Jet.OLEDB.4.0"
			con.open"C:/inetpub/wwwroot/Code/TraveliciousDatabase.mdb"
			set rs=Server.CreateObject("ADODB.RecordSet")
			rs.Open"TourDetails",con,0,3,2
			rs.AddNew
			rs("NameOfRegisterer") = name
			rs("PhoneNumber") = phoneNumber
			rs("ResidentialAddress") = residentialAddress
			rs("NumberOfAdults") = numberOfAdult
			rs("NumberOfChildren") = numberOfChildren
			rs("AadharDetails") = AadharDetails
			rs("AllMembersHavePassport") = allMemberHavePassport
			rs("Place") = place
			rs.Update
			rs.close
			set rs=Nothing
			con.close
			set con=Nothing
		else
			Response.redirect("Registrationform.asp")
		end if
	%>
	<script type="text/javascript">
		alert("Successfully Registered")
		
		function print() {
			alert("Successfully printed")
		}
	</script>
</body>
</html>
