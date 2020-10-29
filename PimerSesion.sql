#Ejemplo 2
SHOW DATABASES;
USE tienda;
SHOW TABLES;
DESCRIBE empleado;
#Reto 1
DESCRIBE venta;
DESCRIBE articulo;
DESCRIBE puesto;
#Ejemplo 3
SELECT nombre
FROM empleado;
SELECT *
FROM empleado;
SELECT *
FROM empleado
WHERE apellido_paterno = 'Risom';
SELECT *
FROM empleado
WHERE id_puesto > 100;
SELECT *
FROM empleado
WHERE id_puesto >= 100
AND id_puesto <= 200;
SELECT *
FROM empleado
WHERE id_puesto = 100
OR id_puesto = 200;
SELECT *
FROM empleado
WHERE id_puesto IN (100,200);
#Reto 2
SELECT *
FROM empleado
WHERE id_puesto = 4;
SELECT *
FROM puesto;
SELECT *
FROM puesto
WHERE salario > 10000;
SELECT *
FROM articulo;
SELECT *
FROM articulo
WHERE precio > 1000
AND iva > 100;
SELECT *
FROM venta
WHERE id_articulo IN (135,963)
AND id_empleado IN (835,369);
#Ejemplo 4
SELECT *
FROM puesto
ORDER BY salario DESC;
SELECT *
FROM puesto
ORDER BY salario;
SELECT *
FROM empleado
LIMIT 5;
#Reto 3
SELECT *
FROM puesto
ORDER BY salario DESC
LIMIT 5;
#Ejercicios
SHOW DATABASES;
# 1 Dentro del mismo servidor de bases de datos, conéctate al esquema classicmodels.
USE classicmodels;
SHOW TABLES;
DESCRIBE employees;
#2 Dentro de la tabla employees, obtén el apellido de todos los empleados.
SELECT lastName
FROM employees;
DESCRIBE employees;
#3 Dentro de la tabla employees, obtén el apellido, nombre y puesto de todos los empleados.
SELECT lastName, firstName, jobTitle
FROM employees;
#4 Dentro de la tabla employees, obtén todos los datos de cada empleado.
SELECT *
FROM employees;
#5 Dentro de la tabla employees, obtén el apellido, nombre y puesto de todos los empleados que tengan el puesto Sales Rep.
SELECT lastName, firstName, jobTitle
FROM employees
WHERE jobTitle = 'Sales Rep';
#6 Dentro de la tabla employees, obtén el apellido, nombre, puesto y código de oficina de todos los empleados que tengan el puesto Sales Rep y código de oficina 1.
SELECT lastName, firstName, jobTitle, officeCode
FROM employees
WHERE jobTitle = 'Sales Rep'
AND officeCode = 1;
#7 Dentro de la tabla employees, obtén el apellido, nombre, puesto y código de oficina de todos los empleados que tengan el puesto Sales Rep o código de oficina 1.
SELECT lastName, firstName, jobTitle, officeCode
FROM employees
WHERE jobTitle = 'Sales Rep'
OR officeCode = 1;
#8 Dentro de la tabla employees, obtén el apellido, nombre y código de oficina de todos los empleados que tenga código de oficina 1, 2 o 3.
SELECT lastName, firstName, jobTitle, officeCode
FROM employees
WHERE officeCode IN (1,2,3);
#9 Dentro de la tabla employees, obten el apellido, nombre y puesto de todos los empleados que tengan un puesto distinto a Sales Rep.
SELECT lastName, firstName, jobTitle
FROM employees
WHERE jobTitle != 'Sales Rep';
SELECT lastName, firstName, jobTitle
FROM employees
WHERE NOT jobTitle = 'Sales Rep';
#10 Dentro de la tabla employees, obtén el apellido, nombre y código de oficina de todos los empleados cuyo código de oficina sea mayor a 5.
SELECT lastName, firstName, officeCode
FROM employees
WHERE officeCode > 5;
#11 Dentro de la tabla employees, obtén el apellido, nombre y código de oficina de todos los empleados cuyo cdigo de oficina sea menor o igual 4.
SELECT lastName, firstName, officeCode
FROM employees
WHERE officeCode <= 4;
#12 Dentro de la tabla customers, obtén el nombre, país y estado de todos los clientes cuyo país sea USA y cuyo estado sea CA.
DESCRIBE customers;
SELECT customerName, country, state, creditLimit
FROM customers
WHERE country = 'USA'
AND state = 'CA';
#13 Dentro de la tabla customers, obtén el nombre, país, estado y límite de crédito de todos los clientes cuyo país sea, USA, cuyo estado sea CA y cuyo límite de crédito sea mayor a 100000.
SELECT customerName, country, state, creditLimit
FROM customers
WHERE country = 'USA'
AND state = 'CA'
AND creditLimit > 100000;
#14 Dentro de la tabla customers, obtén el nombre y país de todos los clientes cuyo país sea USA o France.
SELECT customerName, country
FROM customers
WHERE country IN ('USA','FRANCE');
#15 Dentro de la tabla customers, obtén el nombre, país y límite de crédito de todos los clientes cuyo país sea USA o France y cuyo límite de crédito sea mayor a 100000.
SELECT customerName, country, creditLimit
FROM customers
WHERE country IN ('USA','FRANCE')
AND creditLimit > 100000;
#16 Dentro de la tabla offices, obtén el código de la oficina, ciudad, teléfono y país de aquellas oficinas que se encuentren en USA o France.
DESCRIBE offices;
SELECT officeCode, city, phone, country
FROM offices
WHERE country IN ('USA','France');
#17 Dentro de la tabla offices, obtén el código de la oficina, ciudad, teléfono y país de aquellas oficinas que no se encuentren en USA o France.
SELECT officeCode, city, phone, country
FROM offices
WHERE NOT country IN ('USA','France');
#18 Dentro de la tabla orders, obtén el número de orden, número de cliente, estado y fecha de envío de todas las órdenes con el número 10165, 10287 o 10310.
SELECT orderNumber, customerNumber, status, shippedDate
FROM orders
WHERE orderNumber IN (10165, 10287, 10310);
#19 Dentro de la tabla customers, obtén el apellido y nombre de cada cliente y ordena los resultados por apellido de forma ascendente.
DESCRIBE customers;
SELECT contactLastName, contactFirstName
FROM customers
ORDER BY contactLastName;
#20 Dentro de la tabla customers, obtén el apellido y nombre de cada cliente y ordena los resultados por apellido de forma descendente.
SELECT contactLastName, contactFirstName
FROM customers
ORDER BY contactLastName DESC;
#21 Dentro de la tabla customers, obtén el apellido y nombre de cada cliente y ordena los resultados por apellido de forma descendente y luego por nombre de forma ascendente.
SELECT contactLastName, contactFirstName
FROM customers
ORDER BY contactFirstName;
#22 Dentro de la tabla customers, obtén el número de cliente, nombre de cliente y el límite de crédito de los cinco clientes con el límite de crédito más alto (top 5).
SELECT customerNumber, customerName, creditLimit
FROM customers
ORDER BY creditLimit DESC
LIMIT 5;
#23 Dentro de la tabla customers, obtén el número de cliente, nombre de cliente y el límite de crédito de los cinco clientes con el límite de crédito más bajo.
SELECT customerNumber, customerName, creditLimit
FROM customers
ORDER BY creditLimit
LIMIT 5;