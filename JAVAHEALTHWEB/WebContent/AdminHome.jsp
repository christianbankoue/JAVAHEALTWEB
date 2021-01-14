<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>Administrateur interface</title>

    <!-- Bootstrap CSS CDN -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css"
        integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
    <!-- Our Custom CSS -->
    <link rel="stylesheet" href="style2.css">

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

            <ul class="list-unstyled components">
                <p>Hello Administrator</p>
                <li class="">
                    <a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false"
                        class="dropdown-toggle">Catalogue</a>
                    <ul class="collapse list-unstyled" id="homeSubmenu">
                        <li>
                            <a href="DoctorsList.jsp">Liste des médécins</a>
                        </li>
                        <li>
                            <a href="ViewPatients.jsp">Liste des patients</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="ViewReports.jsp">Rapport des patients</a>
                </li>
                <li>
                    <a href="ViewAppointment.jsp">Rendez-vous</a>
                </li>
                <li>
                    <a href="About.jsp">À propos de nous</a>
                </li>
            </ul>

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
                            <li class="nav-item">
                                <a class="nav-link" href="index.html">Accueil</a>
                            </li>
                            <li class="nav-item active">
                                <a class="nav-link" href="Feedback.jsp">Feedback</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="DoctorForm.jsp">Medecin</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="PatientForm.jsp">Patient</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>

            <div class="container-fluid">
                <div class="row no-gutter">
                    <!-- The image half -->
                    <div class="col-md-6 d-none d-md-flex bg-image bg-imageAdmin"></div>


                    <!-- The content half -->
                    <div class="col-md-6 bg-light">

                            <h2>Gestion des patients</h2>
                            <p>Vous pouvez consulter la liste des patients,
                                ajouter et supprimer les informations relatives a chaque
                                patient. Il a également la possibilite d'ajouter un nouveau
                                patient selon son état de sante dans cette session.</p>

                            <div class="line"></div>

                            <h2>Gestion des docteurs</h2>
                            <p>Dans cette rubrique, vous pouvez ajouter et
                                supprimer les informations liées a chaque docteur. Dans cette
                                session, l'administrateur peut egalement ajouter un docteur
                                dans un service specifique</p>

                            <div class="line"></div>

                            <h2>Gestion des prescriptions</h2>
                            <p>Dans cette rubrique, vous pouvez peut consulter la
                                liste des prescriptions fournie par chaque docteur a un patient
                                selon son probleme de santé.</p>

                            <div class="line"></div>

                            <h2>Compte-Rendu</h2>
                            <p>Ici, vous pouvez consulter la liste des
                                commentaires recue par les differents utilisateurs. Il peut
                                egalement en rajouter ou supprimer.</p>

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

    <script type="text/javascript" src="sidebar.js"></script>
</body>

</html>