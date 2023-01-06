<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
	<nav Class="navbar navbar-style" style="font-size: 18px;color:#861F41;text-transform:capitalize; ">
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
	<ul Class="nav navbar-nav navbar-right">
	
	<li><a href="login.jsp">Admin Login</a></li>
	<li><a href="employeelogin.jsp">Employee Login</a></li>
	</ul>
	</div>
	</div>
	</nav>
	<div Class="container">
	<div Class="row">
	<div Class="col-sm-6 banner-info">
	<h1>Welcome to</h1>
	<p Class="big-text">AXIS BANK</p>
	<p><h2>Dil se open !</h2></p>
	<a Class="btn btn-first" href="https://www.instagram.com/axis_bank">FOLLOW US<a>
	<a Class="btn btn-second" href="https://www.youtube.com/axisbank">SUBSCRIBE US</a>
	</div>
	<div Class="col-sm-6 banner-image">
	<img src="home.jpg" class="img-responsive">
	</div>
	</div>
	</div>
	</header>
</body>
</html>