<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

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

</head>

<body>

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
                                <a class="nav-link" href="About.jsp">� propos de Nous</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Contact.jsp">Nous Contactez </a>
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
		                                             
							<div class="panel-body" style="">
                                    <center><img src="images/Password.jpg" height="130px" width="510px"></center><hr>
                                    <center>
												<%
												   try
												   {
												        String  Name = request.getParameter("name");
												        String  email = request.getParameter("email");
												        //out.println(Name+" "+email);
												        Class.forName("com.mysql.jdbc.Driver");
												        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/HospitalManagement","root","");
												       PreparedStatement ps = con.prepareStatement("select Pass from Table_Patient where  Pname=? and Email=? ");
												        ps.setString(1, Name);
												        ps.setString(2, email);
												        ResultSet rs = ps.executeQuery();
												        if(!rs.next())
												        {
												            out.println("<center><h3>Sorry! Patient Name or Patient Email-ID does not match.</h3></center>");
												            out.println("<hr><center><a href='ForgotPass.jsp'>Try Again</a></center>");
												        }
												        else
												        {
												            String   pwd = rs.getString("Pass");
												            out.print("<center><h3>Your Password is&nbsp= &nbsp;&nbsp;"+pwd+"</h3></center>");
												            out.println("<hr><center><a href='PatientLogin.jsp'>Login Now</a></center>");
												        }
												   }
												    catch(Exception e)
												    {
												        out.print(e);
												    }
												%>
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