<html>
<head>
	<title>UpdateEmployee</title>
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
					
					<div class="navbar-nav ms-auto" style="font-size: 18px;color:#861F41;text-transform:capitalize; ">
						<a href="dashboard.jsp" class="nav-item nav-link">Dashboard</a>
				
   						<a href="logout"><img Class="logo" src="logout2.png"></a>
					</div>
				</div>
			</div>
		</nav> <br><br><br>
	<div Class="container">
   <!-- Apply  -->
 <center> <div class="panel-title"style="font-size: 30px;color:#861F41;"><b>Update Employee</b></center>
 
   <div class="col-sm-8 mb-6 mt-5 " style="margin-left: 18%; box-shadow: 3px 3px 3px 3px #861F41 ;border-radius:5px;" >
    <div class="card">
      <div class="card-body">
                        <div class="panel-heading">
                           <center> <h3 class="panel-title"><b>Update Employee</b></h3> </center>
                        </div><br>
                        <div class="panel-body">
                            <form role="form" action="update" onsubmit="return myfundate()">
                                <fieldset>
                                    <div class="row">
                                        <div class="col-md-6 mb-4">
                                          <div class="form-outline">
                                            <input class="form-control" placeholder="" name="id" type="text" autofocus="" value="${employee.id}" required readonly>
                                            <span id="message" class="text-danger"></span>
                                          </div>
                                        </div>
                                        <div class="col-md-6 mb-4">
                                          <div class="form-outline">
                                            <input class="form-control" placeholder="" name="username" type="text" autofocus="" value="${employee.username}" required readonly>
                                            <span id="message1" class="text-danger"></span>
                                          </div>
                                        </div>
                                      </div><br><br>


                                  <div class="row">
                                    <div class="col-md-6 mb-4">
                                      <div class="form-outline">
                                        <input class="form-control" placeholder="Name" name="name" type="text" autofocus="" value="${employee.name}" pattern="^[A-Za-z\s]{2,}[\.]{0,1}[A-Za-z\s]{0,}$" title=" Entere Atleast three character" required>
                                        <span id="message" class="text-danger"></span>
                                      </div>
                                    </div>
                                    <div class="col-md-6 mb-4">
                                      <div class="form-outline">
                                        
                                       <input class="form-control" placeholder="Email" name="email" type="email"  value="${employee.email}" pattern="[a-z]{1}[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" title="axy@gmail.com" required>
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
                                        <input class="form-control" placeholder="Phone" name="phone" type="text" autofocus="" value="${employee.phone}"  pattern="[7-9]{1}[0-9]{9}" title="Enter 10 Digits Number" required>
                                        <span id="message2" class="text-danger"></span>
                                      </div>
                                    </div>
                                    <div class="col-md-6 mb-4">
                                      <div class="form-outline">

                                        <select class="form-control" aria-label="Default select example" name="gender" autofocus="" value="${employee.gender}" required>
                                            <option selected value="">Select Your Gender</option>
                                            <option value="male" ${employee.gender=='male'?'selected':''}>Male</option>
                                            <option value="female" ${employee.gender=='female'?'selected':''}>Female</option>
                                          </select>    
                                      </div>
                                    </div>
                                  </div><br>


                                  <div class="row">
                                    <div class="col-md-6 mb-4">

                                        <div class="form-outline">
                                          <h7>Date Of Birth</h7>
                                          <input class="form-control"  name="dob" type="date" value="${employee.dob}"  required>
                                          <span id="message5" class="text-danger"></span>
                                      </div>
                                    </div>
                                    <div class="col-md-6 mb-4">
                                      <div class="form-outline">
                                        <h8>.</h8>
                                        <input class="form-control" placeholder="Address" name="address" type="text" autofocus="" value="${employee.address}" required>
                                        <span id="message3" class="text-danger"></span>
                                      </div>
                                    </div>
                                  </div><br><br>


                                  <div class="row">
                                    <div class="col-md-6 mb-4">
                                      <div class="form-outline">
                                        <select class="form-control" aria-label="Default select example" name="country" autofocus=""   value="${employee.country}"  required>
                                          <option value="india" ${employee.country=='india'?'selected':''}>India</option>
                                          <option value="others" ${employee.country=='others'?'selected':''}>Others</option>

                                        </select> 
                                      </div>
                                    </div>
                                    <div class="col-md-6 mb-4">
                                      <div class="form-outline">
                                        <select class="form-control" aria-label="Default select example" name="type" autofocus="" value="${employee.type}" required>
                                            <option value="single" ${employee.type=='single'?'selected':''}>Single</option>
                                            <option value="married" ${employee.type=='married'?'selected':''}>Married</option>
                                          </select> 
                                      </div>
                                    </div>
                                  </div><br><br>


                                  <div class="row">
                                    <div class="col-md-6 mb-4">
                                      <div class="form-outline">
                                        <select class="form-control" aria-label="Default select example" name="jobtitle" autofocus="" required>
                                            <option value="Manager" ${employee.jobtitle=='Manager'?'selected':''}>Manager</option>
                                            <option value="Developer" ${employee.jobtitle=='Developer'?'selected':''}>Developer</option>
                                          <option value="Analyst" ${employee.jobtitle=='Analyst'?'selected':''}>Analyst</option>
                                          <option value="Tester" ${employee.jobtitle=='Tester'?'selected':''}>Tester</option>

                                        </select>  
                                      </div>
                                    </div>
                                    <div class="col-md-6 mb-4">
                                      <div class="form-outline">

                                          <select class="form-control" aria-label="Default select example" name="role" autofocus="" required>
                                          <option selected value="">Select Role</option>
                                          <option value="Manager"${employee.role=='Manager'?'selected':''}>Manager</option>
                                          <option value="Employee"${employee.role=='Employee'?'selected':''}>Employee</option>
                                           </select> 
                                      </div>
                                    </div>
                                  </div><br>


                                  <div class="row">
                                    <div class="col-md-6 mb-4">
                                      <div class="form-outline">
                                        <input type="submit" value="Submit" class="btn btn-sm btn-dark" >

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