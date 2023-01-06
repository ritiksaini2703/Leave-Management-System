<html>
<head>
	<title>AddEmployee</title>
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
							<img Class="logo" src="logo.png">

						</div>
					</div>
					
					<div class="navbar-nav ms-auto">
						<a href="dashboard.jsp" class="nav-item nav-link"style="font-size: 16px;color:#333;text-transform:capitalize;font-family: Lato-Regular; ">Dashboard</a>
				
   						<a href="logout"><img Class="logo" src="logout2.png"></a>
					</div>
				</div>
			</div>
		</nav> <br><br><br>
	<div Class="container">
   <!-- Apply  -->
<center> <div class="panel-title"style="font-size: 30px;color:#861F41;"><b>Add Employee</b></center>
   <div class="col-sm-8 mb-6 mt-5 " style="margin-left: 18%; box-shadow: 3px 3px 3px 3px #861F41 ;border-radius:5px;" >
    
    <div class="card">
      <div class="card-body">
                        <div class="panel-heading">
                        </div><br>
                        <div class="panel-body">
                            <form role="form" action="add" onsubmit="return myfundate()">
                                <fieldset>
                                  <div class="row">
                                    <div class="col-md-6 mb-4">
                                      <div class="form-outline">
                                        <input class="form-control" placeholder="Name" id="name" name="name" type="text"  required pattern="^[A-Za-z\s]{2,}[\.]{0,1}[A-Za-z\s]{0,}$" title=" Enter Atleast two character">
                                        <span id="message" class="text-danger"></span>
                                      </div>
                                    </div>
                                    <div class="col-md-6 mb-4">
                                      <div class="form-outline">
                                        <input class="form-control" placeholder="Email" id="email" name="email" type="email" value="" required pattern="[a-z]{1}[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" title="axy@gmail.com">
                                        <%  String errorMessage = (String) session.getAttribute("errorMessage");
if (errorMessage != null) {%>
																						
  <h7 class="text-danger">
<%= errorMessage %>
	 </h7>
<%
   session.removeAttribute("errorMessage");
					 }
%>
                                        <span id="message1" class="text-danger"></span>
                                      </div>
                                    </div>
                                  </div><br><br>


                                  <div class="row">
                                    <div class="col-md-6 mb-4">
                                      <div class="form-outline">
                                        <input class="form-control" placeholder="Phone" id="phone" name="phone" type="text" autofocus=""  required pattern="[7-9]{1}[0-9]{9}" title="Enter 10 Digits Number">
                                        <span id="message2" class="text-danger"></span>
                                      </div>
                                    </div>
                                    <div class="col-md-6 mb-4">
                                      <div class="form-outline">
                                        <select class="form-control" aria-label="Default select example" id="gender1" name="gender" autofocus="" required >
                                          <span id="message8" class="text-danger"></span>
                      
                          <option selected value="">Select Your Gender</option>
                          <option value="male">Male</option>
                          <option value="female">Female</option>
                        </select>    
                                      </div>
                                    </div>
                                  </div><br>


                                  <div class="row">
                                    <div class="col-md-6 mb-4">

                                        <div class="form-outline">
                                          <h7>Date Of Birth</h7>
                                        <input class="form-control"  name="dob" placeholder="Date Of Birth"  id="edob" class="textbox-n" type="date"  required onblur="myfundate()">
                                                <span id="message5" class="text-danger"></span>
                                      </div>
                                    </div>
                                    <div class="col-md-6 mb-4">
                                      <div class="form-outline">
                                        <h8>.</h8>
                                        <input class="form-control" placeholder="Address" name="address" type="text" autofocus="" required pattern="^[A-Za-z\s]{3,}[\.]{0,1}[A-Za-z\s]{0,}$" title=" Enter Valid Address">
                                        <span id="message3" class="text-danger"></span>
                                      </div>
                                    </div>
                                  </div><br><br>


                                  <div class="row">
                                    <div class="col-md-6 mb-4">
                                      <div class="form-outline">
                                        <select class="form-control" aria-label="Default select example" name="country" autofocus="" required>
                                          <option selected value="">Select Your Nationality</option>
                                          <option value="Indian">Indian</option>
                                         <option value="Others">Others</option>

                                        </select> 
                                      </div>
                                    </div>
                                    <div class="col-md-6 mb-4">
                                      <div class="form-outline">
                                        <select class="form-control" aria-label="Default select example" name="type" autofocus="" required>
                                          <option selected value="">Select Marital Status</option>
                                          <option value="single">Single</option>
                                          <option value="married">Married</option>
                                        </select>  
                                      </div>
                                    </div>
                                  </div><br><br>


                                  <div class="row">
                                    <div class="col-md-6 mb-4">
                                      <div class="form-outline">
                                        <select class="form-control" aria-label="Default select example" name="jobtitle" autofocus="" required>
                                          <option selected value="">Select Designation</option>
                                          <option value="Analyst">Analyst</option>
                                         <option value="Developer">Developer</option>
                                         <option value="Tester">Tester</option>

                                        </select>  
                                      </div>
                                    </div>
                                    <div class="col-md-6 mb-4">
                                      <div class="form-outline">
                                         <select class="form-control" aria-label="Default select example" name="role" autofocus="" required>
                                          <option selected value="">Select Role</option>
                                          <option value="Manager">Manager</option>
                                          <option value="Employee">Employee</option>



                                        </select> 
                                      </div>
                                    </div>
                                  </div><br>


                                  <div class="row">
                                    <div class="col-md-6 mb-4">
                                      <div class="form-outline">
                                        <input type="submit" value="ADD Employee" class="btn btn-sm btn-dark" >

                                      </div>
                                    </div>
                                    <div class="col-md-6 mb-4">
                                      <div class="form-outline">
                                       
                                      </div>
                                    </div>
                                  </div>

                                </fieldset>
                            </form>
                        </div>
                    </div>
</div>
</div>





	</div>
	</header>
   <script>

    function  myfundate(){
    var date1=document.getElementById("edob").value
  var today = new Date();
  
  var minAge=22;
  var maxDOB=new Date(today.getFullYear()-minAge,today.getMonth(),today.getDate());

  
  var dob=new Date(date1);
  if(dob>maxDOB){
  document.getElementById("message5").innerHTML="*age should not be less than 22";
  return false;
  }
  else{
    document.getElementById("message5").innerHTML="";
    
  }}
  
  
  
     



</script> 
  <section class="footer" style="margin-top: 400px;">
		<center><p class="copyright">Copyright &copy; 2022 Axis Bank</p></center>
		</section>
</body>
</html>