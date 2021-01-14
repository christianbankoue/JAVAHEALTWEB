<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.util.Random"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<!DOCTYPE html>
<html lang="en">

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
            Date date = new Date();
            SimpleDateFormat sdf = new SimpleDateFormat();
            String s = sdf.format(date);
            String pId = "";
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
	        <div class="row no-gutter">
	            <!-- The image half -->
	            <div class="col-md-6 d-none d-md-flex bg-image bg-imagePatient"></div>
	                <!-- For Demo Purpose -->
	                

                <!-- Registeration Form -->
                <div class="col-md-6 bg-light">
                <div class="login d-flex align-items-center py-5">
    
                    <!-- Demo content-->
                    
                    <div class="container">
                    	<h4>Create a patient Account</h4>
                    	<br>
                        <div class="row">
	                    <form action="AddPProcess.jsp" method="post" role="form" class="contactForm lead">
	                        <div class="row" style="margin-top: 0px;">
	                            <div class="col-xs-6 col-sm-6 col-md-6" style="margin-top: 0px;">
	                                <div class="form-group">
	                                    <label>Patient ID</label>
	                                    <input type="text" name="pid" id="first_name" class="form-control input-md"
	                                        title="Patient ID" value="<% 
	                                        		Random random = new Random();
	                                        Set<Integer> randomNumbers = new HashSet<>();
	                                        while(randomNumbers.size()<1){
	                                            randomNumbers.add( new Integer(random.nextInt(999) + 100) );
	                                        }
	                                        for(Integer randomNumber : randomNumbers){
	                                            out.println("PID- "+randomNumber);
	                                        }
	                                        %>" disabled>
	                                    <div class="validation"></div>
	                                </div>
	                            </div>
	                            <div class="col-xs-6 col-sm-6 col-md-6">
	                                <div class="form-group">
	                                    <label>Patient Name</label>
	                                    <input type="text" pattern="[a-zA-Z][a-zA-Z ]+[a-zA-Z]$" name="name" id="last_name"
	                                        class="form-control input-md" required=""
	                                        title="Patient name can not be blank and should not contain any digit.">
	                                    <div class="validation"></div>
	                                </div>
	                            </div>
	                            <div class="col-xs-6 col-sm-6 col-md-6">
	                                <div class="form-group">
	                                    <label>Email</label>
	                                    <input type="email" name="email" placeholder="me@example.com" id="last_name"
	                                        class="form-control input-md" required=""
	                                        title="Email can not be blank and should contain @ character.">
	                                    <div class="validation"></div>
	                                </div>
	                            </div>
	                            <div class="col-xs-6 col-sm-6 col-md-6">
	                                <div class="form-group">
	                                    <label>Password</label>
	                                    <input type="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" name="pass"
	                                        class="form-control input-md" required=""
	                                        title="Password should contain at least 1 Uppercase ,1 Lowercase and digit and minimum of 6 character.">
	                                    <div class="validation"></div>
	                                </div>
	                            </div>
	                            <div class="col-xs-6 col-sm-6 col-md-6">
	                                <div class="form-group">
	                                    <label>Contact No.</label>
	                                    <input type="number" name="phone" id="first_name" class="form-control input-md"
	                                        required="" title="Phone no. should not contain any alaphabets.">
	                                    <div class="validation"></div>
	                                </div>
	                            </div>
	                            <div class="col-xs-6 col-sm-6 col-md-6">
	                                <div class="form-group">
	                                    <label>Patient DOB</label>
	                                    <input type="date" name="dob" id="last_name" class="form-control input-md"
	                                        required="">
	                                    <div class="validation"></div>
	                                </div>
	                            </div>
	                            <div class="col-xs-6 col-sm-6 col-md-6">
	                                <div class="form-group">
	                                    <label>Patient Gender</label>
	                                    <select name="gender" class="form-control" required="">
	                                        <option selected="" value="-1" disabled="">Select Gender</option>
	                                        <option>Male</option>
	                                        <option>Female</option>
	                                        <option>Other</option>
	                                    </select>
	                                    <div class="validation"></div>
	                                </div>
	                            </div>
	                            <div class="col-xs-6 col-sm-6 col-md-6">
	                                <div class="form-group">
	                                    <label>Patient Age</label>
	                                    <input type="number" name="age" id="last_name" class="form-control input-md"
	                                        required="" title="Age should not contain any alaphabets.">
	                                    <div class="validation"></div>
	                                </div>
	                            </div>
	                            <div class="col-xs-6 col-sm-6 col-md-6">
	                                <div class="form-group">
	                                    <label>Marital Status</label>
	                                    <select name="status" class="form-control" required="">
	                                        <option selected="" value="-1" disabled="">Select Status</option>
	                                        <option>Married</option>
	                                        <option>Divorced</option>
	                                        <option>Single</option>
	                                        <option>Widow</option>
	                                    </select>
	                                    <div class="validation"></div>
	                                </div>
	                            </div>
	                            <div class="col-xs-6 col-sm-6 col-md-6">
	                                <div class="form-group">
	                                    <label>Address</label>
	                                    <input type="Address" name="age" id="last_name" class="form-control input-md"
	                                        required="" title="Age should not contain any alaphabets.">
	                                    <div class="validation"></div>
	                                </div>
	                            </div>
	                            <div class="col-xs-6 col-sm-6 col-md-6">
	                                <div class="form-group">
	                                    <label>Select Disease</label>
	                                    <select name="disease" class="form-control" required="">
	                                        <option selected="" value="-1" disabled="">Select Disease</option>
	                                        <option value="Normal Diseases">Normal Diseases</option>
	                                        <option value="Cancer">Cancer</option>
	                                        <option value="Celiac Disease">Celiac Disease</option>
	                                        <option value="Heart Disease">Heart Disease</option>
	                                        <option value="Crohn's & Colitis">Crohn's & Colitis</option>
	                                        <option value="Infectious Diseases">Infectious Diseases</option>
	                                        <option value="Liver Disease">Liver Disease</option>
	                                        <option value="Big Diseases">Big Diseases</option>
	                                        <option value="Private Diseases">Private Diseases</option>
	                                        <option value="Ear, Nose and Throat Diseases">ENT Diseases</option>
	                                        <option value="Other Diseases">Other Diseases</option>
	                                    </select>
	                                    <div class="validation"></div>
	                                </div>
	                            </div>
	                            <div class="col-xs-6 col-sm-6 col-md-6">
	                                <div class="form-group">
	                                    <label>Room Type</label>
	                                    <select name="room" class="form-control" required="">
	                                        <option selected="" value="-1" disabled="">Select Room Type</option>
	                                        <option value="Normal">Normal</option>
	                                        <option value="Medium">Medium</option>
	                                        <option value="V.I.P">V.I.P</option>
	                                    </select>
	                                    <div class="validation"></div>
	                                </div>
	                            </div>
	
	                        </div>
	                        <div class="form-group col-lg-12 mx-auto mb-0">
	                            <input type="submit" value="Add" class="btn btn-skin btn-block btn-lg"
	                                onclick="return check();">
	                        </div>
	
	                </div>
	
	
	                </form>
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