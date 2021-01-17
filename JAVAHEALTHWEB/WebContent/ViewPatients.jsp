<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>Home</title>

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
	</style>	

</head>

<body>
<%!
Connection con;
PreparedStatement ps;
Statement st;
ResultSet rs;
String name,email,gender,pass,age,Reg_Date,contact,dob,status,pid,room,address,disease;
%>

    <div class="Wrapper">
        <!-- Sidebar  -->
        
        <!-- Page Content  -->
        <div>

            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <div class="container-fluid">
                    <h3>Hospital Management System</h3>
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
    <div class="container-fluid">
    	<h4>Patients List</h4>
        <div class="row no-gutter">
            <!-- The image half -->
       		
                <div class="table-responsive"> 
<table border="3" class="table table-striped">
<tr>
<th>PID</th><th>Pname</th><th>Email</th><th>Contact No.</th><th>DOB</th><th>Gender</th><th>Age</th><th>Status</th><th>Address</th><th>Disease</th><th>Room Type</th><th>Registered Date</th><th>Action</th>
</tr>
<%
try
{
       // String id=(String)session.getAttribute("pid");
        //out.println(id);
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/HospitalManagement","root","");
	st=con.createStatement(); 
	rs=st.executeQuery("select * from Table_Patient");
	while(rs.next())
	{
		pid=rs.getString("Pid");
		name=rs.getString("Pname");
		email=rs.getString("Email");
                //pass=rs.getString("Pass");
                contact=rs.getString("Contact");
                dob=rs.getString("Dob");
		gender=rs.getString("Gender");
		age=rs.getString("Age");
                status=rs.getString("Pstatus");
		address=rs.getString("Address");
		disease=rs.getString("Disease");
                room=rs.getString("RoomType");
		Reg_Date=rs.getString("Reg_Date");
%>
<tr>
	<td><%=pid%></td><td><%=name%></td><td><%=email%></td><td><%=contact%></td><td><%=dob%></td><td><%=gender%><td><%=age%><td><%=status%><td><%=address%><td><%=disease%></td><td><%=room%></td><td><%=Reg_Date%></td>
        <td><a href="EditPatient.jsp?id=<%=pid%>">Edit</a>&nbsp;&nbsp;&nbsp;<a href="DeletePatient.jsp?id=<%=pid%>">Delete</a></td>
</tr>	
<%	
	}
}
catch(Exception e)
{
	out.println(e);
}
%>
</table></div>


            </div><!-- End -->
    			<div class="button"><button><a href="AddPatient.jsp">Add Patient</a></button></div>
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