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
                                <a class="nav-link" href="About.jsp">Ã€ propos de Nous</a>
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
                                        <li><a href="DoctorForm.jsp">Inscription du médecin</a></li>
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
                                                <p>Lorsqu'il s'agit de choisir un hôpital, une chose est claire: la qualité compte.
                                                    Et une tradition centenaire de fourniture de soins médicaux dans un environnement confortable et pratique
                                                    signifie la tranquillité d'esprit pour les milliers de patients pris en charge par les médecins et
                                                    infirmières à l'hôpital de démonstration chaque année..</p>
                                                       <b>Un tradition de qualité</b> 
                                                       <p>
                                                           Depuis juillet 2017, The Demo Hospital est détenu et exploité conjointement par un partenariat
                                                           entre XYZ et une filiale d'Universal Health Services Inc., société basée à l'AP qui
                                                           est l'une des plus grandes sociétés de gestion des soins de santé du pays. Aux termes de ce
                                                           partenariat, nommé The District Hospital Partners, ABC, PQR détient 80 pour cent
                                                           intérêt et l'Université détient un intérêt de 20%.
                                                       </p>
                                            <b>Notre Mission</b> 
                                            <p>
                                                La mission de l'hôpital est de fournir des soins de santé de la plus haute qualité, une technologie de pointe
                                                et un service de classe mondiale à nos patients dans une université
                                                centre médical dédié à l'éducation et à la recherche.
                                            </p>
                                            <b>Notre Vision</b> 
                                            <p>
                                                Ensemble, nous poursuivrons notre passion pour la guérison, en découvrant les percées médicales et
                                                améliorer des vies. Tout en développant les leaders de demain, nous gagnerons à notre communauté
                                                confiance et reconnaissance comme premier choix pour les soins médicaux complexes. 
                                            </p>
                                            <b>Nos principes</b> 
                                            <p>Nous réalisons cette vision grâce à notre engagement envers les principes suivants:</p>
                                    <ul style="list-style-type: circle;color: red;">                                        
                                        <li><b>Service d'excellence.</b></li>
                                        <li><b>Amelioration de la qualité.</b></li>
                                        <li><b>Développement des employés.</b></li>
                                        <li><b>Traitement éthique et équitable.</b></li>
                                        
                                    </ul>
                                            <b>Accreditation</b> 
                                            <p>
                                               L'hôpital est accrédité par l'OMS, et le centre Pasteur de Paris.
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