<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>Doctor Home</title>

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
        
	<style>
		
		
		.table{
		    background-color: rgb(66, 46, 46);
		    color: white;
		    border: red;
		}
		
		.button{
			text-align: center;
		}
	</style>
</head>

<body>
	<%!
		Connection con;
		PreparedStatement ps;
		Statement st;
		ResultSet rs;
		String dname, pid,bill,pname,name,name1,id;
	%>
    <div class="wrapper">
        <!-- Sidebar  -->
        <nav id="sidebar">
            <div class="sidebar-header">
                <a href="index.html"><img src="img/logo.png" width="100%" height="100%"></a>
            </div>
            <ul class="list-unstyled components">
                
                <li><a href="index.html">Home</a></li>
                <li><a href="DoctorProfile.jsp">View Profile</a></li>
                <li><a href="DoctorAppointment.jsp">View Your Appointment</a></li>
                <li><a href="FeedbackForm.jsp">Feedback</a></li>

                <ul class="list-unstyled CTAs">
                    <li>
                        <a href="index.html">Deconnexion</a>
                    </li>
                </ul>

        </nav>

        <!-- Page Content  -->
        <div id="content">

            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <div class="container-fluid">
					<button type="button" id="sidebarCollapse" class="btn btn-info">
                        <i class="fas fa-align-left"></i>
                        <span>Toggle Sidebar</span>
                    </button>
                    <button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                        <i class="fas fa-align-justify"></i>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="nav navbar-nav ml-auto">
                            <li class="nav-item active">
                                <a class="nav-link" href="index.html">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Services.jsp">Services</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="About.jsp">À propos de Nous</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Contact.jsp">Contactez Nous</a>
                            </li>

                        </ul>
                    </div>
                </div>
            </nav>
            <div class="container-fluid" style="padding:0px;">
			<section id="intro" class="intro">
				<div class="intro-content">
					<div class="container">
						<div class="row">
						<div class="col-lg-6">
								<div class="wow fadeInUp" data-wow-duration="2s" data-wow-delay="0.2s">
								<img src="images/hospital.jpg" class="img-responsive" alt="" />
								</div>
							</div>	
							<div class="col-lg-6">
		                                             
		                                            <div class="panel-body" style="">
		                                                <center><img src="images/appointments.jpg" height="230px" width="510px"></center><hr>
		                                                
		                                                    <%
		                                                            id=(String)session.getAttribute("did");
		                                                            name1=(String)session.getAttribute("dname");
		                                                           //out.println(id+" "+name1);
		                                                            try {
		                                                                Class.forName("com.mysql.jdbc.Driver");
		                                                                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/HospitalManagement", "root", "");
		                                                                st = con.createStatement();
		                                                                rs = st.executeQuery("select Pid,Pname from Table_Appointment where Dname='"+name1+"'");
		                                                                if(!rs.next())
		                                                                {
		                                                                    %> 
		                                                                    <center><h1>No Appointment is Fixed With You.</h1></center>
		                                                                    <%
		                                                                }
		                                                                else
		                                                                {
		                                                                    rs = st.executeQuery("select Pid,Pname from Table_Appointment where Dname='"+name1+"'");
		                                                                while (rs.next()) {
		                                                                   pid = rs.getString("Pid");
		                                                                   name = rs.getString("Pname");
		                                                        %>         
		                                                        <center><b><%=name%></b>[<b><%=pid%></b>] &nbsp;&nbsp;&nbsp;Have fixed a appointment with you.</center>
		                                                        <center><a style="color:red;" href="ViewDoctorAppointment.jsp?id=<%=pid%>">View Appointment</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a style="color:red;" href="CancelAppointment.jsp?id=<%=pid%>">Cancel Appointment</a><hr></center>
		                                                        <%
		                                                                }
		                                                                    }
		                                                            } catch (Exception e) {
		                                                                out.println(e);
		                                                            }
		
		                                                        %>
		                                            </div> </div></div></div>
									</div>	
						</div>		
</section>
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
        <script type="text/javascript" src="sidebar.js"></script>    
</body>

</html>