use company_constraints;

show tables;

-- Dnumber: departament
desc departament;
desc dept_locations;

select * from departament;

select * from dept_locations;

-- Retirando a ambiguidade através do ALIAS
select Dname, l.Dlocation as Department_name
	from departament as d, dept_locations as l
		where d.Dnumber = l.Dnumber;
 
-- CONCAT
select concat(Fname, ' ', Lname) as Employee 
	from employee;



-- Expressões e ALIAS

-- Recolhendo o valor do INSS
SELECT Fname, Lname, Salary, Salary * 0.11 FROM employee;

-- INSS é um atributo derivado, não persistido.
SELECT Fname, Lname, Salary, ROUND(Salary * 0.11, 2) AS INSS 
	FROM employee;


-- Definindo um aumento de salário para os gerentes que trabalham no projeto associado ao ProductX
SELECT * 
	FROM employee e, works_on as w, project as p
		WHERE (e.Ssn = w.Essn and w.Pno = p.Pnumber);

SELECT concat(Fname, ' ', Lname) as Complete_name, Salary, round(Salary * 1.10, 2) AS Increased_salary
	FROM employee e, works_on as w, project as p
		WHERE (e.Ssn = w.Essn and w.Pno = p.Pnumber and p.Pname='ProductX');
        
-- Definindo ALIAS para legibilidade da consulta
SELECT CONCAT(e.Fname, ' ', e.Lname) AS Full_name, e.Address FROM employee e, departament d
	WHERE d.Dname = 'Research' and d.Dnumber = e.Dno;
    



DESC dept_locations;





-- Recuperando infromações dos departamentos presentes em localidades especificas em Standfford

SELECT Dname AS Departament_Name, Mgr_ssn AS Manager, Address
	FROM departament d, dept_locations l, employee e
		WHERE d.Dnumber = l.Dnumber AND Dlocation = 'Standfford';
		
-- Recuperando todos os gerentes que trabalham em Standfford
SELECT Dname AS Departament_Name, CONCAT(Fname, ' ', Lname) AS Manager
	FROM departament d, dept_locations l, employee e
		WHERE d.Dnumber = l.Dnumber AND Dlocation = 'Standfford' AND Mgr_ssn = e.Ssn;
        
-- Recuperando todos os gerentes , departamentos e seus nomes
SELECT Dname AS Departament_Name, CONCAT (Fname, ' ', Lname) AS Manager
	FROM departament d, dept_locations l, employee e
		WHERE d.Dnumber = l.Dnumber AND Mgr_ssn = e.Ssn;
        
        
-- Expressões e concatenação de strings




-- Recuperando informações dos departamentos presentes em Stadfford
DESC dept_locations;
SELECT * FROM dept_locations;
SELECT Dname AS Departament_Name, Mgr_ssn AS Manager, Address FROM departament d, dept_locations l, employee e
	WHERE d.Dnumber = l.Dnumber AND Dlocation = 'Standfford';


-- Recuperando todos os gerentes que trabalham em Stadfford
DESC dept_locations;
SELECT * FROM dept_locations;
SELECT Dname AS Departament_Name, concat(Fname, ' ', Lname) AS Manager FROM departament d, dept_locations l, employee e
	WHERE d.Dnumber = l.Dnumber AND Dlocation = 'Standfford' AND Mgr_ssn = e.Ssn;