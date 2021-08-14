<%-- 
    Document   : Principal
    Created on : 05/08/2020, 09:33:50 AM
    Author     : Alvaro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%--PRUEBA DE MENU --%>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700">
        <link rel="stylesheet" href="assets/css/style.css">
        <%--PRUEBA DE MENU --%>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.1/css/bootstrap.min.css" integrity="sha384-VCmXjywReHh4PwowAiWNagnWcLhlEJLA5buUprzK8rxFgeH0kww/aWY76TfkUoSX" crossorigin="anonymous">
        <title>OMNISIS</title>
        <STYLE TYPE="text/css" MEDIA=screen>
            <!-- 
            html,body{
                background-image: url('http://getwallpapers.com/wallpaper/full/a/5/d/544750.jpg');
                background-size: cover;
                background-repeat: no-repeat;
                height: 100%;
                font-family: 'Christmas Holiday', sans-serif;
                color: white;
            }



            .margin{
                margin-top:10px;    
                margin-bottom:10px;
            }

            .themeBtn {
                background: #ff5c00;
                color: #ffffff !important;
                display: inline-block;
                font-size: 15px;
                font-weight: 500;
                height: 30px;
                line-height: 0.8;
                padding: 10px 20px;
                text-transform: capitalize;
                border-radius: 1px;
                letter-spacing: 0.5px;
                border:0px !important;
                cursor:pointer;
                border-radius:100px;

            }
            a:hover{
                color: #ffffff;
                text-decoration:none;
            }
            .themeBtn:hover {
                background: rgb(255, 92, 0);
                color: #ffffff;
                box-shadow: 0 10px 25px -2px rgba(255, 92, 0, 0.6);
            }
            .themeBtn2 {
                background: #7600ff;
                color: #ffffff !important;
                display: inline-block;
                font-size: 15px;
                font-weight: 500;
                height: 50px;
                line-height: 0.8;
                padding: 18px 30px;
                text-transform: capitalize;
                border-radius: 1px;
                letter-spacing: 0.5px;
                border:0px !important;
                cursor:pointer;
                border-radius:100px;

            }
            .themeBtn2:hover {
                background: rgb(118, 0, 255);
                color: #ffffff;
                box-shadow: 0 10px 25px -2px rgba(118, 0, 255, 0.6);
            }
            .themeBtn3 {
                background: #ff2e4d;
                color: #ffffff !important;
                display: inline-block;
                font-size: 15px;
                font-weight: 500;
                height: 30px;
                line-height: 0.8;
                padding: 10px 20px;
                text-transform: capitalize;
                border-radius: 1px;
                letter-spacing: 0.5px;
                border:0px !important;
                cursor:pointer;
                border-radius:100px;

            }
            .themeBtn3:hover {
                background: rgb(255, 46, 77);
                color: #ffffff;
                box-shadow: 0 10px 25px -2px rgba(255, 46, 77, 0.6);
            }
            .themeBtn4 {
                background: #006eff;
                color: #ffffff !important;
                display: inline-block;
                font-size: 15px;
                font-weight: 500;
                height: 30px;
                line-height: 0.8;
                padding: 10px 20px;
                text-transform: fullwidth;
                border-radius: 1px;
                letter-spacing: 0.5px;
                border:0px !important;
                cursor:pointer;
                border-radius:100px;

            }
            .themeBtn4:hover {
                background: rgb(0, 110, 255);
                color: #ffffff;
                box-shadow: 0 10px 25px -2px rgba(0, 110, 255, 0.6);
            }



            --></style>
        <link rel="stylesheet" href="css/estilos.css">

    </head>
    <body>
        <%--PRUEBA DE MENU --%>
        <div>
            <nav class="navbar navbar-dark navbar-expand-md navigation-clean-search">
                <ul class="nav navbar-nav">
                    <form action="referenciales.jsp" method="POST">
                        <li class="dropdown">
                            <input type="submit" target="_blank" class="btn btn-light action-button" value="Archivos Referenciales">
                        </li>
                    </form>
                    <form action="usuarios.jsp" method="POST">
                        <li class="dropdown">
                            <input type="submit" target="_blank" class="btn btn-light action-button" value="Usuarios">
                        </li>
                    </form>
                    <form action="servicio.jsp" method="POST">
                        <li class="dropdown">
                            <input type="submit" target="_blank" class="btn btn-light action-button" value="Servicios">
                        </li>
                    </form>
                    <form action="importacion.jsp" method="POST">
                        <li class="dropdown">
                            <input type="submit" target="_blank" class="btn btn-light action-button" value="Importaciones">
                        </li>
                    </form>
                    <form action="compras.jsp" method="POST">
                        <li class="dropdown">
                            <input type="submit" target="_blank" class="btn btn-light action-button" value="Compras">
                        </li>
                    </form>
                    <form action="ventas.jsp" method="POST">
                        <li class="dropdown">
                            <input type="submit" target="_blank" class="btn btn-light action-button" value="Ventas">
                        </li>
                    </form>
                    <form action="cobros_pagos.jsp" method="POST">
                        <li class="dropdown">
                            <input type="submit" target="_blank" class="btn btn-light action-button" value="Cobranzas y Pagos">
                        </li>
                    </form>
                    <form action="informes.jsp" method="POST">
                        <li class="dropdown">
                            <input type="submit" target="_blank" class="btn btn-light action-button" value="Informes">
                        </li>
                    </form>
                </ul>

                <form class="form-inline mr-auto" target="_self">
                    <div class="form-group"><label for="search-field"><i class="fa fa-search"></i></label><input class="form-control search-field" type="search" name="search" id="search-field"></div>
                </form></span><a class="btn btn-light action-button" role="button" href="index.htm">Salir</a>
            </nav>
        </div>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
        <%--PRUEBA DE MENU --%>
        <div class="brand_logo_container">
            <img src="https://omni.com.py/img/logo.png" width="350" height="300" class="brand_logo" alt="Logo">
        </div>
        <br>
        <div class="container mt-4">
            <h1>Bienvenido al sistema ......<strong> ${usuar}</strong>  </h1>
        </div>

    </body>
</html>
