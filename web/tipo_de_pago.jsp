<%-- 
    Document   : tipo_de_pago.jsp
    Created on : 07/06/2021, 03:51:36 PM
    Author     : Alvaro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro de tipo de pagos</title>
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <STYLE TYPE="text/css" MEDIA=screen>
            <!-- 
            html,body{
                background-image: url('https://cdn.hipwallpaper.com/m/62/20/4rKTDz.jpg');
                background-size: cover;
                background-repeat: no-repeat;
                height: 100%;
                font-family: 'Numans', sans-serif;
                color: white;

                .custab{
                    border: 1px solid #ccc;
                    padding: 5px;
                    margin: 5% 0;
                    box-shadow: 3px 3px 2px #ccc;
                    transition: 0.5s;
                }
                .custab:hover{
                    box-shadow: 3px 3px 0px transparent;
                    transition: 0.5s;
                }
            }

            .margin{
                margin-top:-3px;    
                margin-bottom:0px;
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
                background: #0f8515;
                color: #ffffff !important;
                display: inline-block;
                font-size: 12px;
                font-weight: 500;
                height: 30px;
                line-height: 0.8;
                padding: 10px 20px;
                text-transform: capitalize;
                border-radius: 1px;
                letter-spacing: 0.5px;
                border:0px !important;
                cursor:pointer;
                border-radius:80px;

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


            .input-icons i {
                position: absolute;
            }

            .input-icons {
                width: 100%;
                margin-bottom: 10px;
            }

            .icon {
                padding: 10px;
                min-width: 40px;
            }



            --></style>

    </head>
    <body>
        <h1>Registro de tipo de pagos</h1>

        <nav class="navbar navbar-dark bg-clear"> 
            
            <form action="referenciales.jsp" method="POST">
                <button type="submit" enabled class="btn btn-lg btn-warning"value="Volver"><i class="fa fa-undo"></i>Volver</button>
            </form>
        </nav>
        <br>

        <form class="form-horizontal">
            <fieldset>

                <div class="form-group">
                    <label class="col-md-4 control-label" for="textinput">Descripción</label>  
                    <div class="col-md-4">
                        <input id="textinput" name="textinputclave" type="text"  class="form-control input-md">
                        <span class="help-block">Ingrese tipo de pago</span>  
                    </div>
                </div>


                <!-- Button -->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="singlebutton">Nuevo</label>
                    <div class="col-md-4">
                        <button id="singlebutton" name="singlebutton" class="btn btn-success"><i class="fa fa-folder"></i></button>
                    </div>
                </div>

                <!-- Button -->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="singlebutton">Editar</label>
                    <div class="col-md-4">
                        <button id="singlebutton" name="singlebutton" class="btn btn-primary"><i class="fa fa-edit"></i></button>
                    </div>
                </div>

                <!-- Button -->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="singlebutton">Guardar</label>
                    <div class="col-md-4">
                        <button id="singlebutton" name="singlebutton" class="btn btn-primary"><i class="fa fa-save"></i></button>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-4 control-label" for="singlebutton">Buscar</label>
                    <div class="col-md-4">
                        <button id="singlebutton" name="singlebutton" class="btn btn-primary"><i class="fa fa-search"></i></button>
                    </div>
                </div>
                <br><br>


                <!-- Button -->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="singlebutton">Borrar</label>
                    <div class="col-md-4">
                        <button id="singlebutton" name="singlebutton" class="btn btn-danger"><i class="fa fa-trash"></i></button>
                    </div>
                </div>
                <br>
            </fieldset>
    </body>
</html>
