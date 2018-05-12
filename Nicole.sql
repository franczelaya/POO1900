-- Database: Nicole

-- DROP DATABASE "Nicole";

CREATE DATABASE "Nicole"
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'Spanish_Spain.1252'
    LC_CTYPE = 'Spanish_Spain.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;
	
	create table alumno(
		alu_nuenta varchar (11) not null,
		alu_nombre varchar (80) not null, 
		alu_edad int,
		alu_id varchar (15),
		alu_carrera varchar (25) not null,
		primary key (alu_nuenta)
	)
	
	create table asignatura(
		asi_codigo varchar (11) not null,
		asi_nombre varchar (25) not null,
		asi_seccion varchar (5) not null,
		asi_catedratico varchar (80) not null,
		asi_horario varchar (5) not null,
		asi_aula varchar (10) not null,
		asi_uvalorativa varchar (2) not null,
		primary key (asi_codigo)
	)
	
	create table login(
		log_codigo varchar (8) not null,
		alu_nuenta varchar (11) not null,
		log_password varchar (80) not null,
		primary key (log_codigo),
		foreign key (alu_nuenta) references alumno (alu_nuenta)
	)
	
	create table matricula(
    mat_codigo varchar (8) not null,
	log_codigo varchar (8) not null,
    asi_codigo varchar (11) not null,
		primary key (mat_codigo),
		foreign key (log_codigo) references login (log_codigo),
		foreign key (asi_codigo) references asignatura (asi_codigo)
	)
	
	create table matriculaasignatura(
	mat_codigo varchar (8) not null,
		asi_codigo varchar (11) not null,
		primary key (mat_codigo,asi_codigo),
		foreign key (mat_codigo) references matricula (mat_codigo),
		foreign key (asi_codigo) references asignatura (asi_codigo)
	)