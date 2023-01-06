<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Profile</title>
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
      integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
      crossorigin="anonymous"
    />
    <style>
      *{
	margin:0;
	padding:0;
}
.header
{
	height:100vh;
}
.navbar-expand-lg
{
	color:white;
	font-family:Lucida;
	box-shadow:0 30px 30px white;
	text-transform:uppercase;
}

.logo
{
	height:48px;
	padding:2px 10px;
}
.icon-bar
{
	background : #861F41;
}
li a{
color:#333;	
}

a.btn-first
{
	background:transparent;
	border:1px solid #861F41;
	color:#333;
}
a.btn:hover
{
	background:#000000;
	border:none;
	color:#fff;
	box-shadow:5px 5px 10px #999;
	transition:0.3s;	
}
.banner-info, .banner-image
{
	margin:30px 0;
}

*{
	box-sizing:border-box;
	
}
html,body{
	height:100%;
	}
a,button{
	cursor:pointer;
}

*{
	margin:0;
	padding:0;
}
.header
{
	height:100vh;
}
.navbar-expand-lg
{
	font-family:Lucida;
	box-shadow:0 30px 30px #861F41;
	text-transform:uppercase;
}
.logo
{
	height:48px;
	padding:2px 10px;
}

    </style>
  </head>
  <body>
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

 <li><a href="dashboard.jsp"class="nav-item nav-link"style="font-size: 16px;color:#333;text-transform:capitalize;font-family: Lato-Regular; ">Dashboard</a></li>
	
   						<a href="login.html"title="Logout"><img Class="logo" src="logout2.png"></a>
					</div>
				</div>
			</div>
		</nav><br><br>
    <section style="background-color: white">
      <div class="container py-5"><div class="panel-heading">
        <center> <div class="panel-title"style="font-size: 30px;color:#861F41;""><b>Profile</b></center>
          
					</div><br>
        <div class="row">
          <div class="col-lg-4">
            <div class="card mb-4" style="box-shadow: 3px 3px 3px 3px #861f41">
              <div class="card-body text-center">
                <img
                  src="avatar.jpeg"
                  alt="avatar"
                  class="rounded-circle img-fluid"
                  style="width: 150px"
                />
                <h5 class="my-3">Krushna</h5>
                <p class="text-muted mb-1">Analyst</p>
                <p class="text-muted mb-4"></p>
              </div>
            </div>
          </div>
          <div class="col-lg-8">
            <div class="card mb-4" style="box-shadow: 3px 3px 3px 3px #861f41">
              <div class="card-body">
                <div class="row">
                  <h5>Personal Detail</h5>
                </div>
                <hr />
                <div class="row">
                  <div class="col-sm-3">
                    <p class="mb-0">id</p>
                  </div>
                  <div class="col-sm-9">
                    <p class="text-muted mb-0">311</p>
                  </div>
                </div>
                <hr />
                <div class="row">
                  <div class="col-sm-3">
                    <p class="mb-0">User Name</p>
                  </div>
                  <div class="col-sm-9">
                    <p class="text-muted mb-0">Krushna3029</p>
                  </div>
                </div>
                <hr />

                <div class="row">
                  <div class="col-sm-3">
                    <p class="mb-0">Gender</p>
                  </div>
                  <div class="col-sm-9">
                    <p class="text-muted mb-0">Male</p>
                  </div>
                </div>
                <hr />
                <div class="row">
                  <div class="col-sm-3">
                    <p class="mb-0">Phone No.</p>
                  </div>
                  <div class="col-sm-9">
                    <p class="text-muted mb-0">8737001025</p>
                  </div>
                </div>
                <hr />
                <div class="row">
                  <div class="col-sm-3">
                    <p class="mb-0">Date Of Birth</p>
                  </div>
                  <div class="col-sm-9">
                    <p class="text-muted mb-0">23/11/2000</p>
                  </div>
                </div>
              </div>
            </div>
            
            <div class="col-lg-12" style="box-shadow: 3px 3px 3px 3px #861f41">
              <div class="card mb-4">
                <div class="card-body">
                  <div class="row">
                    <h5>Address Detail</h5>
                  </div>
                  <hr />
                  <div class="row">
                    <div class="col-sm-3">
                      <p class="mb-0">Address</p>
                    </div>
                    <div class="col-sm-9">
                      <p class="text-muted mb-0">Mirzapur</p>
                    </div>
                  </div>
                  <hr />
                  <div class="row">
                    <div class="col-sm-3">
                      <p class="mb-0">Nationality</p>
                    </div>
                    <div class="col-sm-9">
                      <p class="text-muted mb-0">Indian</p>
                    </div>
                  </div>
                  <hr />
                  <div class="row">
                    <div class="col-sm-3">
                      <p class="mb-0">Email</p>
                    </div>
                    <div class="col-sm-9">
                      <p class="text-muted mb-0">
                        shivayprashant2311@gmail.com
                      </p>
                    </div>
                  </div>
                  <hr />
                  
              
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="footer" style="margin-top: 160px;">
      <center><p class="copyright">Copyright &copy; 2022 Axis Bank</p></center>
      </section>
  </body>
</html>