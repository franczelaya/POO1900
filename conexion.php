<?php
	class Conexion {
		public function __construct(){

		}
		//conecta y seleciona la base de datos
		public function conect(){
			$cadena= "host = 'localhost' port=5432 dbname='BD_Matricula' user='matricula' password='sistemas.123'";
			$Conexion= pg_connect($cadena) or die ("ERROR")

			if(!$conexion){
				echo 'fallo de conexion';
				exit;
			}
			else{
				echo 'conexion exitosa';
			}
			return $conexion;
		}
		public function CerrarConexion($conex){
			$conex.pg_close();

		}
	}