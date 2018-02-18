<?php include_once "conexion.php"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Listado personas</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="jquery-ui-1.12.1/jquery-ui.css"/>
	<link rel="stylesheet" type="text/css" href="css/estilo.css"/>       
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
 	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script src ="js/jquery.validate.js"></script>
	<script src ="js/formvalidate.js"></script>

<script src="functions.js"></script>
</head>
<body>
<div id="cabecera"><img src="img/nuevo.jpg" id="nuevo" title="Nueva Persona"/>
<h3 id="buscarnombretexto" align="center">Buscar por nombre: <input type="text" id="buscanombre" value=""></h3></div>

<div id="contenedor">
<?php include "persona_lista_tabla.php" ?>
</div>

<div id="dialogomodificar" title="Modificar persona">
<?php include "persona_formulario_modificar.php"?>
</div>

<div id="dialogoborrar" title="Eliminar persona">
  <p>¿Esta seguro que desea eliminar esta persona?</p>
</div>
</body>
</html>
