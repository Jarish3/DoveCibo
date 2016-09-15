<%@page import="DoveCiboPK.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@ include file="navBar.html" %>
        <title>DoveCibo</title>

        <style>
            body {
                background-image: url('img/img(1)b.jpg');
                background-repeat: no-repeat;
                background-attachment: fixed;
                background-size: cover;
            }
            h1 {
                text-shadow: 5px 5px 13px black;
            }
            .ombra {
                box-shadow: 5px 5px 13px black;
            }
        </style>
    </head>
    <body>

        <%
            User u = (User) request.getAttribute("user");
            if (u == null) {
                u = new User(-1, "Anonimo", "", "", "", "");
            }
        %>

        <div class="container">
            <div class="row">
                <h1> CIAO <%= u.getName()%> !!</h1>
            </div>

            <div class="row ">

                <div class="col-md-3"></div>
                <div class="col-md-6">
                    <form>
                        <h1 style="color: black; font-size: 50px; padding-top: 30%;">Cerca un ristorante</h1>

                        <div class="input-group input-group-lg ombra">
                            <input type="text" class="form-control" placeholder="Cerca un ristorante">
                            <span class="input-group-btn">
                                <!-- questo bottone submitta la ricerca, per ora linka solo la pagina dei ristoranti -->
                                <button class="btn btn-success" type="button" onclick="window.location.href = 'ristoranti.jsp'">Go!</button> 
                        </div> 
                    </form>                                 
                </div> 
                <div class="col-md-3"></div>
            </div>
        </div>

    </body>
</html>