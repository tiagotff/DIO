
USE company_constraints;
SHOW TABLES;

-- JOIN Statement
DESC employee;
DESC works_on;


SELECT * FROM employee, works_on WHERE Ssn = Essn;


-- JOIN

SELECT  * FROM employee JOIN works_on;


-- JOIN ON -> INNER JOIN ON

SHOW TABLES;
DESC departament;  -- Dnumber

SELECT  * FROM employee JOIN works_on ON Ssn = Essn;

SELECT * FROM employee JOIN departament ON Ssn = Mgr_ssn;

SELECT Fname, Lname, Address
	FROM (employee JOIN departament ON Dno=Dnumber)
		WHERE Dname = 'Research';

SELECT * FROM dept_locations;   --  e Dnumber
SELECT * FROM departament;      -- Dname, Dept_create_date

SELECT Dname AS Department, Dept_create_date AS StartDate, Dlocation AS Location
	FROM departament INNER JOIN dept_locations USING (Dnumber)
    ORDER BY StartDate;


-- CROSS JOIN   -- produto catesiano

SELECT * FROM employee CROSS JOIN dependent;


-- JOIN com mais de 3 tabelas




-- project, works_on e employee
DESC project;
SELECT concat(Fname,' ', Lname) AS Complete_name, Dno AS Dept_Number, Pname AS ProjectName,
		Pno AS Project_Number, Plocation AS Location FROM employee
	INNER JOIN works_on ON Ssn = Essn
    INNER JOIN project ON Pno = Pnumber
    WHERE Pname LIKE 'Product%'
	ORDER BY Pnumber;


-- departament, dept_location, employee
SELECT * FROM departament
	INNER JOIN dept_locations USING(Dnumber)
    INNER JOIN employee ON Ssn = Mgr_ssn;

SELECT Dnumber, Dname, concat(Fname, ' ', Lname) AS Manager,Salary, round(Salary*1.05, 2) AS Bonus  FROM departament
	INNER JOIN dept_locations USING(Dnumber)
    INNER JOIN employee ON Ssn = Mgr_ssn
    GROUP BY Dnumber
    HAVING count(*) > 1;

SELECT Dnumber, Dname, concat(Fname, ' ', Lname) AS Manager,Salary, round(Salary*1.05, 2) AS Bonus  FROM departament
	INNER JOIN dept_locations USING(Dnumber)
    INNER JOIN (dependent INNER JOIN employee ON Ssn = Essn ) ON Ssn = Mgr_ssn
    GROUP BY Dnumber;




-- departament, project e employee

