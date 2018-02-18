$(function(){
	$("#datepicker").datepicker( {dateFormat: 'yy-mm-dd'} );
});
$(document).ready(function() {			
	var idtrabajo;
	var idpersona;

$(document).on("keypress keyup","#buscanombre",function(){		
	var valor= $("#buscanombre").val();
 $.get("persona_lista_tabla.php" , 
	    {
		   busquedanombre: valor 
		},
	   function(data){
		   $("#contenedor").html(data);
	   });	
});

	$( "#dialogoborrar" ).dialog({
		autoOpen: false,
		resizable: false,
		buttons: {
		"Borrar": function() {
			$.get("persona_borrar.php", {"idpersona":idpersona},function(data,status){				
				$("#persona_" + idpersona).fadeOut();
			})			
			$(this).dialog("close");												
		},
		"Cancelar": function() {
				$(this).dialog("close");
		}
		}
	});	

$(document).on("click",".borrar",function(){
	idpersona = $(this).parents("tr").data("idpersona");
	 $( "#dialogoborrar" ).dialog("open");		
});

$( "#dialogomodificar" ).dialog({
		autoOpen: false,
		resizable: false,
		height:"350",
		width: "350",
		buttons: {
		"Guardar": function() {			
			$.post("persona_modificar.php", {
				"idpersonamodificar" : idpersona,
				"nombremodificar" : $("#nombremodificar").val() ,
				"idtrabajomodificar": $("#idtrabajomodificar").val() ,
				"fecha": $("#datepicker").val()
			},function(data,status){
				$("#contenedor").html(data);
			})
			$(this).dialog( "close" );												
					},
		"Cancelar": function() {
				$(this).dialog( "close" );
		}
		}
	});				

$(document).on("click",".modificar",function(){
	idpersona = $(this).parents("tr").data("idpersona");
	$("#nombremodificar").val($(this).parent().siblings("td.nombre").html());
	var idtrabajomodificar = $(this).parent().siblings("td.idtrabajo").attr("name");
	$("#idtrabajomodificar option[value='" + idtrabajomodificar + "']").attr("selected",true);
	$( "#dialogomodificar").dialog("open");
	
});	

$(document).on("click","#filtrar",function(){		
		idtrabajo = $("#idtrabajo").val();
		$.ajax({
			url: "persona_lista_tabla.php",
			data:{idtrabajo:idtrabajo},
			type: "post",
			beforeSend: cargar,
			success: filtratabla,
			complete: fin,
			cache: false
		});														
					
});

function filtratabla(data){		
	$("#contenedor").html(data);
}		

function fin(){
	$("#cargando").hide();
}

$(document).on("click","#nuevo",function(){	
	$.post("persona_formulario_nuevo.php",function(data){
	$("#tabladatos").append(data);
			$("#idtrabajonuevo option[value='" + $("#idtrabajo").val() + "']").attr("selected",true);	
			$("#nuevo").hide();			
	})
});			


$(document).on("click","#cancelarnuevo",function(){	
		$("#filanueva").remove();
		$("#nuevo").show();
		
});			


$(document).on("click","#guardarnuevo",function(){
	$("#formulario").validate({
      rules: {
        nombrenuevo: {
          required: true,
          minlength: 4
        },
        idtrabajonuevo: {
          required: true
        },
        datepickero: {
          required: true
        },
        nombremodificar: {
          minlength: 4,
          required: true
        },
        nidtrabajomodificar: {
          required: true
        },
        datepicker: {
          required: true
        }
	  },
	submitHandler: function() {
	$.post("persona_insertar_nuevo.php", {
				"nombrenuevo":$("#nombrenuevo").val(),
				"idtrabajonuevo":$("#idtrabajonuevo").val(),
				"idtrabajo":$("#idtrabajo").val(),
				"fechanacimientonuevo":$("#datepickero").val()
			},function(data){
				$("#contenedor").html(data);
				$("#nuevo").show();		
			})	
		}
	});
});									

			
$(document).on("click",".pagination li a",function(){
	var numpage = $(this).data("page");
	$.get("persona_lista_tabla.php",{page:numpage},function(data){
		$("#contenedor").html(data);	
	});		
});

})