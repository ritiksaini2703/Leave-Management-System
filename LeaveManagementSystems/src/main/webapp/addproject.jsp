<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
	<title> Add Project</title>
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
					
					<div class="navbar-nav ms-auto"style="font-size: 20px;color:#861F41;text-transform:capitalize; ">
						<a href="dashboard.jsp" class="nav-item nav-link"style="font-size: 16px;color:#333;text-transform:capitalize;font-family: Lato-Regular; ">Dashboard</a>
				
   						<a href="logout"><img Class="logo" src="logout2.png"></a>

					</div>
				</div>
			</div>
		</nav> <br><br><br>
	<div Class="container">

<!--Apply for Leave-->
<center> <div class="panel-title"style="font-size: 30px;color:#861F41;"><b>Add Project</b></center>
<div class="col-sm-10.5 mb-8 mt-5 " style="margin-left: 6%; box-shadow: 3px 3px 3px 3px #861F41" >
<div class="card">
  <div class="card-body">

					<div class="panel-heading">
					 
					</div><br>
					<div class="panel-body">
                <form
                  role="form"
                  action="addproject"
                  onsubmit="return getvalidation()"
                >
                  <fieldset>
                    <div class="row">
                      <div class="col-md-6 mb-4">
                                          <div class="form-outline">
                                            <input
                                              class="form-control"
                                              placeholder="Project Name"
                                              id="projectname"
                                              name="projectname"
                                              type="text"
                                              autofocus=""
                                              required
                                              pattern="^[A-Za-z\s]{3,}[\.]{0,1}[A-Za-z\s]{0,}$"
                                              title=" Entere Atleast ten characters"
                                            />
                                            <span id="message1" class="text-danger"></span>
                                          </div>
                                        </div>
                                      <div class="col-md-6 mb-4">
                                          <div class="form-outline">
                                            <select class="form-control" aria-label="Default select example" id="assignedemployee" name="asignedemployees" autofocus="" required >
                                              <span id="message8" class="text-danger"></span>
    
                              <option selected value="" >Assign Employees</option>
                             <c:forEach items="${employee}" var="employee" > 
                             <option value="${employee.name }">${employee.name}</option>
                            </c:forEach>
                            </select>
                                                                    <%  String errorMessage = (String) session.getAttribute("errorMessagep");
if (errorMessage != null) {%>
																						
  <h7 class="text-danger">
<%= errorMessage %>
	 </h7>
<%
   session.removeAttribute("errorMessagep");
					 }
%>
                                            <span id="message1" class="text-danger"></span>
                                          </div>
                                        </div>
                      </div><br>
                    <br />

                    <div class="row">
                      <div class="col-md-6 mb-4">
                        <div class="form-outline">
                          <h7>From Date</h7>
                          <input
                            class="form-control"
                            name="projectstartdate"
                            placeholder=""
                            id="fromdate"
                            class="textbox-n"
                            type="date"
                            onblur="getTDays()"
                          />
                          <span id="vt_date" class="text-danger"></span>
                        </div>
                      </div>
                      <div class="col-md-6 mb-4">
                        <div class="form-outline">
                          <h7>To Date</h7>
                          <input
                            class="form-control"
                            name="projectdeadline"
                            placeholder=""
                            id="todate"
                            class="textbox-n"
                            type="date"
                            onblur="getTDays()"
                          />
                          <span id="vf_date" class="text-danger"></span>
                        </div>
                      </div>
                    </div>
                    <br /><br />

                    <div class="row">
                      <div class="col-md-6 mb-4">
                        <div class="form-outline">
                        
                        <textarea id="projectdescription" class="form-control" name="projectdescription" placeholder="Project Description" rows="1 cols="40" required></textarea>
                          
                      
                          </select>  
                        </div>
                      </div>
                      <div class="col-md-6 mb-4">
                        <div class="form-outline">
                          <select class="form-control" aria-label="Default select example" name="projectstatus" autofocus="" required>
                            <option selected value="">Project Status</option>
                            <option value="Active">Active</option>
                            <option value="Completed">Completed</option>
                            <option value="Cancelled">Cancelled</option>
                            
        
        
                            </select>  
                        </div>
                      </div>
                      </div><br><br>

                      
        
        
                        <div class="row">
                        <div class="col-md-6 mb-4">
                          <div class="form-outline">
                          <input type="submit" value="Add Project" class="btn btn-sm btn-dark" >
        
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
	<section class="footer" style="margin-top: 400px;">
		<center><p class="copyright">Copyright &copy; 2022 Axis Bank</p></center>
		</section>
</body>
 <script>
      function getTDays() {
        var t_date1 = document.getElementById("fromdate").value;
        var f_date1 = document.getElementById("todate").value;

        var to1 = new Date(t_date1);
        var from1 = new Date(f_date1);
        weekend = false;

        var tds = from1.getTime() - to1.getTime();
        var dds = tds / (1000 * 60 * 60 * 24) + 1;
        while (to1 < from1) {
          var day = to1.getDay();
          weekend = day == 6 || day == 0;
          if (weekend) {
            dds = dds - 1;
          }
          to1.setDate(to1.getDate() + 1);
        }

        document.getElementById("totalnumberofdays").value = dds;
      }
      function getvalidation() {
        var status = true;
        var t_date1 = document.getElementById("fromdate").value;
        var f_date1 = document.getElementById("todate").value;
        var to1 = new Date(t_date1);
        var from1 = new Date(f_date1);
        var today = new Date();
        var day = new Date(t_date1).getUTCDay();
        var day2 = new Date(f_date1).getUTCDay();
        //form date

        if (t_date1 == "") {
          document.getElementById("vt_date").innerHTML = "*please enter date";
          status = false;
        } else if (to1 <= today) {
          document.getElementById("vt_date").innerHTML =
            "*date should not be previous";
          status = false;
        } else if ([6, 0].includes(day)) {
          document.getElementById("vt_date").innerHTML =
            "please choose working day";
          status = false;
        } else {
          document.getElementById("vt_date").innerHTML = "";
        }

        // to Date
        if (f_date1 == "") {
          document.getElementById("vf_date").innerHTML = "*please enter date";
          status = false;
        } else if (to1 >= from1) {
          document.getElementById("vf_date").innerHTML =
            "*please enter valid date";
          status = false;
        } else if ([6, 0].includes(day2)) {
          document.getElementById("vf_date").innerHTML =
            "please choose working day";
          status = false;
        } else {
          document.getElementById("vf_date").innerHTML = "";
        }
        return status;
      }
    </script>
</html>