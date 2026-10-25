-- DDL COMMANDS

-- CREATE
-- 1.CREATE DATABASE
create database EMPLOYEE;
Use EMPLOYEE;
-- 2.CREATE TABLES
create table Departments(department_id int,department_name varchar(100));
create table Location(location_id int,location varchar(30));
create table Employees(employee_id int,employee_name varchar(50),gender enum('M','F'),age int,hire_date date,designation varchar(100),
department_id int,location_id int,salary decimal(10,2));

-- ALTER 
Alter table Employees Add email varchar(254);
Alter table Employees Modify designation varchar(255);
Alter table Employees Drop column age;
Alter table Employees Rename column hire_date To Date_of_joining;

-- RENAME
Rename table Departments To Departments_Info;
Rename table Location To Locations;

-- TRUNCATE
Truncate table Employees;

-- DROP
Drop table Employees;
Drop database Employee;

-- CONSTRAINTS

Create database EMPLOYEE;
Use EMPLOYEE;
create table Departments(
department_id int primary key,
department_name varchar(100) Unique Not null);
create table Location(
location_id int auto_increment Primary key,
location varchar(30) Unique Not null );
create table Employees(
employee_id int Primary key,
employee_name varchar(50) Not null,
gender enum('M','F'),
age int check(age>=18),
hire_date date default(current_date),
designation varchar(100),
department_id int,
location_id int,
salary decimal(10,2),
Foreign Key(department_id)References Departments(department_id),
Foreign Key(location_id)References Location(location_id));


