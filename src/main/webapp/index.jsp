<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home page</title>
<link rel="stylesheet" type="text/css" href="Css/header.css">
<link rel="stylesheet" type="text/css" href="Css/footer.css">
<link rel="stylesheet" type="text/css" href="Css/home.css">
</head>
<body>
<%@ include file="header.jsp"%>
<%@ include file="navigation.jsp"%>
<!-- BODY -->

<!-- home section -->
    <section class="home">
        <!-- text -->
        <div class="text">
            <h1 style="color: #3b96fe;">HI </h1>
                <h1>Enjoy your ride with us</h1>
                <h3>Up to 25% discount...</h3>
                <p>Discover the ultimate car rental experience with our premier service. From a diverse fleet of well-maintained vehicles to a user-friendly website, we prioritize your satisfaction. With flexible bookings, exceptional customer service, competitive rates, and comprehensive packages, we ensure a stress-free and enjoyable journey on the open road. Book now and experience the freedom!</p>
                
            <div class="store">
                <img src="Images/app-store playstore.png" alt="store logo">
            </div>
        </div>
        <!-- image slider -->
        <div class="slider-container">
                <img class="slider-image" src="Images/homepage-car.png" alt="Car Image">
                <img class="slider-image" src="Images/homepage-car1.png" alt="Car Image">
                <img class="slider-image" src="Images/homepage-car2.png" alt="Car Image">
                <img class="slider-image" src="Images/homepage-car3.png" alt="Car Image">
        </div>
        <!-- search bar -->
        <div class="search-box">
            <input type="text" placeholder="Search...">
            <a href="#">Search</a>
        </div>
    </section>
    <%@ include file="footer.jsp"%>
</body>
</html>