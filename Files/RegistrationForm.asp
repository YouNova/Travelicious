<!DOCTYPE html>
<html>
<head>
	<title>Register Your Tour</title> 
	<link rel="stylesheet" type="text/css" href="StyleMain.css">
</head>
<body class="bodyForm">
	<div class="wrap">
		<form action="Billing.asp" method="post">
			<h2>Personal Details</h2>
			Name : <input class="input_box" type="text" name="username" required>
			Phone Number:<input class="input_box" type="number" name="phone" required><br>
			Do all members have an Aadhar Card:<input class="radio_btn" type="radio" name="Aadhar_Validate" value="yes" required>Yes
			<input type="radio" name="Aadhar_Validate" value="no" class="radio_btn" required>No<br><br>
			Do all members have Passport:<input class="radio_btn" type="radio" name="Passport_Validate" value="yes" required>Yes
			<input type="radio" name="Passport_Validate" value="no" class="radio_btn" required>No<br><br>
			Residential Address : <input class="input_box" type="text" name="Address" required>
			<h2>Tour Details</h2>
			Number of Adults:<input class="input_box" type="number" name="Num_Adult" required> 
			Number of Children:<input class="input_box" type="number" name="Num_Child" required>
			Enter the Aadhar Number of every member separated by "-":<input class="input_box" type="text" name="Aadhar_details" required><br><br>
			Enter the place:
			<select name="place" required>
				<option value="">--select--</option>
				<option value="Rome">Rome</option>
				<option value="London">London</option>
				<option value="Prague_Budapest">Prague and Budapest</option>			
			</select><br><br>
			<input type="checkbox" name="t&c" required>I, by filling this form, agree to all terms and condition of this website<br> <br>
			<button class="personal" style="background-color: #17598d;">Submit</button>
		</form>
</body>
</html>