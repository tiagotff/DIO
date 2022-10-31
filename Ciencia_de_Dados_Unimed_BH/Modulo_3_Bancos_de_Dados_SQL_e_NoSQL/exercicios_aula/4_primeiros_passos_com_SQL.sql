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

