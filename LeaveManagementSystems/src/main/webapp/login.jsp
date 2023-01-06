<html>
<head>
<link rel="stylesheet" href="login.css"/>
 	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
 	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<nav Class="navbar navbar-style">
	<div Class="container">
		<div Class="navbar-header">
		<a href="home.jsp"title="Home"><img Class="logo" src="logo.png"></a>
		<ul Class="nav navbar-nav navbar-right"style="font-size:18px;color:#861F41;text-transform:capitalize; ">
	<li><a href="home.jsp"class="nav-item nav-link"style="font-size: 16px;color:#333;text-transform:capitalize;font-family: Lato-Regular; ">Home</a></li>
	<li><a href="employeelogin.jsp"class="nav-item nav-link"style="font-size: 16px;color:#333;text-transform:capitalize;font-family: Lato-Regular; ">Employee Login</a></li>
	</ul>
	</div>
	</div>
	</nav>
<div class="login-card">
<h2><b><p>Welcome Back Admin</p></b></h2>
<h3>Enter your credentials</h3>
 <%  String errorMessage = (String) session.getAttribute("message");
if (errorMessage != null) {%>
																						
  <h5 class="text-danger">
<%= errorMessage %>
	 </h5>
<%
   session.removeAttribute("message");
					 }
%>
<form class="login-form" action="login" method="post">
<input type="text" placeholder="Username" name="username" pattern="^[A-Za-z0-9\s]{2,}[\.]{0,1}[A-Za-z\s]{0,}$" title=" Enter Atleast two character" required/>
<input type="password" placeholder="Password" name="password" required/>



<button type="submit">Login</button>
</form>
</div>
<section class="footer">
	<center><p class="copyright">Copyright &copy; 2022 Axis Bank</p></center>
	</section>
</body>
</html>