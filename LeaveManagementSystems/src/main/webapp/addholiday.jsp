<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <title>AddHolidays</title>
    <link rel="stylesheet" type="text/css" href="admin.css" />
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
    />
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
    />

    <script
      defer
      src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"
    ></script>
    <script
      defer
      src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"
    ></script>
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
                 <a href="dashboard.jsp"title="Dashboard"><img class="logo" src="logo.png" /></a>
              </div>
            </div>

            <div class="navbar-nav ms-auto">
              <a href="dashboard.jsp" class="nav-item nav-link" class="nav-item nav-link"ailgn="left" style="font-size: 16px;color:#333;text-transform:capitalize;font-family: Lato-Regular; ">Dashboard</a>
             <a href="viewholidaysadmin" class="nav-item nav-link" class="nav-item nav-link"style="font-size: 16px;color:#333;text-transform:capitalize;font-family: Lato-Regular; ">ViewHolidays</a>
              
              

                 <a href="logout"><img Class="logo" src="logout2.png"></a>
            </div>
          </div>
        </div>
      </nav>
      <br /><br /><br />
      <div class="container">
        <!-- Apply  -->
        <center> <div class="panel-title"style="font-size: 30px;color:#861F41;""><b>Add Holidays</b></center>

        <div
          class="col-sm-6 mb-6 mt-5"
          style="
            margin-left: 25%;
            box-shadow: 3px 3px 3px 3px #861f41;
            border-radius: 5px;
          "
        >
          <div class="card">
            <div class="card-body">
              <div class="panel-heading">
                <centere>
                </centere>
              </div>
              <br />

              <div class="panel-body">
                <form role="form" action="addholiday">
                  <fieldset>
                    <div class="form-group">
                      <h7>Date Of Holiday</h7>
                      <input
                        class="form-control"
                        placeholder="Date"
                        id="date"
                        name="hdate"
                        type="date"
                        autofocus=""
                        onchange="findDay()"
                        required
                      />
                                                                                                                       <%  String errorMessage = (String) session.getAttribute("messageh");
if (errorMessage != null) {%>
																						
  <h7 class="text-danger">
<%= errorMessage %>
	 </h7>
<%
   session.removeAttribute("messageh");
					 }
%>  <br>
         
                    </div>
                    <br />
                    <div class="form-group">
                      <input
                        type="text"
                        id="selectedOption"
                        class="form-control"
                        aria-label="Default select example"
                        name="hday"
                        placeholder="Day"
                        required
                        readonly
                      />
                    </div>
                    <br />
                    <div class="form-group">
                      <h7>Description</h7>
                      <input
                        type="text"
                        class="form-control"
                        aria-label="Default select example"
                        name="hdescription"
                        placeholder="Description"
                        required
                      />                    </div>
                    <br />

                    <input
                      type="submit"
                      value="Add Holiday"
                      class="btn btn-sm btn-dark"
                    />
                  </fieldset>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </header>
    <section class="footer" style="margin-top: 400px">
      <center>
        <p class="copyright">Copyright &copy; 2022 Axis Bank</p>
      </center>
    </section>
    <script>
      const findDay = () => {
        let dateDay = document.getElementById("date").value;
        dateDay1 = new Date(dateDay);
        const currentDayIndex = dateDay1.getDay();
        const dayList = [
          "Sunday",
          "Monday",
          "Tuesday",
          "Wednesday",
          "Thursday",
          "Friday",
          "Saturday",
        ];
        const selectedDay = (document.getElementById("selectedOption").value =
          dayList[currentDayIndex]);
      };
   
    </script>
  </body>
</html>