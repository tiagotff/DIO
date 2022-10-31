-- subqueries

USE company_constraints;

DESC project;
DESC departament;
DESC employee;

SELECT * FROM employee;

SELECT DISTINCT Pnumber
	FROM project
		WHERE Pnumber IN 
			(
				SELECT DISTINCT Pno
					FROM works_on, employee
						WHERE (Essn=Ssn AND Lname = 'Wallace'
			)
			OR
			(
				SELECT Pnumber
					FROM project p, departament d, employee
						WHERE (Mgr_ssn = Ssn AND Lname = 'Wallace' AND p.Dnumber = d.Dnumber)
			)
			);