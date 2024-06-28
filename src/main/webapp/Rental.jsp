<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>rental</title>
<link rel="stylesheet" type="text/css" href="Css/rental.css">
<link rel="stylesheet" type="text/css" href="Css/header.css">
<link rel="stylesheet" type="text/css" href="Css/footer.css">
</head>
<body>

<%@ include file="header.jsp"%>
<%@ include file="navigation.jsp"%>
    <div class="boxes">
        <form class="box1" action="rental" method="post">
          <div class="header-text">
            <h2>Ride Details</h2>
          </div>
          <label for="vehicle-type" style="color: red;">Vehicle Type:</label>
          <br><br>
          <select id="vehicle-type" name="vehicle-type">
            <option value="generalcar">General Car</option>
            <option value="premiumcar">Premium Car</option>
            <option value="luxurycar">Luxury Car</option>
          </select><br>
<div class="etxt12">
            <label for="Start Location" style="color: red;">Start Location</label><br><br>
            <input type="text" name='startl' placeholder="Enter the Start Location" required>
</div>
<div class="etxt12">
            <label for="Destination" style="color: red;">Destination</label><br><br>
            <input type="text" name='Destination' placeholder="Enter the Destination" required>
</div>
<div class="etxt12">
            <label for="UserID" style="color: red;">User ID</label><br><br>
            <input type="number" name='UserID' placeholder="Enter the User ID" required>
</div><br><br>
          
          <button type="submit">Request Vehicle</button>
        </form>
    
        <div class="box2">
          <div class="header-text">
            <h2>Rental Details</h2>
          </div>
          <div class="general">
            <img src="Images/cars-1.png" alt="general img">
            <h2>general packages</h2>
            <p>Seat Capacity - 4 to 5<br>Minimum Fare (1hr or 10km)	LKR 600<br>Additional Charges per Km (after 10km)	LKR 50<br>Additional Charges per min (after 1hr)	LKR 2.50</p>
            
  
          </div>
          
          
          <div class="luxury">
            <img src="Images/cars-3.png" alt="luxury img">
            <h2>luxury packages</h2>
            <p>Seat Capacity - 8 to 12<br>Minimum Fare (1hr or 10km)    	LKR 1500<br>Additional Charges per Km (after 10km)	LKR 100<br>Additional Charges per min (after 1hr)	LKR 3.50</p>
            
  
          </div>
          
          
          <div class="premium">
            <img src="Images/cars-2.png" alt="premium image">
            <h2>premium packages</h2>
            <p>Seat Capacity - 4 to 5<br>Minimum Fare (1hr or 10km)    	LKR 2000<br>Additional Charges per Km (after 10km)	LKR 200<br>Additional Charges per min (after 1hr)	LKR 4.30</p>
            
  
          </div>
          
        </div>
      </div>
  
    <%@ include file="footer.jsp"%>
</body>
</html>