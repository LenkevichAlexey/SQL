--??????? employees
--1) ??????? ??????? employees - id. serial, primary key; employee_name. Varchar(50), not null
--create table employees (id serial primary key, employee_name varchar(50) not null)
--2) ????????? ??????? employees 70 ????????.
--insert into employees (employee_name) values
--(2),
--(4),
--(2),
--(3),
--(4),
--(2),
--(3),
--(4),
--(4),
--(2),
--(2),
--(4),
--(2),
--(3),
--(4),
--(2),
--(3),
--(4),
--(4),
--(2);
--3) ??????? ??????? salary - id. Serial primary key; monthly_salary. Int, not null
--create table salary (id serial primary key, monthly_salary int not null)
--4) ????????? ??????? salary 15 ????????:
--- 1000
--- 1100
--- 1200
--- 1300
--- 1400
--- 1500
--- 1600
--- 1700
--- 1800
--- 1900
--- 2000
--- 2100
--- 2200
--- 2300
--- 2400
--- 2500
--insert into salary (monthly_salary) values 
--(1000),
--(1100),
--(1200),
--(1300),
--(1400),
--(1500),
--(1600),
--(1700),
--(1800),
--(1900),
--(2000),
--(2100),
--(2200),
--(2300),
--(2400),
--(2500);
--5) ??????? ??????? employee_salary - id. Serial primary key; employee_id. Int, not null, unique; salary_id. Int, not null
--create table employee_salary (id serial primary key, employee_id int not null unique, salary_id int not null)
--6) ????????? ??????? employee_salary 40 ????????: ? 10 ????? ?? 40 ???????? ?????????????? employee_id 
--insert into employee_salary (employee_id, salary_id) values 
--(3, 7), 
--(1, 4),
--(5, 9),
--(40, 13),
--(23, 4),
--(11, 2),
--(52, 10),
--(15, 13),
--(26, 4),
--(33, 7);
--7) ??????? ??????? roles - id. Serial primary key; role_name. int, not null, unique
--create table roles (id serial primary key, role_name int not null unique)
--8) ???????? ??? ?????? role_name ? int ?? varchar(30)
--ALTER TABLE roles ALTER COLUMN role_name type varchar(30)
--select * from roles
--9)????????? ??????? roles 20 ????????
--insert into roles (role_name) values 
--('Junior Python developer'),
--('Middle Python developer'),
--('Senior Python developer'),
--('Junior Java developer'),
--('Middle Java developer'),
--('Senior Java developer'),
--('Junior JavaScript developer'),
--('Middle JavaScript developer'),
--('Senior JavaScript developer'),
--('Junior Manual QA engineer'),
--('Middle Manual QA engeneer'),
--('Senior Manual QA engeneer'),
--('Project Manager'),
--('Designer'),
--('HR'),
--('CEO'),
--('Sales Manager'),
--('Junior Automation QA engineer'),
--('Middle Automation QA engineer'),
--('Senior Automation QA engeneer');
--10) ??????? ??????? roles_employee - id. Serial primary key; employee_id. Int, not null, unique (??????? ???? ??? ??????? employees, ???? id); role_id. Int, not null (??????? ???? ??? ??????? roles, ???? id)
--create table roles_employee (id serial primary key,
--	employee_id int not null unique,
--	role_id int not null,
--	foreign key (employee_id)
--	references employees (id),
--	foreign key (role_id)
--	references roles (id)
--	);
--11)????????? ??????? roles_employee 40 ????????
--insert into roles_employee (employee_id, role_id) values 
--(7, 2),
--(20, 4),
--(3, 9),
--(5, 13),
--(23, 4),
--(11, 2),
--(10, 9),
--(22, 13),
--(21, 3),
--(34, 4),
--(6, 7),
--(1, 5),
--(2, 6),
--(4, 7),
--(8, 8),
--(9, 9),
--(12, 10),
--(13, 10),
--(14, 11),
--(15, 12),
--(16, 13),
--(17, 14),
--(18, 15),
--(19, 16),
--(24, 17),
--(25, 18),
--(26, 19),
--(27, 20),
--(28, 1),
--(29, 2),
--(30, 3),
--(31, 4),
--(32, 5),
--(33, 6),
--(35, 9),
--(36, 4),
--(37, 9),
--(38, 5),
--(39, 7),
--(40, 3);
--select * from roles_employee;