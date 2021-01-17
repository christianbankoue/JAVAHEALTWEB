<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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

    <title>Accueil</title>

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
String name,dname,pid,bill,disease,room,gender,age,email,adate,ddate;
%>
    <div class="">
        <!-- Sidebar  -->
        
        <!-- Page Content  -->
        <div>

            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <div class="container-fluid">

                    <!-- <button type="button" id="sidebarCollapse" class="btn btn-info">
                        <i class="fas fa-align-left"></i>
                        <span>Toggle Sidebar</span>
                    </button> -->
                    <h3>Centre Hospitalier Universitaire</h3>
                    <button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                        <i class="fas fa-align-justify"></i>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="nav navbar-nav ml-auto">
                            <li class="nav-item active">
                                <a class="nav-link" href="AdminHome.jsp">Tableau de bord</a>
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
       		
                <div class="table-responsive"> 
<table border="3" class="table table-striped">
<tr>
<th>PID</th><th>Nom</th><th>Email</th><th>Sexe</th><th>Age</th><th>Nom du docteur</th><th>Nom de la maladie</th><th>Room Type</th><th>Admit Date</th><th>Date de sortie</th><th>facture totale</th>
</tr>
<%
try
{
        String id=(String)session.getAttribute("pid");
        //out.println(id);
        Date date = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat();
        adate = sdf.format(date);
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/HospitalManagement","root","");
	st=con.createStatement(); 
	rs=st.executeQuery("select b.Pid, b.Pname, b.Dname, b.Disease,b.BillAmount,p.Email,p.Gender,p.Age,p.RoomType,p.Reg_Date from Patient_Bill b INNER JOIN  Table_Patient p ON b.Pid=p.Pid");
	while(rs.next())
	{
		pid=rs.getString("Pid");
		name=rs.getString("Pname");
		dname=rs.getString("Dname");
                disease=rs.getString("Disease");
                bill=rs.getString("BillAmount");
                email=rs.getString("Email");
                age=rs.getString("Age");
                room=rs.getString("RoomType");
                gender=rs.getString("Gender");
                ddate=rs.getString("Reg_Date");
                ddate=rs.getString("BillAmount");
%>
<tr>
    <td><%=pid%></td><td><%=name%></td><td><%=email%></td><td><%=gender%></td><td><%=age%></td><td><%=dname%></td><td><%=disease%></td><td><%=room%><td><%=ddate%></td><td><%=adate%></td></td><td><%=bill%></td>
</tr>	
<%	
	}
}
catch(Exception e)
{
	out.println(e);
}
%>
</table>


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