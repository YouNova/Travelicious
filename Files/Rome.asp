<%@language=Vbscript%>
<%
	response.cookies("countRome").Expires = date + 30
	numRome = request.cookies("countRome")
	if numRome = "" then
		response.cookies("countRome") = 1
		numRome = request.cookies("countRome")
	else
		response.cookies("countRome") = numRome + 1
		numRome = request.cookies("countRome")
	end if
%>
<html>
<head>
	<title>Welcom to Rome</title>
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
	<p class="Title"><b>Rome</b></p>
	<div class="timeline">
	<ul>
		<li>
			<div class="Day">
				<h3> Welcome to Rome </h3>
				<p>After an orientation walk through our neighborhood, we'll get introduced to Rome's efficient metro system and then enjoy an "Am-I-really-here?" dolce vita stroll through the heart of Rome, soaking up the city's evening ambience at the classy Piazza Navona and the remarkably preserved, 2,000-year-old Pantheon. Our day will end with a chance to get acquainted during a "Welcome to Rome" dinner together.<br>Moderate walking: 2 to 6 miles throughout the day with some hills and stairs. No bus. Sleep in Rome.</p>
			</div>
			<div class="time">
				<h5>Day 1</h5>
			</div>
		</li>
		<li>
			<div class="Day">
				<h3>Ancient Rome</h3>
				<p >We'll arrive at multilayered San Clemente - a 12th-century church sitting atop a fourth-century basilica and a previous Roman temple. Then we'll tour and hear vivid tales of the larger-than-life Colosseum. You'll have the rest of the afternoon and evening free to wander through the nearby Palatine ruins, see Michelangelo's Moses at St. Peter-in-Chains Church or climb to the top of the Victor Emmanuel Monument to enjoy the city view (don't forget to savor a foamy cappuccino in between).<br>Strenuous walking: 2 to 8 miles throughout the day with lots of hills, stairs, and uneven terrain. No bus. Sleep in Rome.</p>
			</div>
			<div class="time">
				<h5>Day 2</h5>
			</div>
		</li>
		<li>
			<div class="Day">
				<h3>Neighborhood Rome</h3>
				<p>This morning we'll take a more intimate look at Rome, with a Vespa-dodging walking tour through our guide's favorite neighborhood. Then we'll eat our way through Rome's Trastevere neighborhood, learning about the tradition of Italian cuisine from the generations of families producing these tasty Roman specialties. Treats will include (but are not limited to) porchetta, pizza, and parmigiano. Afterward you have a free evening to make your own neighborhood discoveries.<br>Moderate walking: 2 to 6 miles throughout the day with some hills and stairs. No bus. Sleep in Rome.</p>
			</div>
			<div class="time">
				<h5>Day 3</h5>
			</div>
		</li>
		<li>
			<div class="Day">
				<h3>St. Peter's and the Vatican Museums</h3>
				<p >Today we'll focus on Renaissance Rome. We'll meet our local expert on the other side of the Tiber River and take a guided tour of the sprawling Vatican Museums, where we'll see an endless collection of treasures as we make our way to one of the world's most famous works of art: Michelangelo's Sistine Chapel. We'll continue on to the awe-inspiring St. Peter's Basilica, the greatest church in Christendom. The rest of your day is free to wander through this immense church and explore more of the Eternal City on your own.<br>Strenuous walking: 2 to 8 miles throughout the day with lots of hills, stairs, and uneven terrain. No bus. Sleep in Rome.</p>
			</div>
			<div class="time">
				<h5>Day 4</h5>
			</div>
		</li>
		<li>
			<div class="Day">
				<h3> Day Trip to Ostia Antica</h3>
				<p>Today we'll venture outside the city, touring the ruins of Rome's first colony, Ostia Antica, the ancient seaport which connected Rome to its ever-expanding Mediterranean empire.As we head back to Rome, we'll take a panoramic bus tour as we continue to peel away the jumbled layers of this fascinating city, learning about Rome as Italy's political capital, the capital of Catholicism, and the center of the ancient world.<br>Moderate walking: 2 to 6 miles throughout the day with some hills and stairs. Bus: 3 hours.. Sleep in Rome.</p>
			</div>
			<div class="time">
				<h5>Day 5</h5>
			</div>
		</li>
		<li>
			<div class="Day">
				<h3>Rome's Baroque Treasures</h3>
				<p>We'll begin with a guided tour of sheer beauty in the Borghese Gallery. Bernini's most graceful and lifelike sculptures reside here : his athletic David and delicate Apollo and Daphne - as well as masterpieces by Canova, Caravaggio, Titian, and Raphael. Your afternoon is free to relax in the surrounding park, ramble through more of Rome, or do some last-minute shopping.</p>
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
				<img src="Rome_inner_1.png" >
			</div>
			<div class="details">
				<div class="content">
					<h2>Pantheon</h2>
					<p>The Pantheon is a former Roman temple, now a Catholic church, in Rome, Italy, on the site of an earlier temple commissioned by Marcus Agrippa during the reign of Augustus.</p>
				</div>
			</div>
		</div>
		<div class="box">
			<div class="imgBox">
				<img src="Rome_inner_2.jpg">
			</div>
			<div class="details">
				<div class="content">
					<h2>Piazza del Popolo</h2>
					<p>Piazza del Popolo is a large urban square in Rome. The name in modern Italian literally means "People's Square", but historically it derives from the poplars after which the church of Santa Maria del Popolo, in the northeast corner of the piazza, takes its name.</p>
				</div>
			</div>
		</div>
		<div class="box">
			<div class="imgBox">
				<img src="Rome_inner_3.jpg">
			</div>
			<div class="details">
				<div class="content">
					<h2>Vatican Museums</h2>
					<p>The Vatican Museums are the public art and sculpture museums in the Vatican City. They display works from the immense collection amassed by the Roman Catholic Church </p>
				</div>
			</div>
		</div>
		<div class="box">
			<div class="imgBox">
				<img src="Rome_inner_4.jpg">
			</div>
			<div class="details">
				<div class="content">
					<h2>Roman Forum</h2>
					<p>The Roman Forum, also known by its Latin name Forum Romanum, is a rectangular forum surrounded by the ruins of several important ancient government buildings at the center of the city of Rome.</p>
				</div>
			</div>
		</div>
		<div class="box">
			<div class="imgBox">
				<img src="Rome_inner_5.jpg">
			</div>
			<div class="details">
				<div class="content">
					<h2>Colosseum</h2>
					<p>The Colosseum or Coliseum, also known as the Flavian Amphitheatre, is an oval amphitheatre in the centre of the city of Rome, Italy. </p>
				</div>
			</div>
		</div>
		<div class="box">
			<div class="imgBox">
				<img src="Rome_inner_6.jpg">
			</div>
			<div class="details">
				<div class="content">
					<h2> Quirinal Palace</h2>
					<p>The Quirinal Palace is a historic building in Rome, Italy, one of the three current official residences of the President of the Italian Republic, together with Villa Rosebery in Naples and Tenuta di Castelporziano in Rome.
					</p>
				</div>
			</div>
		</div>
	</div>
</body>
</html>