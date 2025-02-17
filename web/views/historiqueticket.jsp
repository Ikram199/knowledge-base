<%-- 
    Document   : historiqueticket
    Created on : 17 nov. 2022, 09:54:19
    Author     : IKRAM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 
<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Historique tickets</title>

         <link rel="stylesheet" href="../css/typicons.css">
        <link rel="stylesheet" href="../css/vendorbundle.css">
        <!-- endinject -->
        <!-- plugin css for this page -->
        <!-- End plugin css for this page -->
        <!-- inject:css -->
        <link rel="stylesheet" href="../css/style.css">
  <link rel="shortcut icon" href="icone.png" />
</head>

<body>
  <div class="container-scroller">

    <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
        <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
          <button class="navbar-toggler navbar-toggler align-self-center d-none d-lg-flex" type="button" data-toggle="minimize">
            <span class="typcn typcn-th-menu"></span>
          </button>
        </div>
        <div class="navbar-menu-wrapper d-flex align-items-center justify-content-end">
       <ul class="navbar-nav mr-lg-2">

          </ul>
          <ul class="navbar-nav navbar-nav-right">

            <li class="nav-item dropdown d-flex">
              <a class="nav-link count-indicator dropdown-toggle d-flex justify-content-center align-items-center" id="messageDropdown" href="#" data-toggle="dropdown">
                <i class="typcn typcn-message-typing"></i>
                <span class="count bg-success">2</span>
              </a>
              <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="messageDropdown">
                <p class="mb-0 font-weight-normal float-left dropdown-header">Messages</p>

            </li>
            <li class="nav-item dropdown  d-flex">
              <a class="nav-link count-indicator dropdown-toggle d-flex align-items-center justify-content-center" id="notificationDropdown" href="#" data-toggle="dropdown">
                <i class="typcn typcn-bell mr-0"></i>
                <span class="count bg-danger">2</span>
              </a>
              <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="notificationDropdown">
                <p class="mb-0 font-weight-normal float-left dropdown-header">Notifications</p>
                <a class="dropdown-item preview-item">
                  <div class="preview-thumbnail">
                    <div class="preview-icon bg-success">
                      <i class="typcn typcn-info-large mx-0"></i>
                    </div>
                  </div>
             
                </a>
             
          

            </li>
            <li class="nav-item nav-profile dropdown">
              <a class="nav-link dropdown-toggle  pl-0 pr-0" href="#" data-toggle="dropdown" id="profileDropdown">
                <i class="typcn typcn-user-outline mr-0"></i>
                <span class="nav-profile-name">Hamza chahid</span>
              </a>
              <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="profileDropdown">

                <a class="dropdown-item">
                <i class="typcn typcn-power text-primary"></i>
                Logout
                </a>
              </div>
            </li>
          </ul>
          <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
            <span class="typcn typcn-th-menu"></span>
          </button>
        </div>
      </nav>
 
    <div class="container-fluid page-body-wrapper">

      <div class="theme-setting-wrapper">
          <div id="settings-trigger"><i class="typcn typcn-cog-outline"></i></div>
          <div id="theme-settings" class="settings-panel">
            <i class="settings-close typcn typcn-delete-outline"></i>
            <p class="settings-heading">SIDEBAR SKINS</p>
            <div class="sidebar-bg-options" id="sidebar-light-theme">
              <div class="img-ss rounded-circle bg-light border mr-3"></div>
              Light
            </div>
            <div class="sidebar-bg-options selected" id="sidebar-dark-theme">
              <div class="img-ss rounded-circle bg-dark border mr-3"></div>
              Dark
            </div>
            <p class="settings-heading mt-2">HEADER SKINS</p>
            <div class="color-tiles mx-0 px-4">
              <div class="tiles success"></div>
              <div class="tiles warning"></div>
              <div class="tiles danger"></div>
              <div class="tiles primary"></div>
              <div class="tiles info"></div>
              <div class="tiles dark"></div>
              <div class="tiles default border"></div>
            </div>
          </div>
        </div>

<nav class="sidebar sidebar-offcanvas" id="sidebar">
          <ul class="nav">
            <li class="nav-item">
              <div class="d-flex sidebar-profile">
                <div class="sidebar-profile-image">
                  <img src="../../images/faces/face29.png" alt="image">
                  <span class="sidebar-status-indicator"></span>
                </div>
                <div class="sidebar-profile-name">
                  <p class="sidebar-name">
                    Hamza chahid
                  </p>
                  <p class="sidebar-designation">
                    Bienvenu
                  </p>
                </div>
              </div>
              <div class="nav-search">
                <div class="input-group">
                  <input type="text" class="form-control" placeholder="rechercher..." aria-label="search" aria-describedby="search">
                  <div class="input-group-append">
                    <span class="input-group-text" id="search">
                      <i class="typcn typcn-zoom"></i>
                    </span>
                  </div>
                </div>
              </div>
                <p class="sidebar-menu-title">Menu</p>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#intervenant" aria-expanded="false" aria-controls="intervenant">
              <span class="menu-title">Les tickets</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="intervenant">
               <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="ticket.jsp">Afficher les tickets</a></li>
              </ul>
            
            <ul class="nav flex-column sub-menu">
              <li class="nav-item"> <a class="nav-link" href="ajoutticket.jsp">Creer un ticket</a></li>
            </ul>
            </div>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#intervenant" aria-expanded="false" aria-controls="intervenant">
              <span class="menu-title">Les demandes</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="intervenant">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="demandes.jsp">Afficher les demandes</a></li>
              </ul> 
            </div>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#intervenant" aria-expanded="false" aria-controls="intervenant">
              <span class="menu-title">Historique</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="intervenant">
                <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="historiqueticket.jsp">Historique des tickets</a></li>
              </ul>
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="historique.jsp">Historique des demandes</a></li>
              </ul>
            </div>
          </li>

      </nav>
    
      <div class="main-panel"><div>
          <div class="col-lg-10 stretch-card">
            <div class="card">
              <div class="card-body">
                <h4 class="card-title">Les tickets</h4>
                <div class="table-responsive pt-3">
                  <table class="table table-bordered">
                    <div ng-controller='inboxCtrl'>
                                  <div class="spacer input-group">
          <div class="input-group-addon">
          <span class="glyphicon glyphicon-search"></span>
          </div>
          <input type="text" class="form-control" placeholder="Rechercher un ticket" ng-model="recherche">
          <div class="input-group-btn">
            <button class="btn btn-default" ng-click="effacerRecherche()">
              <span class="glyphicon glyphicon-remove"></span>
            </button>
          </div>
        </div>
                      <table class="table table-hover"> 
                    <thead>
                      <tr>
                        <th>
                          Id ticket
                        </th>
                           <th>
                          Intervenant 
                        </th>
                           <th>
                          Id employé
                        </th>
                        <th>
                          Nom 
                        </th>
                        <th>
                          Prénom 
                        </th>
                        <th>
                          Email
                        </th>
                        <th>
                          Téléphone
                        </th>
                        <th>
                          Nature de problème
                        </th>
                        <th>
                          Description
                        </th>
                              <th>
                          Date de création
                        </th>
                                 <th>
                          Date fermeture
                        </th
                      </tr>
                    </thead>
                    
                  </table>
                </div>
              </div>
            </div>
          </div>

     
           
            
         
<script src="../js/vendor.bundle.base.js"></script>
  <script src="../js/off-canvas.js"></script>
  <script src="../js/hoverable-collapse.js"></script>
  <script src="../js/template.js"></script>
  <script src="../js/settings.js"></script>
  <script src="../js/todolist.js"></script>

</body>
</html>

