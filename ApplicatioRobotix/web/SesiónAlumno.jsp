<%-- 
    Document   : SesiónAlumno
    Created on : 15 may. 2023, 13:08:01
    Author     : consj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel ="stylesheet" href="StyleSEAL.css">
    </head>
    <body>
        <div class="container fade-in">
  <h1>Iniciar Sesión</h1>

  <form id="loginForm">
    <label for="username">Usuario</label>
    <input type="text" id="username" placeholder="Ingresa tu usuario" required>
    <label for="password">Contraseña</label>
    <input type="password" id="password" placeholder="Ingresa tu contraseña" required>
    <button id="boton" class="boton" onclick="loginAl()">Iniciar Sesión</button>
  </form>
</div>

<div class="background"></div>

<script>
  function loginAl() {
    var username = document.getElementById("username").value;
    var password = document.getElementById("password").value;

    if (username === "alumno" && password === "alumno123") {
      window.location.href = "AltasComputadoras.jsp";
    } else {
      alert("Usuario o contraseña incorrectos");
    }

    // Evitar que el formulario se envíe
    event.preventDefault();
  }

  // Escuchar el evento de envío del formulario
  var loginForm = document.getElementById("loginForm");
  loginForm.addEventListener("submit", loginAl);
</script>
 <script src="main.js"></script>


    </body>
</html>