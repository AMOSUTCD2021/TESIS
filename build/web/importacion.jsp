<%-- 
    Document   : importacion
    Created on : 17/06/2021, 04:43:35 PM
    Author     : Alvaro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <title>Importación</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
    <link rel="stylesheet" href="css/estiloformulario.css">
</head>
<style>
    body {
        background-color: #808080;
        background-image: url("https://b21importexport.com/wp-content/uploads/2020/05/WhatsApp-Image-2020-05-14-at-13.01.16-1080x675.jpeg");
    }
</style>
<body>
    <main class="page payment-page">
        <section class="payment-form dark">
            <div class="container">
                <div class="block-heading">
                    <h2>Registro de importaciones</h2>
                    <p>Por favor, complete los campos</p>
                </div>
                <form action="importacion" method="POST">
                    <div class="card-details">
                        <h3 class="title">Detalles de la importación</h3>
                        <div class="row">
                            <%-- Campo para completar--%>
                            <div class="form-group col-sm-7">
                                <label for="card-holder">Llamado</label>
                                <input id="card-holder" type="text" name="llamadotxt" class="form-control" placeholder="ID llamado" aria-label="Card Holder" aria-describedby="basic-addon1">
                            </div>
                            <div class="form-group col-sm-7">
                                <label for="card-holder">Fecha de importacón</label>
                                <input   id="card-holder" type="text" name="fechaimporttxt" class="form-control" placeholder="Fecha" aria-label="Card Holder" aria-describedby="basic-addon1">
                            </div>
                            <div class="form-group col-sm-7">
                                <label for="card-holder">Item</label>
                                <input id="card-holder" type="text" name="itemtxt" class="form-control" placeholder="Item" aria-label="Card Holder" aria-describedby="basic-addon1">
                            </div>
                            <div class="form-group col-sm-7">
                                <label for="card-holder">Cantidad</label>
                                <input   id="card-holder" type="text" name="cantimporttxt" class="form-control" placeholder="Cantidad" aria-label="Card Holder" aria-describedby="basic-addon1">
                            </div>
                            <div class="form-group col-sm-7">
                                <label for="card-holder">Procedencia</label>
                                <input id="card-holder" type="text" name="procedenciatxt" class="form-control" placeholder="Procedencia" aria-label="Card Holder" aria-describedby="basic-addon1">
                            </div>
                            <div class="form-group col-sm-7">
                                <label for="card-holder">Courrier</label>
                                <input   id="card-holder" type="text" name="courriertxt" class="form-control" placeholder="Courrier" aria-label="Card Holder" aria-describedby="basic-addon1">
                            </div>
                            <div class="form-group col-sm-7">
                                <label for="card-holder">Monto FOB</label>
                                <input id="card-holder" type="text" name="montofobtxt" class="form-control" placeholder="Monto FOB" aria-label="Card Holder" aria-describedby="basic-addon1">
                            </div>
                            <div class="form-group col-sm-7">
                                <label for="card-holder">Monto Flete</label>
                                <input   id="card-holder" type="text" name="montofletetxt" class="form-control" placeholder="Monto Flete" aria-label="Card Holder" aria-describedby="basic-addon1">
                            </div>
                            <div class="form-group col-sm-7">
                                <label for="card-holder">Monto Despacho</label>
                                <input id="card-holder" type="text" name="montodespachotxt" class="form-control" placeholder="Monto despacho" aria-label="Card Holder" aria-describedby="basic-addon1">
                            </div>
                            <div class="form-group col-sm-7">
                                <label for="card-holder">Total importación</label>
                                <input   id="card-holder" type="text" name="totalimporttxt" class="form-control" placeholder="Total importación" aria-label="Card Holder" aria-describedby="basic-addon1">
                            </div>
                            <div class="form-group col-sm-7">
                                <label for="card-holder">Despachante</label>
                                <input id="card-holder" type="text" name="despachantetxt" class="form-control" placeholder="Despachante" aria-label="Card Holder" aria-describedby="basic-addon1">
                            </div>
                            <div class="form-group col-sm-7">
                                <label for="card-holder">Estado</label>
                                <input   id="card-holder" type="text" name="estadotxt" class="form-control" placeholder="Estado" aria-label="Card Holder" aria-describedby="basic-addon1">
                            </div>
                            <div class="form-group col-sm-7">
                                <label for="card-holder">Proveedor</label>
                                <input id="card-holder" type="text" name="proveedortxt" class="form-control" placeholder="Proveedor" aria-label="Card Holder" aria-describedby="basic-addon1">
                            </div>
                            
                            <%--Botones--%>
                            <div>
                                <nav class="navbar navbar-dark navbar-expand-md navigation-clean-search">
                                    <ul class="nav navbar-nav">

                                        <li class="dropdown">
                                            <input type="submit" name="accion" target="_blank" class="btn btn-light action-button" value="Guardar">
                                        </li>

                                        <li class="dropdown">
                                            <input type="submit" name="accion" target="_blank" class="btn btn-light action-button" value="Modificar">
                                        </li>

                                        <li class="dropdown">
                                            <input type="submit" name="accion" target="_blank" class="btn btn-light action-button" value="Estado">
                                        </li>
                                        <a class="btn btn-light action-button" role="button" href="Principal.jsp">Salir</a>
                                    </ul>
                                </nav>
                            </div>
                            <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
                            <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
                        </div>
                    </div>
                </form>
            </div>
        </section>
    </main>
</body>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>
