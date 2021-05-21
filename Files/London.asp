<%@language=Vbscript%>
<%
	response.cookies("countLondon").Expires = date + 30
	numLondon = request.cookies("countLondon")
	if numLondon = "" then
		response.cookies("countLondon") = 1
		numLondon = request.cookies("countLondon")
	else
		response.cookies("countLondon") = numLondon + 1
		numLondon = request.cookies("countLondon")
	end if
%>
<html>
<head>
	<title>Welcome to London</title>
	<link rel="stylesheet" type="text/css" href="StyleMain.css"></link>
</head>
<body style="background-image: url(bg.jpg); background-size: cover; background-repeat: no-repeat;">
	<div class="menuLogo">
		<img src="Logo.png">
		<%
			if session("username") = "present" or not request.cookies("username") = "" then
				response.write("<a href='LogOut.asp'><h3 class='Logintext'>Logout</h3></a>")
				response.write("<a href='Registrationform.asp'><h3 class='Registerform'>Register 	Tour</h3> </a>")
			else
				response.write("<a href='LoginDisplay.html'><h3 class='Logintext'>Login</h3></a>")
				response.write("<a href='LoginDisplay.html'><h3 class='Registerform'>Register Tour</h3> </a>")
			end if
		%>
		<a href='AboutUs.html'><h3 class='Logintext'>About Us</h3></a>
	</div>
	<p class="Title"><b>London</b></p>
	<div class="timeline">
	<ul>
		<li>
			<div class="Day">
				<h3>Welcome to london</h3>
				<p>We'll meet at our hotel in central London at 3 p.m. this afternoon to get acquainted. Then we'll set off on a neighborhood walk, before stepping aboard our very own vintage double-decker bus for a panoramic tour of "The Old Smoke" (London). We'll finish the evening with a "Welcome to London" dinner together. Sleep in London (6 nights).<br> Walking: moderate.</p>
			</div>
			<div class="time">
				<h5>Day 1</h5>
			</div>
		</li>
		<li>
			<div class="Day">
				<h3>Westminster and Whitehall</h3>
				<p>After an Underground/Tube orientation, we'll wander through the City of Westminster. Our walk will take us past Buckingham Palace - punctuated by the smartly dressed, stony-faced Queen's Guard - and through St. James Park, a favorite for its resident pelicans, on our way to the majestic Westminster Abbey.  After lunch, we'll visit the Churchill War Rooms, where we'll get the inside story on the London Blitz and Britain's leadership during World War II.<br>Walking: strenuous.</p>
			</div>
			<div class="time">
				<h5>Day 2</h5>
			</div>
		</li>
		<li>
			<div class="Day">
				<h3>The Tower and The City</h3>
				<p>This morning we'll head out early to witness the opening ceremony at the medieval Tower of London. Our early arrival will leave us first in line to join a Yeoman Warder "Beefeater" for an entertaining tour and a close-up look at the UK's magnificent collection of Crown Jewels. This afternoon, we'll take a walking tour of The City, the oldest part of London and today one of the world's key financial centers.This evening is free and perfect for the theater (book a popular show in advance online or pick up a ticket in London).<br>Walking: strenuous.</p>
			</div>
			<div class="time">
				<h5>Day 3</h5>
			</div>
		</li>
		<li>
			<div class="Day">
				<h3>Historic Windsor Castle</h3>
				<p>Today we'll catch a train and head out of town to Windsor Castle, the largest and oldest castle residence in the world. We'll spend the morning touring the Royal Family's castle, ornate St. George's Chapel, and the surrounding park.  Tonight, join your guide and fellow tour members for a pint at a local pub and share the stories of your day's experience.<br>Train: 2 hours. Walking: moderate.</p>
			</div>
			<div class="time">
				<h5>Day 4</h5>
			</div>
		</li>
		<li>
			<div class="Day">
				<h3>East London and St. Paul's</h3>
				<p>The tour will guide us through the history of the East End, tasting the influence of cultures along the way - from a traditional English bacon butty, to Indian curries to the beloved London takeaway, fish and chips. Once we have had our fill, we'll continue on to England's national church - Christopher Wren's majestically domed St. Paul's Cathedral - and hear how local "fire watcher" volunteers saved this symbol of British resolve during the bombing raids of World War II.<br>Walking: strenuous</p>
			</div>
			<div class="time">
				<h5>Day 5</h5>
			</div>
		</li>
		<li>
			<div class="Day">
				<h3>Borough Market and the South Bank</h3>
				<p>We'll begin our morning with a tour of Shakespeare's Globe Theatre, the alf-timbered and thatched-roofed replica of the original theater that was home to the playwright's productions in the late 1500s. Then we'll take a walking tour along the South Bank of the Thames. We'll see the Tower Bridge and Southwark Cathedral, and learn how this side of the river has evolved since Roman times. We'll end our tour at Borough Market, one of the oldest and largest food markets in London.<br>Walking: moderate.</p>
			</div>
			<div class="time">
				<h5>Day 6</h5>
			</div>
		</li>
		<div style="clear: both;"></div>
	</ul>
	</div><br><br>
	<p class="TitleGallery">Gallery</p>
	<div class="container">
		<div class="box">
			<div class="imgBox">
				<img src="London_inner_1.jpg">
			</div>
			<div class="details">
				<div class="content">
					<h2>Buckingham Palace</h2>
					<p>Buckingham Palace is the London residence and administrative headquarters of the monarchy of the United Kingdom. Located in the City of Westminster, the palace is often at the centre of state occasions and royal hospitality.</p>
				</div>
			</div>
		</div>
		<div class="box">
			<div class="imgBox">
				<img src="London_inner_2.jpg">
			</div>
			<div class="details">
				<div class="content">
					<h2>London Eye</h2>
					<p>The London Eye, or the Millennium Wheel, is a cantilevered observation wheel on the South Bank of the River Thames in London. It is Europe's tallest cantilevered observation wheel.</p>
				</div>
			</div>
		</div>
		<div class="box">
			<div class="imgBox">
				<img src="London_inner_3.jpg">
			</div>
			<div class="details">
				<div class="content">
					<h2>St Paul's Cathedral</h2>
					<p>St Paul's Cathedral is an Anglican cathedral in London, United Kingdom, which, as the cathedra of the Bishop of London, serves as the mother church of the Diocese of London.</p>
				</div>
			</div>
		</div>
		<div class="box">
			<div class="imgBox">
				<img src="London_inner_4.jpg">
			</div>
			<div class="details">
				<div class="content">
					<h2> Tower of London</h2>
					<p>The Tower of London, officially Her Majesty's Royal Palace and Fortress of the Tower of London, is a historic castle located on the north bank of the River Thames in central London.</p>
				</div>
			</div>
		</div>
		<div class="box">
			<div class="imgBox">
				<img src="London_inner_5.jpg">
			</div>
			<div class="details">
				<div class="content">
					<h2>Big Ben</h2>
					<p>Big Ben is the nickname for the Great Bell of the striking clock at the north end of the Palace of Westminster in London and is usually extended to refer to both the clock and the clock tower.</p>
				</div>
			</div>
		</div>
		<div class="box">
			<div class="imgBox">
				<img src="London_inner_6.jpg">
			</div>
			<div class="details">
				<div class="content">
					<h2>The National Gallery</h2>
					<p>The National Gallery is an art museum in Trafalgar Square in the City of Westminster, in Central London. Founded in 1824, it houses a collection of over 2,300 paintings dating from the mid-13th century to 1900.</p>
				</div>
			</div>
		</div>
	</div>
</body>
</html>