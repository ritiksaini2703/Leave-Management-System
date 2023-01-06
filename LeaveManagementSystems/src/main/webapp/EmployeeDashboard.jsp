<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<html>
<head>
	<title>Home Page</title>
	<link rel="stylesheet" type="text/css" href="stylesheetv.css">
 	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<header class="header">
	<nav Class="navbar navbar-style">
	<div Class="container">
		<div Class="navbar-header">
			<button type="button" Class="navbar-toggle" data-toggle="collapse" data-target="#micon">
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			</button>
		<a href=""><img Class="logo" src="logo.png"></a>
	</div>
	<div class="collapse navbar-collapse" id="micon">
		<ul Class="nav navbar-nav navbar-right"style="font-size: 18px;color:#861F41;text-transform:capitalize; ">
	<li><a href="home.jsp" class="nav-item nav-link"style="font-size: 16px;color:#333;text-transform:capitalize;font-family: Lato-Regular; ">Home</a></li>
	<li><a href="viewholidays?id=<c:out value='${employee.id }'/>" class="nav-item nav-link"style="font-size: 16px;color:#333;text-transform:capitalize;font-family: Lato-Regular; ">View Holidays</a></li>
	<li><a href="viewprojectemployee?id=<c:out value='${employee.id }'/>" class="nav-item nav-link"style="font-size: 16px;color:#333;text-transform:capitalize;font-family: Lato-Regular; ">View Project</a></li>
	<li><a href="applyforleave?id=<c:out value='${employee.id }'/>" class="nav-item nav-link"style="font-size: 16px;color:#333;text-transform:capitalize;font-family: Lato-Regular; ">Apply Leave</a></li>
    <li><a href="viewresetpass?id=<c:out value='${employee.id }'/>" class="nav-item nav-link"style="font-size: 16px;color:#333;text-transform:capitalize;font-family: Lato-Regular; ">Reset Password</a></li>
     <li><a href="viewProfile?id=<c:out value='${employee.id }'/>" class="nav-item nav-link"style="font-size: 16px;color:#333;text-transform:capitalize;font-family: Lato-Regular; ">Profile</a></li>
	<a href="logout" title="LOGOUT"><img Class="logo" src="logout2.png"></a>
	</ul>
	</div>
	</div>
	</nav>
	<div Class="container">
	<div Class="row">
	<div Class="col-sm-6 banner-info">
	<h1>Welcome to</h1>
	<p Class="big-text">EMPLOYEE DASHBOARD</p>
	</div>
	<div Class="col-sm-6 banner-image">
	<img src="leave.png" class="img-responsive">
	</div>
	</div>
	</div>
	</header>
</body>
</html>