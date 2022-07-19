# Sprint Final Módulo 5 [JAVA-EE]

#### Desarrollado por Los Huasos TECH:

- [Natalia Ponce](https://github.com/Natalia1428),
- [Diego Saavedra](https://github.com/dleonDesarrollo),
- [Cristóbal Pulgar](https://github.com/CristobalNPE).

## Contexto

Preder, Empresa de Asesorías en Prevención de Riesgos,
busca implementar una solución tecnológica que de respuesta
a la necesidad de sistematizar y organizar eficientemente
todos los procesos e información tanto internos, como de sus clientes.

## Solución

Se ha desarrollado un sistema informático que cubre los procesos de negocio
requeridos por la Empresa,
que ofrece una mejora en la gestión, el control y disponibilidad
de los datos necesarios para su funcionamiento óptimo.

De acuerdo a los requerimientos de la empresa, se ha realizado
algunas implementaciones al sistema, para garantizar el apropiado funcionamiento de este.


- Se definen diversas clases 'entity' con sus propiedades representando a cada
  entidad que conforma el programa: Usuario, Cliente, Profesional,
  Administrativo, Capacitacion.
- Se implementa un modelo en base al patrón de diseño DAO con sus respectivas interfaces.
- Se crean servlets como controladores que se conectan a sus respectivas vistas JSP.
- Se agrega estilos y responsividad declarados en un archivo independiente.
- Se consideran todos los enlaces en el sitios para una navegabilidad correcta.

1.- Login de Acceso al Sistema.

	Función que permite el acceso a un usuario al portal
	- A través de un usuario "admin" y contraseña "1234". Donde se accede a la gestión de capacitaciones.
	- Y a través de un usuario "cliente", contraseña "1234". Para la gestión de usuarios.


2.- Gestión de Usuarios de la plataforma.

	- Se crea formulario que permitará agregar un nuevo usuario al sistema dependiendo de su perfil y editarlo en caso de 
    ser requerido.
	- Y se implementa funcionalidad para listar a todos los usuarios y ver detalle alguno en especifico. 


3.- Gestión de Capacitaciones

	- Despliega el listado de capacitaciones y formulario para añadir una nueva o editarla.

4.- Conexión a base de datos

	- Se utilizó una base de datos local mediante MySQL, en la cual se crean las tablas para almacenar capacitaciones y y tablas para 
	los distintos tipos de usuarios del sitema.

## Herramientas

- Java 15 
- Tomcat 9
- MySQL

