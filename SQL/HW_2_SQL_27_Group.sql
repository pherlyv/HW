-- Создать таблицу employees
--- id. serial,  primary key,
--- employee_name. Varchar(50), not null

create table employees(
	id serial primary key,
	employee_name varchar(50) not null
);

select * from employees;

-- Наполнить таблицу employee 70 строками.

insert into employees (id, employee_name)
values (default, 'Tom'),
       (default, 'Alexey'),
       (default, 'Aleksandr'),
       (default, 'Anatoly'),
       (default, 'Andrey'),
       (default, 'Anton'),
       (default, 'Arkady'),
       (default, 'Artem'),
       (default, 'Artur'),	 
       (default, 'Boris'),
       (default, 'Vadim'),
       (default, 'Valentin'),
       (default, 'Valeriy'),
       (default, 'Viktor'),
       (default, 'Vitaly'),
       (default, 'Vladimir'),
       (default, 'Vladislav'),
       (default, 'Gennady'),
       (default, 'Georgy'),	 
       (default, 'Gleb'),
       (default, 'Daniil'),
       (default, 'Denis'),
       (default, 'Dmitry'),
       (default, 'Ivan'),
       (default, 'Igor'),
       (default, 'Kirill'),
       (default, 'Konstantin'),
       (default, 'Lev'),
       (default, 'Leonid'),	 
       (default, 'Mikhail'),
       (default, 'Nikita'),
       (default, 'Oleg'),
       (default, 'Pavel'),
       (default, 'Petr'),
       (default, 'Roman'),
       (default, 'Ruslan'),
       (default, 'Stepan'),
       (default, 'Timur'),
       (default, 'Fedor'),	 
       (default, 'Yakov'),
       (default, 'Yan'),
       (default, 'Yaroslav'),
       (default, 'Alisa'),
       (default, 'Alina'),
       (default, 'Albina'),
       (default, 'Angelina'),
       (default, 'Anna'),
       (default, 'Antonina'),
       (default, 'Vera'),	 
       (default, 'Viktoria'),
       (default, 'Galina'),
       (default, 'Diana'),
       (default, 'Ekaterina'),
       (default, 'Elena'),
       (default, 'Elizaveta'),
       (default, 'Inna'),
       (default, 'Irina'),
       (default, 'Kira'),
       (default, 'Kristina'),	 
       (default, 'Larisa'),
       (default, 'Margarita'),
       (default, 'Marina'),
       (default, 'Nina'),
       (default, 'Olesya'),
       (default, 'Olga'),
       (default, 'Polina'),
       (default, 'Raisa'),
       (default, 'Rosa'),
       (default, 'Svetlana'),	 
       (default, 'Yana');

-- проверка  

select * from employees;

--- Таблица salary
--- Создать таблицу salary
--- id. Serial  primary key,
--- monthly_salary. Int, not null

create table salary(
	id serial primary key,
	monthly_salary int not null
);

select * from salary;

-- 2. Наполнить таблицу salary 16 строками:: - 1000 - 1100 - 1200 - 1300 - 1400 - 1500 - 1600 - 1700 - 1800 - 1900 - 2000 - 2100 - 2200 - 2300 - 2400 - 2500

insert into salary (id, monthly_salary)
values (default, 1000),
	   (default, 1100),
	   (default, 1200),
	   (default, 1300),
	   (default, 1400),
	   (default, 1500),
	   (default, 1600),
	   (default, 1700),
	   (default, 1800),
	   (default, 1900),
	   (default, 2000),
	   (default, 2100),
	   (default, 2200),
	   (default, 2300),
	   (default, 2400),
	   (default, 2500);
	   
select * from salary;

-- 1. Создать таблицу employee_salary
-- id. Serial  primary key,
-- employee_id. Int, not null, unique
-- salary_id. Int, not null

create table employee_salary(
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null);

select * from employee_salary;

-- 2. Наполнить таблицу employee_salary 40 строками:
-- в 10 строк из 40 вставить несуществующие employee_id

insert into employee_salary (employee_id, salary_id)
values (1, 1),
	   (2, 2),
	   (3, 3),
	   (4, 4),
	   (5, 5),
	   (6, 6),
	   (7, 7),
	   (8, 8),
	   (9, 9),
	   (10, 10),
	   (11, 11),
	   (12, 12),
	   (13, 13),
	   (14, 14),
	   (15, 15),
	   (16, 16),
	   (17, 17),
	   (18, 18),
	   (19, 19),
	   (20, 20),
	   (21, 21),
	   (22, 22),
	   (23, 23),
	   (24, 24),
	   (25, 25),
	   (26, 26),
	   (27, 27),
	   (28, 28),
	   (29, 29),
	   (71, 30),
	   (72, 31),
	   (73, 32),
	   (74, 33),
	   (75, 34),
	   (76, 35),
	   (77, 36),
	   (78, 37),
	   (79, 38),
	   (80, 39),
	   (81, 40);
	   
select * from employee_salary;

-- Создать таблицу roles
-- id. Serial  primary key,
-- role_name. int, not null, unique

create table roles(
	id serial primary key,
	role_name int not null unique);

select * from roles;

-- Поменять тип столба role_name с int на varchar(30)

ALTER TABLE roles 
ALTER COLUMN role_name
TYPE varchar(30);

-- проверка

select column_name, data_type
FROM  information_schema.columns
WHERE table_name = 'roles';

-- Наполнить таблицу roles 20 строками:

insert into roles (id, role_name)
values (default, 'Junior Python developer'),
		(default, 'Junior Java developer'),
		(default, 'Junior JavaScript developer'),
		(default, 'Junior Manual QA engineer'),
		(default, 'Junior Automation QA engineer'),
		(default, 'Sales manager'),
		(default, 'CEO'),
		(default, 'HR'),
		(default, 'Designer'),
		(default, 'Project Manager'),
		(default, 'Middle Python developer'),
		(default, 'Middle Java developer'),
		(default, 'Middle JavaScript developer'),
		(default, 'Middle Manual QA engineer'),
		(default, 'Middle Automation QA engineer'),
		(default, 'Senior Java developer'),
		(default, 'Senior JavaScript developer'),
		(default, 'Senior Manual QA engineer'),
		(default, 'Senior Automation QA engineer'),
		(default, 'Senior Python developer');
		
select * from roles;

-- Создать таблицу roles_employee
-- id. Serial  primary key,
-- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- role_id. Int, not null (внешний ключ для таблицы roles, поле id)

create table roles_employee(
	id serial  primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id)
		references employees(id),
	foreign key (role_id)
		references roles(id)
);

select * from roles_employee;

-- Наполнить таблицу roles_employee 40 строками

insert into roles_employee
values (default, 40, 1),
		(default, 39, 2),
		(default, 38, 3),
		(default, 37, 4),
		(default, 36, 5),
		(default, 35, 6),
		(default, 34, 7),
		(default, 33, 8),
		(default, 32, 9),
		(default, 31, 10),
		(default, 30, 11),
		(default, 29, 12),
		(default, 28, 13),
		(default, 27, 14),
		(default, 26, 15),
		(default, 25, 16),
		(default, 24, 17),
		(default, 23, 18),
		(default, 22, 19),
		(default, 21, 20),
		(default, 20, 1),
		(default, 19, 2),
		(default, 18, 3),
		(default, 17, 4),
		(default, 16, 5),
		(default, 15, 6),
		(default, 14, 7),
		(default, 13, 8),
		(default, 12, 9),
		(default, 11, 10),
		(default, 10, 11),
		(default, 9, 12),
		(default, 8, 13),
		(default, 7, 14),
		(default, 6, 16),
		(default, 5, 17),
		(default, 4, 18),
		(default, 3, 19),
		(default, 2, 20);
		
select * from roles_employee;
