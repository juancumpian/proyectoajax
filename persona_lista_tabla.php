<?php
include "conexion.php";

$numregpagina=20;
$paginaactual=1;

if (empty($_GET["page"]) || ($_GET["page"]==1) ) {
	$regcomienzo = 0;
}else{
	$regcomienzo = (($_GET["page"]-1) * $numregpagina);
	$paginaactual= $_GET["page"];
}

if (!empty($_POST["idtrabajo"])  && empty($_POST["idpersona"]) );
$consulta = "
SELECT p.idpersona, p.nombre, p.idtrabajo, t.trabajo, p.fecha_nacimiento
FROM persona p, trabajo t
WHERE p.idtrabajo = t.idtrabajo";


if (!empty($_GET["busquedanombre"])){
$consulta.= " AND p.nombre LIKE '%" . $_GET["busquedanombre"] . "%' ";
}


if (!empty($_POST["idtrabajo"])) {
	$consulta .= " AND p.idtrabajo=" . $_POST["idtrabajo"];
}

$limit =" LIMIT ". $regcomienzo . "," . $numregpagina . ";";

$resultado = $conexion->query($consulta.$limit);
	


?>	
<table id="tabladatos" class="table" align="center" >
<tr align="center">
	<th>Nombre</th>	
	<th>Trabajo</th> 
	<th>fecha de nacimiento</th>
    <th>Acciones</th>                              
</tr>
<?php 	
while ($fila = $resultado->fetch_object()){?>
<tr class="info" id="persona_<?=$fila->idpersona?>" data-idpersona="<?=$fila->idpersona?>">
		<td class="nombre"><?=$fila->nombre?></td>
        <td class="idtrabajo" name="<?=$fila->idtrabajo?>"><?=$fila->trabajo?></td>
		<td class="fecha_nacimiento" name="<?=$fila->fecha_nacimiento?>"><?=$fila->fecha_nacimiento?></td>
        <td> <img class="borrar" src="img/borrar.png" width="20" height="20" alt="Borrar">
    &nbsp;<img class="modificar" src="img/guardar.png" width="20" height="20" alt="Modificar">
   	</td>
</tr>
<?php }
?>
</table>
<style>

</style>
<div id="divpaginacion">
	<ul class="pagination">
	
	  <li><a href="#" data-page="1"><img src="img/primero.jpg" class="primero"></a></li>
	  <li><a href="#" data-page="<?php echo ($paginaactual-1)?>"><img src="img/flechaizquierda.png" class="flecha"></a></li>
	
	<?php
	//Cuantas páginas
	$resultado2 = $conexion->query($consulta);
	$totalregistros = $resultado2->num_rows;
	$numpaginas=intval($totalregistros/ $numregpagina)+1;
	for ($i=1;$i<=$numpaginas;$i++){ ?>  
	  <li><a href="#" data-page="<?php echo $i?>" 
	  <?php
	if ($i==$paginaactual){?> class="actual" <?php }?>
	  ><?php echo $i?></a></li>
	<?php } ?>
	
	  <li><a href="#" data-page="<?php echo ($paginaactual+1)?>"><img src="img/flechaderecha.png" class="flecha"></a></li>
	  <li><a href="#" data-page="<?php echo $numpaginas?>"><img src="img/ultimo.png" class="primero"></a></li>
	</ul>
</div>