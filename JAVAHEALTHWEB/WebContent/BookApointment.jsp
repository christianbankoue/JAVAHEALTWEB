<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>JSP</title>

    <!-- Bootstrap CSS CDN -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css"
        integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
    <!-- Our Custom CSS -->
    <link rel="stylesheet" href="style2.css">
    <!-- <link href="css/style.css" rel="stylesheet"> -->
    <!-- Scrollbar Custom CSS -->
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.5/jquery.mCustomScrollbar.min.css">

    <!-- Font Awesome JS -->
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js"
        integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ"
        crossorigin="anonymous"></script>
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js"
        integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY"
        crossorigin="anonymous"></script>
    
    <style type="text/css">    
        a{
			text-decoration: none;
			color:red;
		}
		.button{
			text-align: center;
			margin-right: auto;
		}
		
		h4 {
			text-align: center;
		}
		
		section {
			    margin-left: auto;
    			margin-right: auto;
    			border: solid black 1px;
    			align-text : center;
		}
	</style>	
	
	<script language="javascript" type="text/javascript">  
      var xmlHttp;  
      function showDoctor(str){
      if (typeof XMLHttpRequest !== "undefined"){
      xmlHttp= new XMLHttpRequest();
      }
      else if (window.ActiveXObject){
      xmlHttp= new ActiveXObject("Microsoft.XMLHTTP");
      }
      if (xmlHttp===null){
      alert("Browser does not support XMLHTTP Request");
      return;
      } 
      var url="doctors.jsp";
      url +="?count=" +str;
      xmlHttp.onreadystatechange = stateChange;
      xmlHttp.open("GET", url, true);
      xmlHttp.send(null);
      }

      function stateChange(){   
      if (xmlHttp.readyState===4 || xmlHttp.readyState==="complete"){   
      document.getElementById("doctor").innerHTML=xmlHttp.responseText; 
      }   
      }

      function showFees(str){
      if (typeof XMLHttpRequest !== "undefined"){
        xmlHttp= new XMLHttpRequest();
        }
      else if (window.ActiveXObject){
        xmlHttp= new ActiveXObject("Microsoft.XMLHTTP");
        }
      if (xmlHttp===null){
      alert("Browser does not support XMLHTTP Request");
      return;
      } 
      var url="fees.jsp";
      url +="?count=" +str;
      xmlHttp.onreadystatechange = stateChange1;
      xmlHttp.open("GET", url, true);
      xmlHttp.send(null);
      }
      function stateChange1(){   
      if (xmlHttp.readyState===4 || xmlHttp.readyState==="complete"){   
      document.getElementById("fees").innerHTML=xmlHttp.responseText;   
      }   
      }
      </script>  

</head>

<body>
		<%!
            Date date = new Date();
            SimpleDateFormat sdf = new SimpleDateFormat();
            String s = sdf.format(date);
            Connection con;
            Statement st;
            ResultSet rs;
            String dname, fees,dept;
        %>

    <div>
        
        <!-- Page Content  -->
        <div>

            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <div class="container-fluid">
                    <h3>Centre Hospitalier Universitaire</h3>
                    <button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                        <i class="fas fa-align-justify"></i>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="nav navbar-nav ml-auto">
                            <li class="nav-item">
                                <a class="nav-link" href="index.html">Accueil</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Services.jsp">Services</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="About.jsp">À propos de Nous</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Contact.jsp">Nous Contactez</a>
                            </li>
                            
                        </ul>
                    </div>
                </div>
            </nav>
    <div class="container-fluid">
        <div class="row no-gutter">
            <!-- The image half -->
       		
		<section id="intro" class="intro">
				<div class="intro-content">
					<div class="container">
						<div class="row">
							
							<div class="col-lg-12">
		                                             
							<div class="panel-body">
                                    <center><%
                                        String id = (String) session.getAttribute("pid");
                                        String name = (String) session.getAttribute("pname");
                                        out.println("Welcome" + "&nbsp;&nbsp;&nbsp;");
                                        out.println("<b>" + name + "</b>");
                                        out.println("<b>&nbsp;&nbsp;&nbsp;&nbsp;" + "[" + id + "]</b>");
                                        %></center><hr>
                                    <center><h3>Prendre un rendez-vous</h3></center><hr>
                                    <form action="AppointmentReg.jsp" method="post" name="form" class="contactForm lead">
                                        <div class="row">

                                            <div class="col-xs-6 col-sm-6 col-md-6">
                                                <div class="form-group">
                                                    <label>Sélectionnez un département</label>
                                                    <select name='department' onchange="showDoctor(this.value)" required="" class="form-control">
                            <option selected="" value="none" disabled="">Sélectionnez un département</option>
                                                      <%
                                try
                                {
                                    String query="select * from dept";
                                    Class.forName("com.mysql.jdbc.Driver");
                                     Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/HospitalManagement", "root", "");
                                    Statement st = con.createStatement();
                                    ResultSet   rs = st.executeQuery(query);
                                    while (rs.next()) 
                                    {
                                        %>
                                        <option value="<%=rs.getInt("deptid")%>" 
                                                <%
                                                    if(request.getParameter("Department")!=null)
                                                    {
                                                           if(rs.getInt("deptid")==Integer.parseInt(request.getParameter("Department")))  
                                                           {
                                                               out.println("Selected");
                                                           }
                                                    }
                                                %>
                                                ><%=rs.getString("deptName")%></option>
                                        <%
                                    }
                                     
                                }
                                catch(Exception e)
                                {
                                    
                                }
                            %>
                                                    </select>
                                                    <div class="validation"></div>
                                                </div>
                                            </div>
                                            <div class="col-xs-6 col-sm-6 col-md-6">
                                                <div class="form-group">
                                                    <label>Sélectionnez un médecin</label>
                                                    <div id="doctor">
                                                        <select name='doctor' class="form-control">  
                                                                <option value='-1'>Sélectionnez un médecin</option>  
                                                                </select>
                                                    </div>                                         
                                                    <div class="validation"></div>
                                                </div>
                                            </div>
                                            <div class="col-xs-6 col-sm-6 col-md-6">
                                                <div class="form-group">
                                                    <label>Frais de consultation</label>
                                                    <div id="fees">
                                                        <select name='fees' class="form-control">  
                                                                <option value='-1'>Frais de médecin</option>  
                                                                </select>
                                                    </div>  
                                                    <div class="validation"></div>
                                                </div>
                                            </div>

                                            <div class="col-xs-6 col-sm-6 col-md-6">
                                                <div class="form-group">
                                                    <label>Sélectionnez la date de rendez-vous</label>
                                                    <input type="date" required="" name="date" id="first_name" class="form-control input-md" title="Appointment Date">
                                                    <div class="validation"></div>
                                                </div>
                                            </div>
                                            <div class="col-xs-6 col-sm-6 col-md-6">
                                                <div class="form-group">
                                                    <label>Sélectionnez l'heure de rendez-vous</label>
                                                    <input type="time" required="" name="time" id="first_name" class="form-control input-md" title="Appointment Time">
                                                    <div class="validation"></div>
                                                </div>
                                            </div>

                                        </div>
                                       <input type="submit" value="Submit" class="btn btn-skin btn-block btn-lg">
                                      
                                    </form>
                                    <center>
                                        <a style="color:red;" href="LastAppointment.jsp?id=<%=id%>">Afficher votre dernier rendez-vous</a>
                                    </center>
                                </div>
													</div>
									</div>	
							</div>		
						</div>		
					</div>	
		    </section>
		    
		    </div>


            </div><!-- End -->
    			
        </div>
    </div>
    	
    </div>

    <!-- jQuery CDN - Slim version (=without AJAX) -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <!-- Popper.JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"
        integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ"
        crossorigin="anonymous"></script>
    <!-- Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"
        integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm"
        crossorigin="anonymous"></script>
    <!-- jQuery Custom Scroller CDN -->
    <script
        src="https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.5/jquery.mCustomScrollbar.concat.min.js"></script>
</body>

</html>