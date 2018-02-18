<?php 
include "conexion.php";

$consulta = "INSERT INTO persona (nombre, idtrabajo, fecha_nacimiento) 
			VALUES('" . $_POST["nombrenuevo"] ."','"
			. $_POST["idtrabajonuevo"] ."','"
			. $_POST["fechanacimientonuevo"] ."')";

$conexion->query($consulta);			

include "persona_lista_tabla.php";
?>

