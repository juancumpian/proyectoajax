<?php
include "conexion.php";

$consulta ="DELETE FROM persona 
			WHERE idpersona = ". $_GET["idpersona"];
			

$conexion->query($consulta);
?>
