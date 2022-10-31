-- Funções e cláusulas de agrupamento

SELECT * FROM employee;

SELECT count(*) FROM employee;

SELECT count(*) FROM employee, departament
	WHERE Dno-Dnumber AND Dname = "Research";
    
SELECT Dno, count(*) AS Number_of_employees, round(avg(Salary),2) AS Salary_avg FROM employee
	GROUP BY Dno;
    
SELECT Pnumber, Pname, count(*)
	FROM project, works_on
    WHERE Pnumber = Pno
    GROUP BY Pnumber, Pname;
    
SELECT count(DISTINCT Salary) FROM employee;

SELECT sum(Salary) AS total_salary, max(Salary) AS Max_sal, min(Salary) AS Mini_Sal, avg(Salary) AS Avg_sal
	FROM employee;
    
-- Join será abordado no curso 5
SELECT SUM(Salary), MAX(Salary), MIN(Salary), AVG(Salary)
	FROM (employee JOIN departament ON Dno = Dnumber)
		WHERE Dname = 'Reasearch';

-- Group by
SELECT Pnumber, Pname, count(*)
	FROM project, works_on
		WHERE Pnumber = Pno
			GROUP BY Pnumber, Pname;

SHOW TABLES;
SELECT Pnumber, Pname, count(*) AS Number_of_Register, round(avg(Salary),2) AS AVG_Salary
	FROM project, works_on, employee
		WHERE Pnumber = Pno AND Ssn = Essn
			GROUP BY Pnumber, Pname;
            
SELECT Pnumber, Pname, count(*) AS Number_of_Register, round(avg(Salary),2) AS AVG_Salary
	FROM project, works_on, employee
		WHERE Pnumber = Pno AND Ssn = Essn
			GROUP BY Pnumber
            ORDER BY avg(Salary) DESC;
            
            
-- Group by e Having

SELECT Pnumber, Pname, Count(*)
	FROM project, works_on
		WHERE Pnumber = Pno
			GROUP BY Pnumber, Pname
				HAVING count(*) > 2;
                
SELECT Dno, count(*)
	FROM employee
    WHERE Salary > 40000
    GROUP BY Dno
    HAVING count(*) >= 2;
    
    
SELECT Dno AS Department, count(*) AS Number_of_Employees
	FROM employee
	WHERE Salary > 10000
	AND Dno IN (SELECT Dno FROM employee
				GROUP BY Dno
                HAVING count(*)>=2)
    GROUP BY Dno;
    
    
    -- Case statement
    
    SHOW DATABASES;
    
    SELECT Fname, Salary, Dno FROM employee;
    
    -- Desabilitar o SAFE MODE
    
    USE company_constraints;
    
    UPDATE employee SET Salary = 
		CASE
			WHEN Dno = 5 THEN Salary + 2000
            WHEN Dno = 4 THEN Salary + 1500
            WHEN Dno = 10 THEN Salary + 3000
            ELSE Salary + 0
		END;
	