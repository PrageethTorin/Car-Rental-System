<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="Css/header.css">
<link rel="stylesheet" type="text/css" href="Css/footer.css">
<link rel="stylesheet" type="text/css" href="Css/signup.css">
<title>Create Withdraw Account</title>
<script>
    function validateForm() {
        var password = document.forms["signupForm"]["password"].value;
        var fullName = document.forms["signupForm"]["name"].value;

        if (password.length < 4) {
            alert("Password must be at least 4 characters long.");
            return false;
        }

        if (/[^a-zA-Z\s]/.test(fullName)) {
            alert("Full name cannot contain symbols or numbers.");
            return false;
        }
    }
</script>
</head>
<body>
<%@ include file="header.jsp"%>
<%@ include file="navigation.jsp"%>
<section>
  <div class="form-box">
    <div class="form-value">
      <form name="signupForm" action="wd_SignUp" method="post" onsubmit="return validateForm()">
        <h2>Create withdraw account</h2>
        <div class="inputbox">
            <input type="text" name="name" required>
            <label for="name">Full Name</label>
        </div>
        <div class="inputbox">
            <input type="text" name=bank required>
            <label for="Bank">Bank</label>
        </div>
        <div class="inputbox">
          <input type="text" name="accountnumber"  required>
          <label for="Accountnumber">Account Number</label>
        </div>
        <div class="inputbox">
            <input type="text" name="username" required>
            <label for="name">User Name</label>
        </div>
        <div class="inputbox">
            <input type="password" name="password" required>
            <label for="password">Password</label>
        </div>
      
        <button name="submit" type="submit">Create</button>

        <div class="register">
          <p style="font-size: 15px;">Have an account <a href="wd_login.jsp" style="color: red;">Withdraw Login</a></p>
        </div>
      </form>
    </div>
  </div>
</section>
<%@ include file="footer.jsp"%>
</html>
