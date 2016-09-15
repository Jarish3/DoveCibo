<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@ include file="navBar.html" %>
        <title>DoveCibo</title>

        <style>
            body {
                background-image: url("img/img (7)b.jpg");
                background-repeat: no-repeat;
                background-attachment: fixed;
                background-size: cover;
            }
            .product .img-responsive {
                margin: 0 auto;
            }

            /* centered columns styles */
            .row-centered {
                text-align:center;
            }
            .col-centered {
                display:inline-block;
                float:none;
                /* reset the text-align */
                text-align:left;
                /* inline-block space fix */
                margin-right:-4px;
            }
            .col-fixed {
                /* custom width */
                width:320px;
            }
            .col-min {
                /* custom min width */
                min-width:320px;
            }
            .col-max {
                /* custom max width */
                max-width:320px;
            }
            .colonna2{
                background-color: rgba(255, 255, 255, 0.80);
                box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.5), 0 6px 20px 0 rgba(0, 0, 0, 0.7);
                border-radius: 5px;
            }
            .colonna1{
                max-width: 70%;
                margin-bottom: 25px;
            }
            div.polaroid {
                text-align: center;
            }
            div.polaroid:hover{
                box-shadow: 0px 0px 20px 0 rgba(255, 255, 255, 1);
                overflow: visible;
                z-index: auto;
                -webkit-margin-before: 0;
                -webkit-margin-after: 0;
                -webkit-margin-start: 0;
                -webkit-margin-end: 10px;
            }
            div.container {
                padding: 10px;
            }
            #no-rounded{
                border-bottom-right-radius: 0px;
                border-bottom-left-radius: 0px;
            }
        </style>
    </head>
    <body>
        <br>

        <div class="container">
            <div class="row row-centered">

                <!-- pannello del ristorante-->
                <div class="col-xs-12 col-sm-12 col-md-4 col-lg-3 col-centered colonna1" onclick="window.location.href = 'ristorante.jsp'">
                    <div class="polaroid colonna2" >
                        <img src="img/img (5).jpg" class="img-responsive img-rounded" id="no-rounded" style="width:100%">
                        <div class="row">
                            <div class="col-md-12 text-center">
                                <p style="color: black; font-size: 28px"><b>Nome ristorante</b></p>
                            </div>                 
                        </div>
                        <div class="row" style="padding-bottom: 10px; padding-top: 10px;">
                            <div class="col-md-12 text-center">
                                <span class="glyphicon glyphicon-cutlery" aria-hidden="true"></span> <b>Cucina</b>
                                <br>
                                <span class="glyphicon glyphicon-euro" aria-hidden="true"></span> <b>Fascia di Prezzo</b>
                                <span class="glyphicon glyphicon-minus" aria-hidden="true"></span> 
                                <span class="glyphicon glyphicon-star" aria-hidden="true"></span> <b>Valutazione</b>
                                <br>
                                <span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span> <b>Indirizzo</b>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- pannello del ristorante-->
                <div class="col-xs-12 col-sm-12 col-md-4 col-lg-3 col-centered colonna1" onclick="window.location.href = 'ristorante.jsp'">
                    <div class="polaroid colonna2" >
                        <img src="img/img (5).jpg" class="img-responsive img-rounded" id="no-rounded" style="width:100%">
                        <div class="row">
                            <div class="col-md-12 text-center">
                                <p style="color: black; font-size: 28px"><b>Nome ristorante</b></p>
                            </div>                 
                        </div>
                        <div class="row" style="padding-bottom: 10px; padding-top: 10px;">
                            <div class="col-md-12 text-center">
                                <span class="glyphicon glyphicon-cutlery" aria-hidden="true"></span> <b>Cucina</b>
                                <br>
                                <span class="glyphicon glyphicon-euro" aria-hidden="true"></span> <b>Fascia di Prezzo</b>
                                <span class="glyphicon glyphicon-minus" aria-hidden="true"></span> 
                                <span class="glyphicon glyphicon-star" aria-hidden="true"></span> <b>Valutazione</b>
                                <br>
                                <span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span> <b>Indirizzo</b>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- pannello del ristorante-->
                <div class="col-xs-12 col-sm-12 col-md-4 col-lg-3 col-centered colonna1" onclick="window.location.href = 'ristorante.jsp'">
                    <div class="polaroid colonna2" >
                        <img src="img/img (5).jpg" class="img-responsive img-rounded" id="no-rounded" style="width:100%">
                        <div class="row">
                            <div class="col-md-12 text-center">
                                <p style="color: black; font-size: 28px"><b>Nome ristorante</b></p>
                            </div>                 
                        </div>
                        <div class="row" style="padding-bottom: 10px; padding-top: 10px;">
                            <div class="col-md-12 text-center">
                                <span class="glyphicon glyphicon-cutlery" aria-hidden="true"></span> <b>Cucina</b>
                                <br>
                                <span class="glyphicon glyphicon-euro" aria-hidden="true"></span> <b>Fascia di Prezzo</b>
                                <span class="glyphicon glyphicon-minus" aria-hidden="true"></span> 
                                <span class="glyphicon glyphicon-star" aria-hidden="true"></span> <b>Valutazione</b>
                                <br>
                                <span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span> <b>Indirizzo</b>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- pannello del ristorante-->
                <div class="col-xs-12 col-sm-12 col-md-4 col-lg-3 col-centered colonna1" onclick="window.location.href = 'ristorante.jsp'">
                    <div class="polaroid colonna2" >
                        <img src="img/img (5).jpg" class="img-responsive img-rounded" id="no-rounded" style="width:100%">
                        <div class="row">
                            <div class="col-md-12 text-center">
                                <p style="color: black; font-size: 28px"><b>Nome ristorante</b></p>
                            </div>                 
                        </div>
                        <div class="row" style="padding-bottom: 10px; padding-top: 10px;">
                            <div class="col-md-12 text-center">
                                <span class="glyphicon glyphicon-cutlery" aria-hidden="true"></span> <b>Cucina</b>
                                <br>
                                <span class="glyphicon glyphicon-euro" aria-hidden="true"></span> <b>Fascia di Prezzo</b>
                                <span class="glyphicon glyphicon-minus" aria-hidden="true"></span> 
                                <span class="glyphicon glyphicon-star" aria-hidden="true"></span> <b>Valutazione</b>
                                <br>
                                <span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span> <b>Indirizzo</b>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- pannello del ristorante-->
                <div class="col-xs-12 col-sm-12 col-md-4 col-lg-3 col-centered colonna1" onclick="window.location.href = 'ristorante.jsp'">
                    <div class="polaroid colonna2" >
                        <img src="img/img (5).jpg" class="img-responsive img-rounded" id="no-rounded" style="width:100%">
                        <div class="row">
                            <div class="col-md-12 text-center">
                                <p style="color: black; font-size: 28px"><b>Nome ristorante</b></p>
                            </div>                 
                        </div>
                        <div class="row" style="padding-bottom: 10px; padding-top: 10px;">
                            <div class="col-md-12 text-center">
                                <span class="glyphicon glyphicon-cutlery" aria-hidden="true"></span> <b>Cucina</b>
                                <br>
                                <span class="glyphicon glyphicon-euro" aria-hidden="true"></span> <b>Fascia di Prezzo</b>
                                <span class="glyphicon glyphicon-minus" aria-hidden="true"></span> 
                                <span class="glyphicon glyphicon-star" aria-hidden="true"></span> <b>Valutazione</b>
                                <br>
                                <span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span> <b>Indirizzo</b>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>  

    </body>
</html>