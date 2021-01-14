<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

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

</head>

<body>

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

                    <!-- <button type="button" id="sidebarCollapse" class="btn btn-info">
                        <i class="fas fa-align-left"></i>
                        <span>Toggle Sidebar</span>
                    </button> -->
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
                            <li style='margin-top: 12px;background-color: white;'>
                                <div class="dropdown">
                                    <button style='background-color:white;color:black;' class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">
                                        Sign Up  <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu">
                                        <li><a href="PatientForm.jsp">Patient Sign Up</a></li>
                                        <li><a href="DoctorForm.jsp">Doctor Sign Up</a></li>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>

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
                                                <center><img src="images/About.png" width="510px"></center><hr>
                                                <b>Hospital Management</b>
                                                <p>When it comes to choosing a hospital, one thing is clear: quality counts. 
                                                    And a century-long tradition of providing medical care in a comfortable and convenient environment 
                                                    means peace of mind for the thousands of patients who are cared for by the doctors and 
                                                    nurses at the Demo Hospital each year.</p>
                                                       <b>A Tradition of Quality</b> 
                                                       <p>
                                                           Since July 2017, The Demo Hospital has been jointly owned and operated by a partnership 
                                                           between XYZ and a subsidiary of Universal Health Services Inc. PA-based company that 
                                                           is one of the nation's largest health care management companies. Under the terms of this 
                                                           partnership, named The District Hospital Partners, ABC, PQR holds an 80 percent 
                                                           interest and the University holds a 20 percent interest.
                                                       </p>
                                            <b>Mission</b> 
                                            <p>
                                                The mission of The Demo Hospital is to provide the highest quality health care, advanced technology 
                                                and world class service to our patients in an academic 
                                                medical center dedicated to education and research.
                                            </p>
                                            <b>Vision</b> 
                                            <p>
                                                Together, we will pursue our passion for healing, discovering medical breakthroughs and 
                                                improving lives. While developing tomorrow's leaders, we will earn our community's
                                                trust and recognition as the first choice for complex medical care. 
                                            </p>
                                            <b>Principles</b> 
                                            <p>We realize this vision through our commitment to the following principles:</p>
                                    <ul style="list-style-type: circle;color: red;">                                        
                                        <li><b>Service excellence.</b></li>
                                        <li><b>Quality improvement.</b></li>
                                        <li><b>Employee development.</b></li>
                                        <li><b>Ethical and fair treatment.</b></li>
                                        
                                    </ul>
                                            <b>Accreditation</b> 
                                            <p>
                                               The hospital is accredited by The Joint Commission and licensed by the District of Thane, Maharashtra Regulatory Affairs Department.
                                            </p>
                                            
                                            </div>
                                            
                                                        
                                        </div></div></div>
                                                        
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
</body>

</html>