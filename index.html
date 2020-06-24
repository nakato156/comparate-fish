<?php 
include ("mysql/importar.php");
include ("configs/conexion.php");
$host_mysql="localhost";
$user_mysql="root";
$pass_mysql="";
$bd_mysql="registros";

$mysqli = mysqli_connect($host_mysql, $user_mysql,$pass_mysql,$bd_mysql);
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Comparate Fish</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>
<body>
	<div>
		<center>
			<h1>Comparate Fish</h1>
		</center>
	</div>
	<nav class="navbar navbar-dark bg-dark">
		<a herf="#" class="navbar-brand">Inicio</a>
	</nav>
	<div class="container">
		<div class="row">
			<div class="text-center">
				<h3>Personal Apto</h3>
				<table class="table table-striped">
					<tr>
						<th>ID</th>
						<th>Nombres</th>
						<th>DNI</th>
						<th>Resultado</th>
					</tr>
					<?php 
					$r="NEGATIVO";
					$consulta = mysqli_query($mysqli, "SELECT * FROM personal");
					while ($row=mysqli_fetch_array($consulta)) {
						$id=$row['id'];

						// comparacion
						$comp=mysqli_query($mysqli,"SELECT personal.nombre,db_comp.DNI,db_comp.resultado_pcr,db_comp.nombre FROM personal INNER JOIN db_comp ON personal.nombre=db_comp.nombre WHERE db_comp.resultado_pcr='NEGATIVO' AND db_comp.nombre=personal.nombre");

						while($res=mysqli_fetch_array($comp)) {
							$trab = $res['nombre'];
							$rs_prub = $res['resultado_pcr'];
							$dni = $res['DNI'];
						}
						
						?>					
						<tr>
							<td><?=$id?></td>
							<td><?=$trab?></td>
							<td><?=$dni?></td>
							<td><?=$rs_prub?></td>
						</tr>	
					<?php 
						} 
					?>	
				</table>
			</div>
			<div class="card">
				<form action="" method="post" class="card-body" enctype="multipart/form-data">
					<h3 class="card-title">Añadir Archivo de Subida de Personal</h3>
					<div class="form-group">
						<input type="file" name="rega" class="form-control"><br>
					</div>
					<input type="submit" value="subir archivo" name="enviar" class="btn btn-primary form-control">
					<div>
						<a href=""><i class="icon-"></i></a>
						<a href="vistas/tablas.php"><i class="icon-"></i>ver tabala</a>
					</div>
					<h3 class="card-title">Añadir Archivo de Personal Aprobado</h3>
					<div class="form-group">
						<input type="file" name="dbComp" class="form-control"><br>
					</div>
					<input type="submit" value="subir archivo" name="comp" class="btn btn-primary form-control">
					<div>
						<a href=""><i class="icon-"></i></a>
						<a href="vistas/tablas.php"><i class="icon-"></i>ver tabala</a>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
