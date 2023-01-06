<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
  <head>
    <title>Apply For Leave</title>
    <link rel="stylesheet" type="text/css" href="employee.css" />
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
    />
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
    />

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  </head>
  <body style="height: 1100px">
    <header class="header">
      <nav class="navbar navbar-expand-lg navbar-light">
        <div class="container-fluid">
          <button
            type="button"
            class="navbar-toggler"
            data-bs-toggle="collapse"
            data-bs-target="#navbarCollapse"
          >
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav">
              <a href="#" class="nav-item nav-link active"></a>
              <a href="#" class="nav-item nav-link"></a>
              <div class="navbar-nav ms-auto">
                <img class="logo" src="logo.png" />
              </div>
            </div>

            <div class="navbar-nav ms-auto"
						style="font-size: 18px; color: #861F41; text-transform: capitalize;">
						<a class="nav-item nav-link"style="font-size: 16px;color:#333;text-transform:capitalize;font-family: Lato-Regular; "
							href="viewEmployeeDashboard?id=<c:out value='${employee.id }'/>">Dashboard</a>
						<a class="nav-item nav-link"style="font-size: 16px;color:#333;text-transform:capitalize;font-family: Lato-Regular; "
							href="viewleavehistory?id=<c:out value='${employee.id }'/>">LeaveHistory</a>

							<a href="logout"><img Class="logo"
								src="logout2.png"></a>
					</div>
          </div>
        </div>
      </nav>
      <br /><br /><br />
      <div class="container">
        <!-- Apply  -->

        <div
          class="card-group w-76"
          style="
            margin-left: 6%;
            margin-top: 3%;
            box-shadow: 3px 3px 3px 3px #861f41;
          "
        >
          <div class="card" style="width: 2rem">
            <div class="card-body">
              <h5 class="card-title">Sick</h5>
              <h5 class="card-title">Leave</h5>
  
              <i class="bi bi-calendar" style="font-size: 30px"></i>
              <h6 class="card-text"></h6>
              <h6 class="card-text">Pending : ${employee.sick }</h6>
              <h6 class="card-text">Taken : <span id="sick"></span></h6>
              <h6 class="card-text">Total : 15</h6>
            </div>
          </div>
          <div class="card" style="width: 5rem">
            <div class="card-body">
              <h5 class="card-title">Casual</h5>
              <h5 class="card-title">Leave</h5>
  
              <i class="bi bi-calendar" style="font-size: 30px"></i>
              <h6 class="card-text"></h6>
              <h6 class="card-text">Pending :  ${employee.casual }</h6>
              <h6 class="card-text">Taken : <span id="casual"></span></h6>
              <h6 class="card-text">Total :15</h6>
            </div>
          </div>
          <div class="card" style="width: 5rem">
            <div class="card-body">
              <h5 class="card-title">Marriage Leave</h5>
              <i class="bi bi-calendar" style="font-size: 30px"></i>
              <h6 class="card-text"></h6>
              <h6 class="card-text">Pending : ${employee.marriage }</h6>
              <h6 class="card-text">Taken : <span id="marriage"></span></h6>
              <h6 class="card-text">Total : 15</h6>
            </div>
          </div>
          <div class="card" style="width: 5rem">
            <div class="card-body">
              <h5 class="card-title">Personal Leave</h5>
              <i class="bi bi-calendar" style="font-size: 30px"></i>
              <h6 class="card-text"></h6>
  
              <h6 class="card-text">Pending : ${employee.personal }</h6>
              <h6 class="card-text">Taken : <span id="personal"></span></h6>
              <h6 class="card-text">Total : 15</h6>
            </div>
          </div>
          <div class="card" style="width: 5rem">
            <div class="card-body">
              <h5 class="card-title">Paternity Leave</h5>
              <i class="bi bi-calendar" style="font-size: 30px"></i>
              <h6 class="card-text"></h6>
  
              <h6 class="card-text">Pending : ${employee.paternity }</h6>
              <h6 class="card-text">Taken :<span id="patl"></span></h6>
              <h6 class="card-text">Total : 30</h6>
            </div>
          </div>
          <div class="card" style="width: 5rem">
            <div class="card-body">
              <h5 class="card-title">Adoption Leave</h5>
              <i class="bi bi-calendar" style="font-size: 30px"></i>
              <h6 class="card-text"></h6>
              <h6 class="card-text">Pending :${employee.adoption}</h6>
              <h6 class="card-text">Taken : <span id="adoption"></span></h6>
              <h6 class="card-text">Total : 30</h6>
            </div>
          </div>
          <div class="card" style="width: 5rem">
            <div class="card-body">
              <h5 class="card-title">Maternity Leave</h5>
              <i class="bi bi-calendar" style="font-size: 30px"></i>
              <h6 class="card-text"></h6>
              <h6 class="card-text">Pending : ${employee.maternity}</h6>
              <h6 class="card-text">Taken :<span id="maternity"></span> </h6>
              <h6 class="card-text">Total : 180</h6>
            </div>
          </div>
        </div>

        <!--Apply for Leave-->
        <div
          class="col-sm-10.5 mb-8 mt-5"
          style="margin-left: 6%; box-shadow: 3px 3px 3px 3px #861f41"
        >
          <div class="card">
            <div class="card-body">
              <div class="panel-heading">
                <centere>
                  <h5 class="panel-title"><b>Apply For Leave</b></h5>
                </centere>
              </div>
              <br />
              <div class="panel-body">
                <form
                  role="form"
                  action="addleave"
                  onsubmit="return getvalidation()"
                >
                  <fieldset>
                    <div class="row">
                      <div class="col-md-6 mb-4">
                        <div class="form-outline">
                          <input
                            class="form-control"
                            placeholder="ID"
                            id="id"
                            name="empid" type="text" autofocus="" value="${employee.id}"
													required readonly
                          />
                          <span id="message" class="text-danger"></span>
                        </div>
                      </div>
                      <div class="col-md-6 mb-4">
                        <div class="form-outline">
                          <input
                            class="form-control"
                            placeholder="Name"
                            id="name"
                            name="name" type="text" autofocus="" required
													value="${employee.name}" readonly
                            pattern="^[A-Za-z\s]{3,}[\.]{0,1}[A-Za-z\s]{0,}$"
                            title=" Entere Atleast three character"
                          />
                          <span id="message1" class="text-danger"></span>
                        </div>
                      </div>
                    </div>
                    <br />

                    <div class="row">
                      <div class="col-md-6 mb-4">
                        <div class="form-outline">
                          <h7>From Date</h7>
                          <input
                            class="form-control"
                            name="fromdate"
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
                            name="todate"
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
                          <select
                            class="form-control"
                            aria-label="Default select example"
                            name="role"
                            value="${employee.role} autofocus="" required readonly
                          >
                            <option selected value="">Select Designation</option>
                            <option value="Manager" ${employee.role=='Manager'?'selected':''}>Manager</option>
                            <option value="Employee" ${employee.role=='Employee'?'selected':''}>Employee</option>
                          </select>
                        </div>
                      </div>
                      <div class="col-md-6 mb-4">
                        <div class="form-outline">
                          <select
                            class="form-control"
                            aria-label="Default select example"
                            name="typeofleave"
                            id="typeofleave"
                            autofocus=""
                            required
                          >
                            <option selected value="">Type Of Leave</option>
                            <option value="sick">Sick</option>
                            <option value="casual">Casual</option>
                            <option value="marriage">Marriage</option>
                            <option value="personal leave">
                              Personal leave
                            </option>
                            <option value="paternity">Paternity</option>
                            <option value="adoption">Adoption</option>
                            <option value="maternity">Maternity</option>
                          </select>
                        </div>
                      </div>
                    </div>
                    <br /><br />

                    <div class="row">
                      <div class="col-md-6 mb-4">
                        <div class="form-outline">
                          <h7>Description</h7>
                          <textarea
                            id="Description"
                            class="form-control"
                            name="description"
                            placeholder="Address"
                            rows="1"
                            cols="40"
                            required
                            pattern="^[A-Za-z\s]{3,}[\.]{0,1}[A-Za-z\s]{0,}$"
                            title=" Entere Atleast three character"
                          >
                          </textarea>
                        </div>
                      </div>
                      <div class="col-md-6 mb-4">
                        <div class="form-outline">
                          <h7>.</h7>
                          <input
                            type="number"
                            placeholder="Total Number Of Days"
                            class="form-control"
                            name="totalnumberofdays"
                            id="totalnumberofdays"
                            readonly
                            required
                          />
                        </div>
                      </div>
                    </div>
                    <br />

                    <div class="row">
                      <div class="col-md-6 mb-4">
                        <div class="form-outline">
                          <a
                            href="applyforleave?id=<c:out value='${employee.id }'/>"
                          ></a>
                          <input
                            type="submit"
                            value="Apply Leave"
                            class="btn btn-sm btn-dark"
                          />
                        </div>
                      </div>
                      <div class="col-md-6 mb-4">
                        <div class="form-outline"></div>
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
    <section class="footer" style="margin-top: 400px">
      <center><p class="copyright">Copyright &copy; 2022 Axis Bank</p></center>
    </section>
    <script>
       document.getElementById("patl").innerHTML=30-${employee.paternity};
       document.getElementById("adoption").innerHTML=30-${employee.adoption};
       document.getElementById("maternity").innerHTML=180-${employee.maternity};
       document.getElementById("personal").innerHTML=15-${employee.personal};
       document.getElementById("marriage").innerHTML=15-${employee.marriage};
       document.getElementById("casual").innerHTML=15-${employee.casual};
       document.getElementById("sick").innerHTML=15-${employee.sick};

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
        var reason = document.getElementById("typeofleave").value;
        var to1 = new Date(t_date1);
        var from1 = new Date(f_date1);
        var today = new Date();
        var day = new Date(t_date1).getUTCDay();
        var day2 = new Date(f_date1).getUTCDay();

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

        //form date

        if (t_date1 == "") {
          document.getElementById("vt_date").innerHTML = "*please enter date";
          status = false;
        } else if (to1 <= today) {
          document.getElementById("vt_date").innerHTML =
            "*date should not be previous";
          status = false;
        } else if ([6, 0].includes(day2)) {
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
        } else if (to1 > from1) {
          document.getElementById("vf_date").innerHTML =
            "*please enter valid date";
          status = false;
        } else if ([6, 0].includes(day2)) {
          document.getElementById("vf_date").innerHTML =
            "please choose working day";
          status = false;
        }  else if (reason == "sick" && dds > 15) {
          document.getElementById("vf_date").innerHTML =
            "*sick leave should not be more than 15 days";
          status = false;
        }  else if (reason == "casual" && dds > 15) {
          document.getElementById("vf_date").innerHTML =
            "*casual leave should not be more than 15 days";
          status = false;
        }  else if (reason == "marriage" && dds > 15) {
          document.getElementById("vf_date").innerHTML =
            "*marriage leave should not be more than 15 days";
          status = false;
        }  else if (reason == "personal leave" && dds > 15) {
          document.getElementById("vf_date").innerHTML =
            "*personal leave should not be more than 15 days";
          status = false;
        }  else if (reason == "paternity" && dds > 30) {
          document.getElementById("vf_date").innerHTML =
            "*paternity should not be more than 30 days";
          status = false;
        }  else if (reason == "adoption" && dds > 30) {
          document.getElementById("vf_date").innerHTML =
            "*adoption leave should not be more than 30 days";
          status = false;
        }  else if (reason == "maternity" && dds > 180) {
          document.getElementById("vf_date").innerHTML =
            "*maternity leave should not be more than 180 days";
          status = false;
        } else {
          document.getElementById("vf_date").innerHTML = "";
        }

        return status;
      }
    </script>
  </body>
</html>