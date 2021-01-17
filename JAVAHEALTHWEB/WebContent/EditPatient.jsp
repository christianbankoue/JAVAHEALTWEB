<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<!DOCTYPE html>
<html lang="en">

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
		a {
			color: red;
		}
		
		h4{
			text-align: center;
		}
	</style>
</head>

<body>
<%!
            Connection con;
            PreparedStatement ps;
            ResultSet rs;
            Statement st;
            String name, email, gender, pass, age, contact, dob, status, pid, room, address, disease;
        %>
        <%
            try {
                String id = request.getParameter("id");
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/HospitalManagement", "root", "");
                st = con.createStatement();
                rs = st.executeQuery("select Pid,Pname,Email,Pass,Dob,Contact,Age,Gender,Pstatus,Disease,Address,RoomType from Table_Patient where Pid='" + id + "'");
                while (rs.next()) {
                    pid = rs.getString("Pid");
                    name = rs.getString("Pname");
                    email = rs.getString("Email");
                    pass = rs.getString("Pass");
                    contact = rs.getString("Contact");
                    dob = rs.getString("DOB");
                    gender = rs.getString("Gender");
                    age = rs.getString("Age");
                    status = rs.getString("Pstatus");
                    address = rs.getString("Address");
                    disease = rs.getString("Disease");
                    room = rs.getString("RoomType");
                    //Reg_Date=rs.getString("Reg_Date");
        %>
    <div class="wrapper">
        <!-- Sidebar  -->
        <nav id="sidebar">
            <div class="sidebar-header">
                <a href="index.html"><img src="img/logo.png" width="100%" height="100%"></a>
            </div>
        </nav>

        <!-- Page Content  -->
        <div id="content">

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
                            <li class="nav-item active">
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
	            <div class="col-md-6 d-none d-md-flex bg-image bg-imagePatient"></div>
	                <!-- For Demo Purpose -->
	                

                <!-- Registeration Form -->
                <div class="col-md-6 bg-light">
                <div class="login d-flex align-items-center py-5">
    
                    <!-- Demo content-->
                    
                    <div class="container">
                    	<h4>Créer un compte patient</h4>
                    	<br>
                        <div class="row">
	                    <form action="EditPProcess.jsp?id=<%=id%>" method="post" role="form" class="contactForm lead">
                                        <div class="row">
                                            <div class="col-xs-6 col-sm-6 col-md-6">
                                                <div class="form-group">
                                                    <label>Patient ID</label>
                                                    <input type="text" disabled name="pid" id="first_name" class="form-control input-md"   title="Patient ID" value="<%=pid%>">
                                                    <div class="validation"></div>
                                                </div>
                                            </div>
                                            <div class="col-xs-6 col-sm-6 col-md-6">
                                                <div class="form-group">
                                                    <label>Nom du patient</label>
                                                    <input type="text" name="name" id="last_name" class="form-control input-md" value="<%=name%>">
                                                    <div class="validation"></div>
                                                </div>
                                            </div>
                                            <div class="col-xs-6 col-sm-6 col-md-6">
                                                <div class="form-group">
                                                    <label>Email</label>
                                                    <input type="text" name="email" id="last_name" class="form-control input-md" value="<%=email%>">
                                                    <div class="validation"></div>
                                                </div>
                                            </div>
                                            <div class="col-xs-6 col-sm-6 col-md-6">
                                                <div class="form-group">
                                                    <label>Password</label>
                                                    <input type="password" name="pass" id="last_name" class="form-control input-md" value="<%=pass%>" disabled>
                                                    <div class="validation"></div>
                                                </div>
                                            </div>
                                            <div class="col-xs-6 col-sm-6 col-md-6">
                                                <div class="form-group">
                                                    <label>Nr téléphone.</label>
                                                    <input type="text" name="phone" id="first_name" class="form-control input-md" value="<%=contact%>">
                                                    <div class="validation"></div>
                                                </div>
                                            </div>
                                            <div class="col-xs-6 col-sm-6 col-md-6">
                                                <div class="form-group">
                                                    <label>Date de naissance</label>
                                                    <input type="date" name="dob" id="last_name" class="form-control input-md" value="<%=dob%>" >
                                                    <div class="validation"></div>
                                                </div>
                                            </div>
                                            <div class="col-xs-6 col-sm-6 col-md-6">
                                                <div class="form-group">
                                                    <label>Sexe</label>
                                                    <select name="gender">
                                                        <option selected="" value="-1" disabled="">Selectionner le genre</option>
                                                        <option>Homme</option>
                                                        <option>Femme</option>
                                                        <option>Autre</option>
                                                    </select>
                                                    <div class="validation"></div>
                                                </div>
                                            </div>
                                            <div class="col-xs-6 col-sm-6 col-md-6">
                                                <div class="form-group">
                                                    <label>Age</label>
                                                    <input type="text"  name="age" id="last_name" class="form-control input-md" value="<%=age%>">
                                                    <div class="validation"></div>
                                                </div>
                                            </div>
                                            <div class="col-xs-6 col-sm-6 col-md-6">
                                                <div class="form-group">
                                                    <label>État civil</label>
                                                    <select name="status">
                                                        <option selected="" value="-1" disabled="">Sélectionnez le statut</option>
                                                        <option>Marié</option>
                                                        <option>Divorcé</option>
                                                        <option>Célibataire</option>
                                                        <option>Veuve</option>
                                                    </select>
                                                    <div class="validation"></div>
                                                </div>
                                            </div>
                                            <div class="col-xs-6 col-sm-6 col-md-6">
                                                <div class="form-group">
                                                    <label>Adresse</label>
                                                    <input type="text"  name="address" id="last_name" class="form-control input-md" value="<%=address%>">
                                                    <div class="validation"></div>
                                                </div>
                                            </div>
                                            <div class="col-xs-6 col-sm-6 col-md-6">
                                                <div class="form-group">
                                                    <label>Maladie</label>
                                                    <input type="text"  name="disease" id="last_name" class="form-control input-md" value="<%=disease%>">
                                                    <div class="validation"></div>
                                                </div>
                                            </div>
                                            <div class="col-xs-6 col-sm-6 col-md-6">
                                                <div class="form-group">
                                                    <label>Type de chambre</label>
                                                    <select name="room">
                                                        <option selected="" value="-1" disabled="">Sélectionner le ty[pe de chambre]</option>
                                                        <option>Normal</option>
                                                        <option>Moyen</option>
                                                        <option>V.I.P</option>
                                                    </select>
                                                    <div class="validation"></div>
                                                </div>
                                            </div>

                                        </div>
                                </div>
                                <%
                                        }
                                    } catch (Exception e) {
                                        out.println(e);
                                    }
                                %>
                                <input type="submit" value="Update" class="btn btn-skin btn-block btn-lg">
                               
                            </div>
                        </div></div> </form>
            </div>
        </div>
    </div>
    </div>
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