<?php

include 'Persona.php';


$Nombre=$_POST['txtNombre'];
$ID=$_POST['txtID'];


$objPersona=new Persona($Nombre);


$objPersona= new ID($ID);


echo $objPersona->getNombre()