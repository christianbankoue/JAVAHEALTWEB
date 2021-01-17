<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

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
                            <li style='margin-top: 12px;background-color: white;'>
                                <div class="dropdown">
                                    <button style='background-color:white;color:black;' class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">
                                        S'inscrire  <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu">
                                        <li><a href="PatientForm.jsp">Inscription du patient</a></li>
                                        <li><a href="DoctorForm.jsp">Inscription du m�decin</a></li>
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
                                                <b>Gestion de l'hopitale</b>
                                                <p>Lorsqu'il s'agit de choisir un h�pital, une chose est claire: la qualit� compte.
                                                    Et une tradition centenaire de fourniture de soins m�dicaux dans un environnement confortable et pratique
                                                    signifie la tranquillit� d'esprit pour les milliers de patients pris en charge par les m�decins et
                                                    infirmi�res � l'h�pital de d�monstration chaque ann�e..</p>
                                                       <b>Un tradition de qualit�</b> 
                                                       <p>
                                                           Depuis juillet 2017, The Demo Hospital est d�tenu et exploit� conjointement par un partenariat
                                                           entre XYZ et une filiale d'Universal Health Services Inc., soci�t� bas�e � l'AP qui
                                                           est l'une des plus grandes soci�t�s de gestion des soins de sant� du pays. Aux termes de ce
                                                           partenariat, nomm� The District Hospital Partners, ABC, PQR d�tient 80 pour cent
                                                           int�r�t et l'Universit� d�tient un int�r�t de 20%.
                                                       </p>
                                            <b>Notre Mission</b> 
                                            <p>
                                                La mission de l'h�pital est de fournir des soins de sant� de la plus haute qualit�, une technologie de pointe
                                                et un service de classe mondiale � nos patients dans une universit�
                                                centre m�dical d�di� � l'�ducation et � la recherche.
                                            </p>
                                            <b>Notre Vision</b> 
                                            <p>
                                                Ensemble, nous poursuivrons notre passion pour la gu�rison, en d�couvrant les perc�es m�dicales et
                                                am�liorer des vies. Tout en d�veloppant les leaders de demain, nous gagnerons � notre communaut�
                                                confiance et reconnaissance comme premier choix pour les soins m�dicaux complexes. 
                                            </p>
                                            <b>Nos principes</b> 
                                            <p>Nous r�alisons cette vision gr�ce � notre engagement envers les principes suivants:</p>
                                    <ul style="list-style-type: circle;color: red;">                                        
                                        <li><b>Service d'excellence.</b></li>
                                        <li><b>Amelioration de la qualit�.</b></li>
                                        <li><b>D�veloppement des employ�s.</b></li>
                                        <li><b>Traitement �thique et �quitable.</b></li>
                                        
                                    </ul>
                                            <b>Accreditation</b> 
                                            <p>
                                               L'h�pital est accr�dit� par l'OMS, et le centre Pasteur de Paris.
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