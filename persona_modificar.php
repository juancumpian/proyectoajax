<?php 
include "conexion.php";

$consulta = "UPDATE persona SET
			nombre = '" . $_POST["nombremodificar"] ."',
			idtrabajo = '" . $_POST["idtrabajomodificar"] . "', 
			fecha_nacimiento = '" . $_POST["fecha"] . "' 
			WHERE idpersona = " . $_POST["idpersonamodificar"];

$conexion->query($consulta);


include "persona_lista_tabla.php";
?>
