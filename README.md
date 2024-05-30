# CapstoneSQL



El proyecto consiste en crear una base de datos con 13 tablas relacionadas, las cuales combinare-mos y consultaremos a través del lenguaje Transact SQL.
Te damos la bienvenida.
¿Así que tú eres el nuevo programador de bases de datos?
Hola, soy James de Marketing, encantado. Me dijo el director de estrategia del dato que tú me podrías ayudar a crear mi proyecto para almacenar y gestionar los datos de marketing de los clientes de 7 países.
____________________________________________________________
I - Necesito crear una BBDD (Estos ítems debe estar en el TXT):
Crea un “Base de datos” desde Transact SQL y ponle tu nombre (Formato del nombre de la BBDD: NombreApellido)
Respuesta: CREATE DATABASE NombreApellido
____________________________________________________________
II - Necesito crear 13 tablas(Estos ítems debe estar en el TXT):
1. Deberás crear la tabla Clientes (Clientes), que contendrá los datos de los Clientes. Campos:
1.
IdCliente: tipo int, no admite nulos, identity, y es Primary Key
2.
Nombre: tipo varchar(50), no admite nulos
3.
Apellido: tipo varchar(50), no admite nulos
4.
Fnacimiento: tipo date, no admite nulos
5.
Domicilio: tipo varchar(50), no admite nulos
6.
idPais: tipo char(3), no admite nulos
7.
Telefono: tipo varchar(12), admite nulos
8.
Email: tipo varchar(30), no admite nulos
9.
Observaciones: tipo varchar(1000), admite nulos
10.
FechaAlta: tipo datetime, no admite nulos
2. Deberás construir la tabla de hechos llamada Record (Record), que contendrá el historial de campañas. Campos:
1.
IdRecord: tipo int, no admite nulos, identity, y es Primary Key
2.
FechaRecord: tipo date, no admite nulos
3.
Observaciones: tipo varchar(1000), admite nulos
3. Deberás definir la tabla de hechos Record Cliente (RecordCliente), que contendrá el historial de campañas por las que ha pasado el cliente. Relación Historia Cliente Campaña, esta tabla debe contener una Primary Key compuesta por los tres campos. Campos:
1.
idRecord: tipo int, no admite nulos
2.
IdCliente: tipo int, no admite nulos
3.
IdCampania: tipo int, no admite nulos
Cuando veas una instrucción como esta, recuerda que el nombre que debes usar en tu tabla es el que está entre paréntesis.
4. Deberás hacer la tabla País (Pais), que contendrá los países de origen de los Clientes. Campos:
1.
IdPais: tipo char(3), no admite nulos, y es Primary Key
2.
NombrePais: tipo varchar(100), no admite nulos
5. Deberás crear la tabla Horario Captación Campaña (HoraCaptacion), que contendrá la hora en la cual los clientes se registraron en las campañas. Campos:
1.
idHCaptacion: tipo int, no admite nulos, identity, y es Primary Key
2.
FechaCaptacion: tipo date, no admite nulos
3.
EstadoCaptacion: tipo smallint, no admite nulos
4.
Observaciones: tipo varchar(1000), admite nulos
6. Deberás generar la tabla Horario Captación Campaña Cliente (HoraCapClienteCampania), que contendrá la hora en la cual se registraron en las campañas los Clientes. Esta tabla debe contener una Primary Key compuesta por los tres campos.
Campos:
1.
idHCaptacion: tipo int, no admite nulos, y es Primary Key
2.
idCliente: tipo int, no admite nulos, y es Primary Key
3.
idCampania: tipo int, no admite nulos, y es Primary Key
7. Deberás definir la tabla Horario Estado (HorarioEstado), que contendrá la dimensión del horario con la descripción de un estado. Campos:
1.
IdEstado: tipo smallint, no admite nulos, identity, y es Primary Key
2.
Descripcion: tipo varchar(50), no admite nulos
8. Deberás crear la tabla Producto (Producto), que contendrá Los productos asociados a las campañas. Campos:
1. IdProducto: tipo int, no admite nulos, identity, y es Primary Key
2. Producto: tipo varchar(100), no admite nulos
9. Deberás construir la tabla Compras (Compra), que contendrá las compras en dinero que han realizado los clientes. Campos:
1.
IdCompras: tipo int, no admite nulos, identity, y es Primary Key
2.
Concepto: tipo int y no admite nulos
3.
Fecha (de la compra): tipo datetime y no admite nulos
4.
Monto: tipo money y no admite nulos
5.
Observaciones: tipo varchar(1000) y admite nulos
10. Deberás construir la tabla ComprasCliente (CompraCliente), que conectará a las compras con los clientes y su captación. La Primary Key de esta tabla estará compuesta por los tres campos. Campos:
1.
IdCompras: tipo int, no admite nulos
2.
IdCliente: tipo int , no admite nulos
3.
idHCaptacion: tipo int , no admite nulos
11. Deberás construir la tabla Campaña (Campania), que contendrá la dimensión de Campañas que han realizado los clientes. Campos:
1.
IdCampania: tipo int, no admite nulos, identity, y es Primary Key
2.
NombreCampaña: tipo varchar(50), no admite nulos
12. Deberás construir la tabla Campaña Producto (CampaniaProducto), que contendrá las relaciones entre las Campañas y los productos. Campos:
1.
IdCampania: tipo int, identity, no admite nulos, y es Primary Key
2. IdProducto: tipo int, no admite nulos, y es Primary Key
3.
Descripcion: tipo varchar (100), no admite nulos
13. Deberás construir la tabla Concepto de compra (ConceptoCompra), que contendrá la dimensión de conceptos de compra. Campos:
1.
IdConcepto: tipo int, identity, no admite nulos, y es Primary Key
2.
Concepto: tipo varchar(100), no admite nulos
____________________________________________________________
III - Necesito relacionar las 13 tablas de la siguiente forma (Estos ítems NO debe estar en el TXT):
1.
Cliente con País a través del IdPais
2.
ConceptoCompra con Compra a través de IdConcepto y Concepto
3.
HorarioEstado con HoraCaptacion a través de IdEstado y EstadoCaptacion
4.
Compra con CompraCliente a través de IdCompra
5.
Cliente con CompraCliente a través de IdCliente
6.
HoraCapClienteCampania con HoraCaptacion a través de IdHCaptacion
7.
HoraCapClienteCampania con Cliente a través de IdCliente
8.
HoraCapClienteCampania con Campania a través de IdCampania
9.
CampaniaProducto con Producto a través de IdProducto
10.
CampaniaProducto con Campania a través de IdCampania
11.
Record con RecordCliente a través de IdRecord
12.
RecordCliente con Cliente a través de IdCliente
13.
RecordCliente con Campania a través de IdCampania
IV- Inserta registros
A - Creación de tablas para la BBDD (Este ítem NO debe estar en el TXT)
Insertar Registros, lo puedes hacer de la forma que tú prefieras
En la tabla Clientes debes insertar los siguientes datos
En la tabla Pais insertaremos los siguientes registros
En la tabla HoraCaptacion insertaremos los siguientes registros
En la tabla Campania insertaremos los si-guientes registros
En la tabla HorarioEstado insertaremos los siguientes registros
En la tabla ConceptoCompra insertaremos los siguientes registros
En la tabla Compra insertaremos los siguien-tes registros
En la tabla CompraCliente insertaremos los siguientes registros
Esto es un ejemplo: como el IdCompra, IdCliente e IdHCaptación vienen dados por otras tablas que los generan de forma auto-mática, estos números no serán iguales para nadie.
B - Edición de tablas (Este ítem debe estar en el TXT):
Deberás insertar nuevos registros en las tablas HoraCaptacion y HoraCapClienteCampania, uti-lizando solo comando o lenguaje transact SQL
1 - En Tabla HoraCaptacion:
Fecha : 2024-01-01 10:00
Estado: 1
Observación: DESCONOCIDO
2 - En Tabla HoraCapClienteCampaña
idhCaptacion: Deberás colocar el idHCaptacion autogenerado en la tabla HoraCapta-cion
IdCliente: Deberás colocar cualquiera de los idCliente existente en la tabla Cliente
IdCampania: Deberás colocar cualquier IdCampania existente en la tabla Campania
V - Consultas(Estos ítems debe estar en el TXT):
1 - Haz una consulta “SELECT” que llame a la tabla Cliente y te muestre su contenido.
2 - Haz una consulta “SELECT” que te muestre solo los nombres de los clientes.
3 - Haz una consulta que muestre los 3 primeros registros (TOP N) de la tabla Cliente y que los ordene por fecha de nacimiento de forma ascendente.
4 - Haz una consulta que muestre los idPais distintos por Cliente.
5 - Haz una sentencia que modifique el Email del primer registro de tu tabla de clientes. El nuevo Email es 200@gmail.es Utiliza UPDATE…..SET……WHERE…..
6 - Realiza un promedio del campo monto de la tabla Compra.
7 - Haz una consulta que te muestre los datos de la tabla HoraCaptacion filtrados por fechas entre el 2024-01-01 y el 2024-01-30 Debes utilizar el operador BETWEEN.
8 - Crea una consulta if que te devuelva los registros de nacionalidad española de la tabla Cliente.
9 - Crea una consulta “CONDICIONAL CASE” que te devuelva un campo llamado continente con los continentes de los países de la tabla Pais.
10 - Crea un Stored procedure para insertar nuevos clientes en la tabla Clientes
•
Añade el campo DNI al igual que en el ejercicio del curso (los registros anteriores quedaran en blanco o nulos).
•
El stored procedure debe ejecutarse con la siguiente expresión:
EXEC Nuevo_cliente '2351365', 'Raúl','Stuart','19850521','Las regasta 25','ESP','655821547','Raul@krokimail.com',''
Ten en cuenta la información que te entrega la expresión anterior, por ejemplo, el nombre de la tabla de debes usar.
