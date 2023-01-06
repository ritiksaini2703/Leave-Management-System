<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
	<title>View Employees</title>
	<link rel="stylesheet" type="text/css" href="admin.css">
    <link rel="stylesheet" href= "https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" />
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" />
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body style="height: 1100px;">
<%--     <%
    if(session.getAttribute("username")==null){
    	response.sendRedirect("login.jsp");
    }
%> --%>
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
						<a href="dashboard.jsp" class="nav-item nav-link"style="font-size: 16px;color:#333;text-transform:capitalize;font-family: Lato-Regular; ">Dashboard</a>
				
   						<a href="logout"><img Class="logo" src="logout2.png"></a>
					</div>
				</div>
			</div>
		</nav> <br><br><br>
	<div Class="container">
   <!-- Table  -->

    <table class="table table-striped table-hover" style= "width:96%;margin-left:30px;margin-top:15px;margin-bottom:30px;margin-right:30px;box-shadow: 3px 3px 3px 3px  #861F41" >
        <tr>
        <div class="panel-heading">
            <center> <div class="panel-title"style="font-size: 30px;color:#861F41;"><b>Employees List</b></center>
					</div><br>
        <thead class="table-danger">
            <th>Employee ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Role</th>
            <th>Designation</th>
            <th >View</th>
            <th >Update</th>
            <th >Delete</th>
            
            </thead>
        </tr>
        <c:forEach items="${employee }" var="employee">
            <tr>
                <td>${employee.id }</td>
                <td>${employee.name }</td>
                <td>${employee.email}</td>
                <td>${employee.role}</td>
                <td>${employee.jobtitle}</td>
               <td><a href="view?id=<c:out value='${employee.id }'/>"><button
                    class="btn btn-light">View</button></a></td>
                <td><a href="edit?id=<c:out value='${employee.id }'/>"><button
                             class="btn btn-light">Update</button></a></td>
                <td><a href="delete?id=<c:out value='${employee.id }'/>"><button
                            	onclick="return confirm('Do you really want to delete the employee');" class="btn btn-light">Delete</button></a></td>
            </tr>
            
        </c:forEach>
    </table>
    </div>





	</div>
	</header>
    <section class="footer" style="margin-top: 400px;">
		<center><p class="copyright">Copyright &copy; 2022 Axis Bank</p></center>
		</section>
		 <script>
		    function Demo1(){
		        debugger
		        var flag=1;
		        var returnVal = confirm("Want To Delete");
		        if(returnVal == true)
		{
		    document.write("Deleted...!");
		    
		}else{
		    document.write("Canceled...!");
		    return flag=0;
		}if flag{
			return true
		}else return false;
		} 
        function demo() {
            alert("Record Deleted..!");
        }
            function demo2() {
                alert("Are You sure ?");
            }
        </script>
</body>
</html>