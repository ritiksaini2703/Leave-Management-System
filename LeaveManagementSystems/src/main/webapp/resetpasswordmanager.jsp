    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
	<title>ResetPassword</title>
	<link rel="stylesheet" type="text/css" href="admin.css">
    <link rel="stylesheet" href= "https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" />
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" />
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body style="height: 1100px;">
	<header class="header">
        <nav class="navbar navbar-expand-lg navbar-light">
			<div class="container-fluid ">
				<button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarCollapse">
					<div class="navbar-nav">
						<a href="#" class="nav-item nav-link active"></a>
						<a href="#" class="nav-item nav-link"></a>
						<div class="navbar-nav ms-auto">
							<a href="DashboardHomePage.html"title="Dashboard"><img Class="logo" src="logo.png"></a>

						</div>
					</div>
                    <div class="navbar-nav ms-auto" style="font-size: 18px;color:#861F41;text-transform:capitalize; ">

		<a class="nav-item nav-link"style="font-size: 16px;color:#333;text-transform:capitalize;font-family: Lato-Regular; " href="viewManagerDashboard?id=<c:out value='${employee.id }'/>">Dashboard</a>
	
	<a href="logout"title="Logout"><img Class="logo" src="logout2.png"></a>
					</div>
					
					
					</div>
				</div>
			</div>
		</nav><br><br><br>
	<div Class="container">
   <!-- Apply  -->
   <center> <div class="panel-title"style="font-size: 30px;color:#861F41;""><b>Reset Password</b></center>

   <div class="col-sm-6 mb-6 mt-5 " style="margin-left: 25%; box-shadow: 3px 3px 3px 3px #861F41 ;border-radius:5px;" >
    <div class="card">
      <div class="card-body">
                        <div class="panel-heading">
                        
                        </div><br>
                        
                                    <div class="panel-body">
                                        <form role="form" action="resetpassmanager" method="post" onsubmit="return mypass()">
                                            <fieldset>
                                                <div class="form-group">
                                                    <input class="form-control" placeholder=" Enter Old Password" name="passwordo" type="password"  autofocus=""  required >
                                                </div>
                                                 <%  String errorMessage = (String) session.getAttribute("message");
if (errorMessage != null) {%>
																						
  <h7 class="text-danger">
<%= errorMessage %>
	 </h7>
<%
   session.removeAttribute("message");
					 }
%>                                                 <br>
                                                <div class="form-group">
                                                    <input class="form-control" placeholder=" Enter New Password" name="passwordn" id="passwordn" type="password" autofocus="" pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*_=+-]).{8,12}$" title="Please Enter valid Password" required onblur="mypass()">
                                                    
                                                </div><br>
                                                <div class="form-group">
                                                  <input class="form-control" placeholder=" Confirm New Password" name="passwordc" id="passwordc" type="password" autofocus=""  pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*_=+-]).{8,12}$" title="Please Enter valid Password" required onblur="mypass()">
                                                  <span id="message8" class="text-danger"></span>
                                              </div><br>
        
                                                <input type="submit" value="Reset Password" class="btn btn-sm btn-dark" >
                                            </fieldset>
                                        </form>
                                    </div>

                                </fieldset>
                            </form>
                        </div>
                    </div>
</div>
</div>

</div>
<script>
    function  mypass()
    {
        
        
        var passwordn=document.getElementById("passwordn").value
        var passwordc=document.getElementById("passwordc").value

        if(passwordn.length>0 && passwordc.length>0 ){
        if(passwordn != passwordc){
            document.getElementById("message8").innerHTML="*Your Password And Confirm Password Not Match";
            return false;

        }else{
            document.getElementById("message8").innerHTML="";
        }
            

        }else{
            document.getElementById("message8").innerHTML="";
        
        } }

</script>
</body>
<section class="footer" style="margin-top: 400px;">
    <center><p class="copyright">Copyright &copy; 2022 Axis Bank</p></center>
    </section>
</html>