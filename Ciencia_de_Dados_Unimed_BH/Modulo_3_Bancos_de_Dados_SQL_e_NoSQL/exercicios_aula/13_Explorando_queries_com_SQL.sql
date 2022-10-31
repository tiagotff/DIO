-- Cláusulas de ordenação
USE company_constraints;

SELECT *
	FROM employee
		ORDER BY Fname, Lname;
 
-- nome do departamento, nome do gerente do departamento
SELECT DISTINCT d.Dname, concat(e.Fname, ' ', e.Lname) AS Manager, Address
	FROM departament AS d, employee e, works_on AS w, project p
		WHERE (d.Dnumber = e.Dno AND e.Ssn = Mgr_ssn AND w.Pno = p.Pnumber)
			ORDER BY d.Dname, e.Fname, e.Lname;

-- Recupera todos os empregados e seus projetos em andamento            
SELECT d.Dname AS Departament, concat(e.Fname, ' ', e.Lname) AS employee, p.Pname AS Project_Name
	FROM departament AS d, employee e, works_on w, project p
		WHERE (d.Dnumber = e.Dno AND e.SSn = w.Essn AND w.Pno = p.Pnumber)
			ORDER BY d.Dname DESC, e.Fname ASC, e.Lname ASC;
            
