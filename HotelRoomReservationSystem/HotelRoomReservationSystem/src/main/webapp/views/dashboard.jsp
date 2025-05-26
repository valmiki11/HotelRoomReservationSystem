<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Hotel Reservation</title>
<link rel="icon"
	href="${pageContext.request.contextPath}/images/header/white-logo.png">

<style>
/* Google Fonts */
@import url('https://fonts.googleapis.com/css?family=Oswald:400,700');

@import
	url('https://fonts.googleapis.com/css?family=Montserrat:400,700');

/* Font Awesome */
@import
	url('https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css')
	;

/* General Styles */
body {
	margin: 0;
	padding: 0;
	font-family: 'Montserrat', Arial, sans-serif;
	background-color: #f3f3f3;
	overflow-x: hidden;
}

/* Update or add these styles inside your <style> tag */

/* Header Styles - Updated to complement the image */
header {
	background-color: #8C8273; /* Medium warm greige/brown from Option 1 */
	color: #F8F5F0; /* Off-white from Option 1 */
	padding: 15px 20px;
	display: flex;
	justify-content: space-between;
	align-items: center;
	position: fixed; /* Fixed Position */
	width: 100%;
	top: 0;
	z-index: 1000;
}

.menu li a {
	color: #F8F5F0; /* Off-white for menu items */
	text-decoration: none;
	font-weight: bold;
	transition: color 0.3s ease;
}

.menu li a:hover {
	color: #DCD7D0; /* Slightly darker off-white for hover */
}

/* Optional: Add shadow on scroll */
header.scrolled {
	background-color: #7A7065; /* Slightly darker header on scroll */
	box-shadow: 0 2px 10px rgba(0, 0, 0, 0.3);
}

.logo img {
	height: 50px;
}

.menu {
	list-style: none;
	display: flex;
	gap: 20px;
}

.cover-main {
	height: 100vh;
	background:
		url('../images/premium_photo-1661929519129-7a76946c1d38.avif')
		no-repeat center center/cover;
	display: flex;
	align-items: center;
	justify-content: center;
	color: white;
	text-align: center;
}

.cover-main h1 {
	font-size: 3em;
	margin: 0;
}

.cover-main p {
	font-size: 1.5em;
}

.btn-main a {
	background-color: #A08C78;
	/* A warm, slightly muted gold/bronze for buttons, complementing the palette */
	color: white;
	padding: 10px 20px;
	border-radius: 5px;
	text-decoration: none;
	margin: 10px;
	transition: background-color 0.3s;
}

.btn-main a:hover {
	background-color: #8C7A6A; /* Slightly darker on hover */
}

.section-padding {
	padding: 50px 20px;
	text-align: center;
}

.sub-title {
	font-size: 2em;
	margin-bottom: 20px;
}

.container-rooms, .tm-service-section {
	display: flex;
	flex-wrap: wrap;
	justify-content: center;
	gap: 20px;
}

.card {
	background: white;
	border-radius: 10px;
	box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
	padding: 20px;
	width: 300px;
	text-align: left;
}

.card img {
	width: 100%;
	border-radius: 10px;
}

/* Footer Styles - Updated to complement the image */
footer {
	background-color: #4C4640; /* Dark warm grey/brown from Option 1 */
	color: #E8E5E0; /* Off-white from Option 1 */
	padding: 20px;
	text-align: center;
}

footer a {
	color: #E8E5E0; /* Off-white for footer links */
	text-decoration: none;
}

footer a:hover {
	text-decoration: underline;
}
</style>
</head>

<body>

	<header>
		<div class="logo">
			<a href="${pageContext.request.contextPath}/home"> <img
				src="${pageContext.request.contextPath}/images/logo.avif" alt="Logo">
			</a>
		</div>
		<ul class="menu">
    <li><a href="${pageContext.request.contextPath}/dashboard">Home</a></li>
    <li><a href="${pageContext.request.contextPath}/rooms/r">Rooms</a></li>
    <li><a href="#about">Services</a></li>
    <li><a href="#footer">About Me</a></li>
    <li><a href="${pageContext.request.contextPath}/logout" class="logout-btn">Logout</a></li>
</ul>
	</header>

	<section class="cover-main" id="home">
		<div>
			<h1>HOTEL RESERVATION</h1>
			<p>Book Online Now!</p>
			<div class="btn-main">
				<!-- New Reservation -->
				<a href="${pageContext.request.contextPath}/bookings/form">New
					Reservation</a>

				<!-- Your Reservations -->
				<a href="${pageContext.request.contextPath}/bookings">Your
					Reservations</a>
			</div>
		</div>
	</section>

	<section class="section-padding" id="work">
		<h2 class="sub-title">Hotel Rooms and Suites</h2>
		<div class="container-rooms">
			<c:forEach var="room" items="${rooms}">
				<div class="card">
					<h3>${room.name}</h3>
					<img src="images/suites.jpg" alt="${room.name}">
					<p>${room.description}</p>
				</div>
			</c:forEach>
		</div>
	</section>

	<section class="section-padding" id="about">
		<h2 class="sub-title">OUR FACILITIES AND SERVICES</h2>
		<div class="tm-service-section">
			<c:forEach var="service" items="${services}">
				<div class="card">
					<img src="/images/servicesss.png">
					<h4>${service.title}</h4>
					<p>${service.detail}</p>
				</div>
			</c:forEach>
		</div>
	</section>

	<footer id="footer" class="main-footer">
		<div>
			<h1>About Me</h1>
			<p>Valmiki Yogesh</p>
			<img src="/images/IMG-20231015-WA0019.jpg" alt="Owner"
				style="width: 100px; border-radius: 50%;">
		</div>

		<div>
			<h1>Contact</h1>
			<c:forEach var="contact" items="${contacts}">
				<p>+91 8374708842</p>
			</c:forEach>
		</div>
		<div>
			<p>Copyright © All rights reserved | Developed By:VALMIKI YOGESH</p>
		</div>
	</footer>

</body>
</html>