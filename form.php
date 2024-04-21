<html>
<head>
  <link rel="stylesheet" type="text/css" href="diseform.css">
</head>
<body>
  <div class="container">
    <h1>Bienvenid@</h1>
    <h2><?php echo isset($_POST["nombre"]) ? $_POST["nombre"] : ''; ?></h2>
    <h1>Identificado con numero de C.C:</h1>
    <p><?php echo isset($_POST["cedula"]) ? $_POST["cedula"] : ''; ?></p>
    <h1>Numero de Celular:</h1>
    <p><?php echo isset($_POST["celular"]) ? $_POST["celular"] : ''; ?></p>
    <h1>Identificado con carnet estudiantil:</h1>
    <p><?php echo isset($_POST["carnet"]) ? $_POST["carnet"] : ''; ?></p>
  </div>
</body>

<div class="container" style="background-color:#f1f1f1">
<a href="insesi.html" class="cancelbtn"><b> <center>Iniciar Sesion </center></b></a>
</div>
</html>
