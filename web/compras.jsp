<%-- 
    Document   : compras
    Created on : 17/06/2021, 04:43:21 PM
    Author     : Alvaro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Compras</title>
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
                        <h2>Registro de compras</h2>
                        <p>Por favor, complete los campos</p>
                    </div>
                    <form action="compras" method="POST">
                        <div class="card-details">
                            <h3 class="title">Detalles de la compra</h3>
                            <div class="row">
                                <%-- Campo para completar--%>

                                <div class="form-group col-sm-12"> <%-- agregar espacio entre los labels &nbsp --%>
                                    <label for="card-holder">Código de compra</label> &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp  <label for="card-holder">Proveedor</label>
                                    <div class="input-group">
                                        <input id="card-holder" type="text" name="codigocompratxt" class="form-control" placeholder="Código de compra" aria-label="Card Holder" aria-describedby="basic-addon1">
                                        <span class="input-group-addon">-</span>
                                        <input id="card-holder" type="text" name="proveedortxt" class="form-control" placeholder="Proveedor" aria-label="Card Holder" aria-describedby="basic-addon1">
                                    </div>
                                </div>

                                <div class="form-group col-sm-12">
                                    <label for="card-holder">Fecha de compra</label>  &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp   <label for="card-holder">Total de compra</label>
                                    <div class="input-group">
                                        <input   id="card-holder" type="text" name="fechacomprattxt" class="form-control" placeholder="Fecha de compra" aria-label="Card Holder" aria-describedby="basic-addon1">
                                        <span class="input-group-addon">-</span>
                                        <input   id="card-holder" type="text" name="totalcomprarttxt" class="form-control" placeholder="Total de compra" aria-label="Card Holder" aria-describedby="basic-addon1">
                                    </div>
                                </div>                           
                                <%--
                                                            <div class="form-group col-sm-12">
                                                                <label for="card-holder">Estado</label> &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp 
                                                                <div class="input-group">
                                                                    <input id="card-holder" type="text" name="estadocompratxt" class="form-control" placeholder="Estado" aria-label="Card Holder" aria-describedby="basic-addon1">
                                                                    <span class="input-group-addon">-</span>
                                                                </div>
                                                            </div>


                                <%-- insertado para modificar los campos horizontyales--%>

                                <div class="form-group col-sm-12">                               
                                    <label for="card-holder">Cantidad </label>  &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp <label for="card-holder">Descripcción</label>
                                    <div class="input-group">
                                        <input   id="card-holder" type="text" name="cantidadtxt" class="form-control" placeholder="Cantidad" aria-label="Card Holder" aria-describedby="basic-addon1">
                                        <span class="input-group-addon">-</span>
                                        <input id="card-holder" type="text" name="descrpciontxt" class="form-control" placeholder="Descripcion" aria-label="Card Holder" aria-describedby="basic-addon1">
                                        <ul class="list-group">
                                            <li class="list-group-item disabled">Item 1</li>
                                            <li class="list-group-item">Item 2</li>
                                            <li class="list-group-item">Item 3</li>
                                            <li class="list-group-item">Item 4</li>
                                            <li class="list-group-item">Item 5</li>
                                        </ul>
                                    </div>
                                </div>

                                <div class="form-group col-sm-12">                               
                                    <label for="card-holder">IVA 5%</label> &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp  &nbsp &nbsp <label for="card-holder">IVA 10%</label>
                                    <div class="input-group">
                                        <input   id="card-holder" type="text" name="iva5txt" class="form-control" placeholder="IVA 5%" aria-label="Card Holder" aria-describedby="basic-addon1">
                                        <span class="input-group-addon">-</span>
                                        <input id="card-holder" type="text" name="iva10txt" class="form-control" placeholder="IVA 10%" aria-label="Card Holder" aria-describedby="basic-addon1">
                                    </div>
                                </div>

                                <div class="form-group col-sm-12">                               
                                    <label for="card-holder">Excentas </label> &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp  &nbsp  <label for="card-holder">Precio compra</label>
                                    <div class="input-group">
                                        <input   id="card-holder" type="text" name="excentasttxt" class="form-control" placeholder="Excentas" aria-label="Card Holder" aria-describedby="basic-addon1">
                                        <span class="input-group-addon">-</span>
                                        <input id="card-holder" type="text" name="preciocompratxt" class="form-control" placeholder="Precio compra" aria-label="Card Holder" aria-describedby="basic-addon1">
                                    </div>
                                </div>

                                <div class="form-group col-sm-12">                                
                                    <label for="card-holder">Estado</label>  &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp  &nbsp <label for="card-holder">Proveedor</label>
                                    <div class="input-group">
                                        <input   id="card-holder" type="text" name="estadotxt" class="form-control" placeholder="Estado" aria-label="Card Holder" aria-describedby="basic-addon1">
                                        <span class="input-group-addon">-</span>
                                        <input id="card-holder" type="text" name="proveedortxt" class="form-control" placeholder="Proveedor" aria-label="Card Holder" aria-describedby="basic-addon1">
                                    </div>
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




<%--

<div class="form-group col-sm-7">
                                <label for="card-holder">Cantidad </label>
                                <input   id="card-holder" type="text" name="cantidadtxt" class="form-control" placeholder="Cantidad" aria-label="Card Holder" aria-describedby="basic-addon1">
                            </div>
                            <div class="form-group col-sm-7">
                                <label for="card-holder">Descripcción</label>
                                <input id="card-holder" type="text" name="descrpciontxt" class="form-control" placeholder="Descripcion" aria-label="Card Holder" aria-describedby="basic-addon1">
                            </div>
                            <div class="form-group col-sm-7">
                                <label for="card-holder">IVA 5%</label>
                                <input   id="card-holder" type="text" name="iva5txt" class="form-control" placeholder="IVA 5%" aria-label="Card Holder" aria-describedby="basic-addon1">
                            </div>
                            <div class="form-group col-sm-7">
                                <label for="card-holder">IVA 10%</label>
                                <input id="card-holder" type="text" name="iva10txt" class="form-control" placeholder="IVA 10%" aria-label="Card Holder" aria-describedby="basic-addon1">
                            </div>
                            <div class="form-group col-sm-7">
                                <label for="card-holder">Excentas </label>
                                <input   id="card-holder" type="text" name="excentasttxt" class="form-control" placeholder="Excentas" aria-label="Card Holder" aria-describedby="basic-addon1">
                            </div>
                            <div class="form-group col-sm-7">
                                <label for="card-holder">Precio compra</label>
                                <input id="card-holder" type="text" name="preciocompratxt" class="form-control" placeholder="Precio compra" aria-label="Card Holder" aria-describedby="basic-addon1">
                            </div>
                            <div class="form-group col-sm-7">
                                <label for="card-holder">Estado</label>
                                <input   id="card-holder" type="text" name="estadotxt" class="form-control" placeholder="Estado" aria-label="Card Holder" aria-describedby="basic-addon1">
                            </div>
                            <div class="form-group col-sm-7">
                                <label for="card-holder">Proveedor</label>
                                <input id="card-holder" type="text" name="proveedortxt" class="form-control" placeholder="Proveedor" aria-label="Card Holder" aria-describedby="basic-addon1">
                            </div>
--%>