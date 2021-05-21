<%@language=Vbscript%>
<%
	response.cookies("countPragueBudapest").Expires = date + 30
	numPragueBudapest = request.cookies("countPragueBudapest")
	if numPragueBudapest = "" then
		response.cookies("countPragueBudapest") = 1
		numPragueBudapest = request.cookies("countPragueBudapest")
	else
		response.cookies("countPragueBudapest") = numPragueBudapest + 1
		numPragueBudapest = request.cookies("countPragueBudapest")
	end if
%>
<html>
<head>
	<title>Welcome to Prague and Budapest</title>
	<link rel="stylesheet" type="text/css" href="StyleMain.css">
</head>
<body style="background-image: url(bg.jpg); background-size: cover; background-repeat: no-repeat;">
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
	<p class="Title"><b>Prague and Budapest</b></p>
	<div class="timeline">
	<ul>
		<li>
			<div class="Day">
				<h3>Welcome to Prague</h3>
				<p>We'll meet in our hotel at 4 p.m. to get acquainted and go over the week's schedule. Then we'll take an orientation walk through our Old Town neighborhood and over the historic Charles Bridge - one of Europe's most entertaining promenades - followed by a hearty dinner together accompanied by the Prague Castle Orchestra.<br>Walking: light.</p>
			</div>
			<div class="time">
				<h5>Day 1</h5>
			</div>
		</li>
		<li>
			<div class="Day">
				<h3>Prague of Kings and Nobles</h3>
				<p>This morning we'll hop on a local tram to take us across the Vltava River and up the hill to the most massive castle complex in continental Europe: Prague Castle. We'll tour the impressive St. Vitus Cathedral, Old Royal Palace, St. George's Basilica (when available), and the Golden Lane. After our visit, you're on your own to wander back down to the Old Town, where you'll be free for the evening.<br>Walking: strenuous.</p>
			</div>
			<div class="time">
				<h5>Day 2</h5>
			</div>
		</li>
		<li>
			<div class="Day">
				<h3>Jewish and Art Nouveau Prague</h3>
				<p>Today we'll take a walking tour through the Josefov neighborhood, once the site of Prague's Jewish Ghetto - and still one of the most evocative Jewish districts in all of Europe. For a thousand years one of the leading centers of Judaism, the neighborhood is studded with thought-provoking museums, fascinating synagogues, and a Kafkaesque, dream-like cemetery. After free time for lunch, we'll take a tour of the classy concert halls and salons of the city's Municipal House (when available), and continue our Art Nouveau education at a museum devoted to the local master: Alfons Mucha (whose stained glass you will have already admired inside St. Vitus Cathedral).<br>Walking:strenuous.</p>
			</div>
			<div class="time">
				<h5>Day 3</h5>
			</div>
		</li>
		<li>
			<div class="Day">
				<h3>Revolutionary Prague</h3>
				<p>We'll start our day with tales of Prague's past struggles with communist occupation, the significance of the Prague Spring and the emergence of Vaclav Havel.We'll then retrace the footsteps of Prague's celebrated Velvet Revolution, following the events of November 17, 1989, through the modern city to Wenceslas Square, where thousands of Czechs held up and rattled their keys, telling their communist leaders, "The time has come for you to go home."<br>Walking:strenuous.</p>
			</div>
			<div class="time">
				<h5>Day 4</h5>
			</div>
		</li>
		<li>
			<div class="Day">
				<h3>On to Budapest</h3>
				<p>This morning we'll board our coach for the drive to Budapest. En route we'll pass through the rolling hills of ancient Moravia and modern Slovakia, catching our first glimpse of the wide, blue Danube as we approach the capital city that straddles both banks of the river. Upon arrival this afternoon, we'll meet with a local guide for a tour of Pest, the larger, more sprawling half of the city. There we'll crane our necks beside Europe's largest, most ornate parliament building to learn how Hungarians coped with half a century of fascist and communist tyranny. And outside St. Istvan's elaborate basilica we'll learn why, once a year, locals parade the saint's millennium-old fist around the city. At the end of our walk, we'll treat ourselves to a Hungarian feast together. Sleep in Budapest (3 nights). Bus: 7 hours.<br>Walking: moderate.</p>
			</div>
			<div class="time">
				<h5>Day 5</h5>
			</div>
		</li>
		<li>
			<div class="Day">
				<h3>Bustling Budapest</h3>
				<p>This morning we'll ride on the oldest metro in continental Europe, on our way to Heroes' Square to see and learn about the bronze-cast, larger-than-life players in Hungary's history. From national story to national cuisine, our next stop introduces us to traditional Hungarian dishes with a cooking class and lunch. This afternoon you're free to sample more of the city, including more delicacies in its Great Market Hall (Nagyvasarcsarnok). Later tonight we'll regroup and relax with a cruise along the Danube. Boat: 1 hour. No bus.<br>Walking: strenuous.</p>
			</div>
			<div class="time">
				<h5>Day 6</h5>
			</div>
		</li>
		<li>
			<div class="Day">
				<h3>Elegance of Empire</h3>
				<p>Our day begins atop Buda's proud Castle Hill with an introduction to Budapest's greatest church: the sumptuously gilded Matthias Church. The nearby Fisherman's Bastions provide a perfect bird's eye view of "twin city" Pest across the river where more discoveries await. This afternoon your guide will be happy to arrange a chance to soak in the ornate public thermal baths (yes, you'll have plenty of time to soak it all in!). Tonight we'll rendezvous for a farewell dinner together, sharing travel memories and toasting new friends.<br>Walking: strenuous.</p>
			</div>
			<div class="time">
				<h5>Day 7</h5>
			</div>
		</li>
		<div style="clear: both;"></div>
	</ul>
	</div><br><br>
	<p class="TitleGallery">Gallery</p>
	<div class="container">
		<div class="box">
			<div class="imgBox">
				<img src="PragueBudapest_inner_1.jpg" >
			</div>
			<div class="details">
				<div class="content">
					<h2>Strahov Monastery</h2>
					<p>Strahov Monastery is a Premonstratensian abbey founded in 1143 by Jindrich Zdik, Bishop John of Prague, and Vladislaus II, Duke of Bohemia. It is located in Strahov, Prague, Czech Republic.</p>
				</div>
			</div>
		</div>
		<div class="box">
			<div class="imgBox">
				<img src="PragueBudapest_inner_2.jpg">
			</div>
			<div class="details">
				<div class="content">
					<h2>Letna Park</h2>
					<p>Letna Park is a large park on Letna hill, built on a plateau above steep embankments along the Vltava River in Prague, Czech Republic. Letna's elevation and location afford commanding views of the Prague Old Town.</p>
				</div>
			</div>
		</div>
		<div class="box">
			<div class="imgBox">
				<img src="PragueBudapest_inner_3.jpg">
			</div>
			<div class="details">
				<div class="content">
					<h2>Prague Zoo</h2>
					<p>Prague Zoological Garden is a zoo in Prague, Czech Republic. It was opened in 1931 with the goal to "advance the study of zoology, protect wildlife, and educate the public" in the district of Troja in the north of Prague.</p>
				</div>
			</div>
		</div>
		<div class="box">
			<div class="imgBox">
				<img src="PragueBudapest_inner_4.jpg">
			</div>
			<div class="details">
				<div class="content">
					<h2>St. Stephen's Basilica</h2>
					<p>St. Stephen's Basilica is a Roman Catholic basilica in Budapest, Hungary. It is named in honour of Stephen, the first King of Hungary, whose right hand is housed in the reliquary.</p>
				</div>
			</div>
		</div>
		<div class="box">
			<div class="imgBox">
				<img src="PragueBudapest_inner_5.jpg">
			</div>
			<div class="details">
				<div class="content">
					<h2>Heroes' Square</h2>
					<p>A large square constructed in 1896 for the millennium of the Magyar Conquest of Hungary.</p>
				</div>
			</div>
		</div>
		<div class="box">
			<div class="imgBox">
				<img src="PragueBudapest_inner_6.jpg">
			</div>
			<div class="details">
				<div class="content">
					<h2>Liberty Bridge</h2>
					<p>This connects Buda and Pest across the River Danube in Hungary. It is the third southernmost public road bridge in Budapest, located at the southern end of the City Centre.</p>
				</div>
			</div>
		</div>
	</div>
</body>
</html>