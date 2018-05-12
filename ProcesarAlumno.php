<?php
//validacion del index

include 'Alumno.php';

//datos en html
	$Cuenta=$_POST['txtUsuario'];
	$Clave=$_POST['passClave'];




$obCuenta= new Cuenta($obCuenta);

$obCuenta->setCuenta($Clave);
echo $obCuenta->getCuenta(). " ".$obCuenta->getClave();

$obCuenta->Verificar();







/*if($Usuario =='andy' && $Clave == '123'){
	echo "registrado";

}
else{
	header('Location: ./index,php?error=true');
	
}*/
?>