<?php include "conexion.php"?>
<script src ="https://cdn.jsdelivr.net/npm/jquery-validation@1.17.0/dist/jquery.validate.js"></script>
<script src ="js/formvalidate.js"></script>
<div id="filanueva" align="center">
<form id="formulario">
<td>
<input  placeholder="Nombre" name="nombrenuevo" type="text" id="nombrenuevo" value="">
</td>
<td>
<select placeholder="trabajo" id="idtrabajonuevo" name="idtrabajonuevo">
<?php
$consulta2 = "SELECT idtrabajo, trabajo 
			FROM trabajo
			ORDER BY trabajo";
$resultado2 = $conexion->query($consulta2);
while ($fila2 = $resultado2->fetch_object()){?>
<option value="<?php echo $fila2->idtrabajo?>"><?php echo $fila2->trabajo?></option>
<?php } ?>
</select>
</td>
<script>
$(function(){
	$("#datepickero").datepicker({ dateFormat: 'yy-mm-dd' });
});
</script>
<td>
<input type="text" name="datepickero" id="datepickero" />
</td>
<td>
<input type="submit" id="guardarnuevo" src="img/guardar.png" width="20" height="20">
&nbsp;&nbsp;
<img id="cancelarnuevo" src="img/borrar.png" width="20" height="20" alt="Cancelar">

</td>
</form>
</div>