<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Sesion Administradores</title>
  <link rel="stylesheet" href="StyleSEAD.css">
  <style>
    .small-button {
      background: none;
      border: none;
      color: black;
      font-size: 12px;
      cursor: pointer;
      text-decoration: none; /* Remove underline */
    }
    
    .small-button:hover {
      color: black; /* Keep the text color black on hover */
      text-decoration: none; /* Remove underline on hover */
    }
  </style>
</head>
<body>
  <div class="container fade-in">
    <h1>Iniciar Sesión</h1>

    <form id="loginForm">
      <label for="username">Usuario</label>
      <input type="text" id="username" placeholder="Ingresa tu usuario" required>
      <label for="password">Contraseña</label>
      <input type="password" id="password" placeholder="Ingresa tu contraseña" required>
      <button id="boton" class="boton" onclick="logADMI()">Iniciar Sesión</button>
      
      <button type="button" onclick="goToHomepage()" class="small-button">Regresar al Inicio</button>
    </form>
  </div>

  <div class="background"></div>

  <script>
    function logADMI() {
      var username = document.getElementById("username").value;
      var password = document.getElementById("password").value;

      if (username === "admin" && password === "admin123") {
        window.location.href = "AltasComputadoras.jsp";
      } else {
        alert("Usuario o contraseña incorrectos");
      }

      // Evitar que el formulario se envíe
      event.preventDefault();
    }

    function goToHomepage() {
      window.location.href = "index.html"; // Replace "index.html" with the actual homepage URL
    }
  </script>
</body>
</html>
