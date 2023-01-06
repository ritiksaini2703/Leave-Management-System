<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Admin Login Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="style.css">
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
          <div class="navbar-header">
            <a class="navbar-brand" href="#">Employee WebApp</a>
          </div>
          <ul class="nav navbar-nav">
            <li class="active"><a href="login.jsp">Home</a></li>
            <li><a href="#"></a></li>
            <li><a href="#"></a></li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <li></li>
            <li></li>
          </ul>
        </div>
      </nav>
      
      <div class="col-md-4 col-md-offset-4  " >
        <div class="login-panel panel panel-default">
                            <div class="panel-heading">
                                <h3 class="panel-title"><b>Add Admin</b></h3>
                            </div>
                            <div class="panel-body">
                                <form role="form" action="addadmin" onsubmit="return validateform()">
                                    <fieldset>
                                        <div class="form-group">
                                            <input class="form-control" placeholder="UserName" name="username" type="text" autofocus="" required>
                                        </div>
                                        <div class="form-group">
                                            <input class="form-control" placeholder="Password" name="password" type="password" autofocus="" required>
                                        </div>

                                        <input type="submit" value="Login" class="btn btn-sm btn-success" >
                                        <a href="employeelogin.jsp">Employee? Please Login Here</a>
                                    </fieldset>
                                </form>
                            </div>
                        </div>
    </div>
    
        <script>
    function validateform(){  
        var username=document.myform.name.value;  
        var password=document.myform.password.value;  
          
        if (username==null || name==""){  
          alert("Enter Valid UserName ");  
          return false;  
        }else if(password==null || password==""){  
          alert("Enter Valid UserName");  
          return false;  
          }  
        }
    
    </script>
    
</body>
<footer style="color: black; height:20px"></footer>
</html>