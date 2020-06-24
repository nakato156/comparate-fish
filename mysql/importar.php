<?php 
include ("../configs/conexion.php");
include ("../configs/funciones.php");

if (isset($_POST['enviar'])) {
	$archivo = $_FILES["rega"]["name"];
	$fileCopy = $_FILES["rega"]["tmp_name"];
	$fileSave = "reg_".$archivo;

	if (copy($fileCopy ,$fileSave)) {
		// echo "el archivo ".$archivo." Se copio correctamente <br/>";
	}else{
		echo "no se pudo copiar el archivo <br/>";
	}
	if (file_exists($fileSave)) {
		$fp = fopen($fileSave,"r");
		while ($data=fgetcsv($fp, 0, ";")) {

			$result = insert($data[1],$data[2],$data[3],$data[4],$data[5],$data[6],$data[7],$data[8],$data[9],$data[10],$data[11],$data[12],$data[13],$data[14],$data[15],$data[16],$data[17],$data[18],$data[19],$data[20],$data[21],$data[22],$data[23],$data[24],$data[25],$data[26],$data[27],$data[28],$data[29],$data[30],$data[31]);
			if ($result) {
				echo "se inserto los data correctamente";
			}else{
				echo "no se inserto";
			}
		}
	}else{
		echo "no hay copia";
	}
}

// Setting the secon file
if (isset($_POST['comp'])) {
	$aComp = $_FILES["dbComp"]["name"];
	$copyComp = $_FILES["dbComp"]["tmp_name"];
	$compSave = "comp_".$aComp;

	if (copy($copyComp ,$compSave)) {
	}else{
		echo "no se pudo copiar el archivo <br/>";
	}
	if (file_exists($compSave)) {
		$fc = fopen($compSave,"r");
		while ($data=fgetcsv($fc, 0, ";")) {

			$comp = comparateT($data[1],$data[2],$data[3],$data[4],$data[5]);
			if ($comp) {
				echo "se inserto los datos correctamente";
			}else{
				echo "no se ha podido insertar los datos enviados";
			}
		}
	}else{
		echo "no hay copia";
	}
}
?>