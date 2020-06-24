<?php 
global $mysqli;

function insert($Status,$Situacion,$fecha_de_pedido,$nombre,$DNI,$Nombre_de_empresa,$posicion,$rotacion,$turno,$celula_trabajo,$fecha_subida,$fecha_bajada,$telefono,$departamento,$provincia,$distrito,$direccion_dom,$es_pers_comunidad,$vicepresidencia,$gerencia,$area,$subarea,$asistente_resp,$laboratorio,$fecha_hisopado_pcr,$fecha_env_lab,$fecha_ent_lab,$fecha_ent_result,$dias_proceso,$dias_tot_hisopado,$resultado_pcr){

	$host_mysql="localhost";
	$user_mysql="root";
	$pass_mysql="";
	$bd_mysql="registros";

	$mysqli = mysqli_connect($host_mysql, $user_mysql,$pass_mysql,$bd_mysql);

	$query = "INSERT INTO personal(Status,Situacion,fecha_de_pedido,nombre,DNI,Nombre_de_empresa,posicion,rotacion,turno,celula_trabajo,fecha_subida,fecha_bajada,telefono,departamento,provincia,distrito,direccion_dom,es_pers_comunidad,vicepresidencia,gerencia,area,subarea,asistente_resp,laboratorio,fecha_hisopado_pcr,fecha_env_lab,fecha_ent_lab,fecha_ent_result,dias_proceso,dias_tot_hisopado,resultado_pcr) values('$Status','$Situacion','$fecha_de_pedido','$nombre','$DNI','$Nombre_de_empresa','$posicion','$rotacion','$turno','$celula_trabajo','$fecha_subida','$fecha_bajada','$telefono','$departamento','$provincia','$distrito','$direccion_dom','$es_pers_comunidad','$vicepresidencia','$gerencia','$area','$subarea','$asistente_resp','$laboratorio','$fecha_hisopado_pcr','$fecha_env_lab','$fecha_ent_lab','$fecha_ent_result','$dias_proceso','$dias_tot_hisopado','$resultado_pcr')";
	$ejec = mysqli_query($mysqli,$query);
	return $ejec;
}

// function the table comparate
function comparateT($id,$dni,$nombre,$empresa,$celular,$obs){

	$host_mysql="localhost";
	$user_mysql="root";
	$pass_mysql="";
	$bd_mysql="registros";

	$mysqli = mysqli_connect($host_mysql, $user_mysql,$pass_mysql,$bd_mysql);

	$query = "INSERT INTO db_comp(id,dni,nombre,empresa,celular,obs) values('$id','$dni','$nombre','$nombre','$empresa','$celular','$obs')";
	$ejec = mysqli_query($mysqli,$query);
	return $ejec;
}

?>