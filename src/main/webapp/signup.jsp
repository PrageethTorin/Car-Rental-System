<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="Css/header.css">
<link rel="stylesheet" type="text/css" href="Css/footer.css">
<link rel="stylesheet" type="text/css" href="Css/signup.css">
<title>SignUp</title>
</head>
<body>
<%@ include file="header.jsp"%>
<%@ include file="navigation.jsp"%>
<section>
  <div class="form-box">
    <div class="form-value">
      <form action="SignUp" method="post">
        <h2>Sign Up</h2>
        <div class="inputbox">
            <input type="text" name='name' required>
            <label for="name">Full Name</label>
        </div>
        <div class="inputbox">
            <input type="email" name='email' required>
            <label for="email">Email</label>
        </div>
        <div class="inputbox">
          <input type="tel" name='Phonenumber' pattern="[0-9]{10}" required>
          <label for="Phonenumber">Phone Number</label>
        </div>
        <div class="inputbox">
            <input type="text" name='username' required>
            <label for="name">User Name</label>
        </div>
        <div class="inputbox">
            <input type="password" name='pwd' required>
            <label for="password">Password</label>
        </div>
        <div class="inputbox">
            <input type="password" name='pwdrepeat' required>
            <label for="password">Confirm Password</label>
        </div>

        <button name="submit" type="submit">Sign Up</button>


        <div class="register">
          <p style="font-size: 15px;">Have an account <a href="#" style="color: red;" >Login</a></p>
        </div>
      </form>
    </div>
  </div>
</section>
<%@ include file="footer.jsp"%>
</html>