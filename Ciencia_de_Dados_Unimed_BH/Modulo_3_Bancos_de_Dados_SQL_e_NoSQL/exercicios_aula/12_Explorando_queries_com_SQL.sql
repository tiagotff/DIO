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
            
            
SELECT DISTINCT *
	FROM works_on
		WHERE (Pno, Hours) IN (SELECT Pno, Hours
			FROM works_on
				WHERE Essn=123456789);
                

-- Cláusulas com EXISTS e UNIQUE

-- Quais employees possuem dependentes

SELECT e.Fname, e.Lname
	FROM employee AS e
		WHERE EXISTS 
			(SELECT * 
				FROM dependent AS d
					WHERE e.Ssn = d.Essn AND e.Sex = e.Fname = d.Dependent_name AND Relationship = 'Son');
                    
-- empregados que não possuem dependentes
        
SELECT e.Fname, e.Lname
	FROM employee AS e
		WHERE NOT EXISTS 
			(SELECT * 
				FROM dependent AS d
					WHERE e.Ssn = d.Essn AND e.Sex = e.Fname = d.Dependent_name);
                    
-- Gerentes que possuem dependentes

SELECT e.Fname, e.Lname
	FROM employee AS e, departament AS d
		WHERE (e.Ssn = d.Mgr_ssn)
			AND EXISTS
			(SELECT * 
				FROM dependent AS d
					WHERE e.Ssn = d.Essn );
                    
-- Comparar utilizando operador matemático
-- Employee tem 2 ou mais dependentes

SELECT Fname, Lname
	FROM employee
		WHERE (SELECT COUNT(*) FROM dependent
								WHERE Ssn=Essn) >=1;
                                
-- Comparando se um atributo está dentro de um conjunto

SELECT DISTINCT Essn, Pno
	FROM works_on
		WHERE Pno IN (1,2,3);