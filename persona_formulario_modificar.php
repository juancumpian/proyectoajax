<script src ="js/formvalidate.js"></script>
<form id="formulario">
Nombre: <input type="text" id="nombremodificar" name="nombremodificar" value=""><br>
Trabajo: <select id="idtrabajomodificar" name="idtrabajomodificar">
<?php
$consulta2 = "SELECT idtrabajo, trabajo 
			FROM trabajo
			ORDER BY trabajo";
$resultado2 = $conexion->query($consulta2);
while ($fila2 = $resultado2->fetch_object()){?>
<option value="<?= $fila2->idtrabajo?>"><?= $fila2->trabajo?></option>
<?php } ?>
</select>
<br>
Fecha:<input type="text" name="datepicker" id="datepicker" />
<br>
</form>
