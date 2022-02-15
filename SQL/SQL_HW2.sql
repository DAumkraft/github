--Таблица employees

-- 1)Создать таблицу employees
CREATE TABLE employees (
	id serial PRIMARY KEY,
	employee_name varchar(50) NOT NULL);

-- 2) Наполнить таблицу employee 70 строками.
INSERT INTO employees (employee_name)
	VALUES 
('Бондарев Александр'),
('Павлов Марк'),
('Тихонова Ясмина'),
('Широков Тимофей'),
('Иванов Михаил'),
('Горбачева Таисия'),
('Яковлева Екатерина'),
('Злобин Лука'),
('Егорова Анна'),
('Орлов Эмир'),
('Алексеева Милана'),
('Петрова Ксения'),
('Калинина Александра'),
('Михайлова Варвара'),
('Виноградова София'),
('Осипова Валерия'),
('Терентьева Кристина'),
('Федотова Евдокия'),
('Сергеев Даниил'),
('Голубева Эмилия'),
('Климов Даниил'),
('Семенов Матвей'),
('Кузин Марк'),
('Лебедева Мария'),
('Шубин Кирилл'),
('Шевелева Ангелина'),
('Григорьев Тимофей'),
('Хохлов Григорий'),
('Золотарев Макар'),
('Панина Анастасия'),
('Самсонова Дарья'),
('Грачев Захар'),
('Петров Михаил'),
('Козлова Эмилия'),
('Третьякова Алиса'),
('Коновалова Мария'),
('Кондратов Захар'),
('Орлов Георгий'),
('Колосова Елизавета'),
('Харитонова Ника'),
('Горбачев Павел'),
('Широков Кирилл'),
('Волкова Ксения'),
('Иванов Денис'),
('Степанов Иван'),
('Платонова Вера'),
('Ефимова София'),
('Демьянов Дмитрий'),
('Злобина Мария'),
('Бабушкин Кирилл'),
('Рогов Даниил'),
('Зубов Никита'),
('Данилова Мира'),
('Чистякова Анна'),
('Зуева Мария'),
('Федотова Александра'),
('Иванова Александра'),
('Смирнова Екатерина'),
('Черных Дамир'),
('Григорьев Даниил'),
('Грибов Лев'),
('Николаев Лев'),
('Васильева Александра'),
('Петрова Анастасия'),
('Гришин Мирон'),
('Зимин Евгений'),
('Козлов Вячеслав'),
('Румянцев Герман'),
('Казакова София'),
('Панина Анна');

SELECT * FROM employees 

-- Таблица salary

-- 1) Создать таблицу salary
CREATE TABLE salary (
	id serial PRIMARY KEY,
	monthly_salary int NOT NULL)
	
-- 2) Наполнить таблицу salary 15 строками:
INSERT INTO salary (monthly_salary)
VALUES
(1000),
(1100),
(1200),
(1300),
(1400),
(1500),
(1600),
(1700),
(1800),
(1900),
(2000),
(2100),
(2200),
(2300),
(2400),
(2500);

SELECT * FROM salary

-- Таблица employee_salary

-- Создать таблицу employee_salary
CREATE TABLE employee_salary (
	id serial PRIMARY KEY,
	employee_id int NOT NULL UNIQUE,
	salary_id int NOT NULL);

-- Наполнить таблицу employee_salary 40 строками
INSERT INTO employee_salary (id, employee_id, salary_id)
VALUES
(1,12,6),
(2,3,5),
(3,29,9),
(4,57,5),
(5,56,5),
(6,26,14),
(7,2,8),
(8,6,8),
(9,37,13),
(10,40,12),
(11,23,2),
(12,8,5),
(13,51,12),
(14,4,3),
(15,5,2),
(16,53,8),
(17,15,14),
(18,43,1),
(19,7,3),
(20,11,12),
(21,41,4),
(22,62,5),
(23,61,9),
(24,48,1),
(25,16,8),
(26,27,3),
(27,65,9),
(28,17,2),
(29,49,11),
(30,54,2),
(31,110,3),
(32,140,1),
(33,89,3),
(34,102,3),
(35,77,8),
(36,118,13),
(37,97,8),
(38,78,3),
(39,112,2),
(40,95,13);

SELECT * FROM employee_salary;

-- Таблица roles

-- Создать таблицу roles
CREATE TABLE roles (
	id serial PRIMARY KEY,
	role_name int NOT NULL UNIQUE);

-- Поменять тип столба role_name с int на varchar(30)
ALTER TABLE roles 
	ALTER COLUMN role_name TYPE varchar(30);
	
-- Наполнить таблицу roles 20 строками
INSERT INTO roles (id, role_name)
VALUES
(1,'Junior Python developer'),
(2,'Middle Python developer'),
(3,'Senior Python developer'),
(4,'Junior Java developer'),
(5,'Middle Java developer'),
(6,'Senior Java developer'),
(7,'Junior JavaScript developer'),
(8,'Middle JavaScript developer'),
(9,'Senior JavaScript developer'),
(10,'Junior Manual QA engineer'),
(11,'Middle Manual QA engineer'),
(12,'Senior Manual QA engineer'),
(13,'Project Manager'),
(14,'Designer'),
(15,'HR'),
(16,'CEO'),
(17,'Sales manager'),
(18,'Junior Automation QA engineer'),
(19,'Middle Automation QA engineer'),
(20,'Senior Automation QA engineer');

SELECT * FROM roles;

-- Таблица roles_employee

-- Создать таблицу roles_employee
CREATE TABLE roles_employee (
	id serial PRIMARY KEY,
	employee_id int NOT NULL UNIQUE,
	role_id int NOT NULL,
	FOREIGN KEY (employee_id)
		REFERENCES employees(id),
	FOREIGN KEY (role_id)
		REFERENCES roles(id)
);

-- Наполнить таблицу roles_employee 40 строками
INSERT INTO roles_employee  (id, employee_id, role_id)
VALUES
(1,70,20),
(2,26,17),
(3,17,12),
(4,18,16),
(5,47,13),
(6,36,5),
(7,61,10),
(8,19,9),
(9,9,15),
(10,21,9),
(11,14,9),
(12,24,5),
(13,23,10),
(14,34,19),
(15,4,12),
(16,67,17),
(17,63,20),
(18,37,13),
(19,45,20),
(20,52,9),
(21,49,1),
(22,12,20),
(23,55,11),
(24,16,14),
(25,43,2),
(26,68,1),
(27,13,13),
(28,35,15),
(29,60,18),
(30,1,9),
(31,10,11),
(32,11,4),
(33,29,10),
(34,42,8),
(35,59,9),
(36,64,12),
(37,32,19),
(38,5,9),
(39,33,9),
(40,38,9);

SELECT * FROM roles_employee 

SELECT employees.employee_name, salary.monthly_salary FROM employees JOIN roles ON roles_employee.employee_id = roles_employee.role_id  ORDER BY employees.id ASC 

SELECT * FROM roles JOIN roles_employee ON roles.id = employee.id

SELECT monthly_salary, employee_id, employee_name FROM salary JOIN employee_salary ON salary.id = employee_salary.id JOIN employees ON employees.id = employee_salary.employee_id

SELECT employees.employee_name, salary.monthly_salary FROM employee_salary 
		LEFT JOIN employees ON employee_salary.employee_id = employees.id 
		JOIN salary ON employee_salary.salary_id = salary.id