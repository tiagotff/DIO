-- inserção de dados no bd company constraints

use company_constraints;
show tables;

select * from employee;
insert into employee values ('John', 'B', 'Smith', 123456788, '1965-01-09', '731-Fondren-Houston-TX', 'M', 30000, null, 5),
							('Franklin', 'T', 'Wong', 186543385 , '1955-12-08', '321-Voss-Houston-TX', 'M', 40000, null, 4),
                            ('Alicia', 'J', 'Zelaya', 186543385, '1968-01-19', '325-Castle-Spring-TX', 'F', 25000, null, 4),
                            ('Bob', 'T', 'Wong', 256459675, '1959-12-05', '321-Voss-Houston-TX', 'M', 40000, null, 5),
                            ('Pietra', 'J', 'Zelaya', 386544885, '1961-01-19', '325-Castle-Spring-TX', 'F', 25000, null, 5),
                            ('Joseph', 'T', 'Wong', 256459873, '1955-01-08', '321-Voss-Houston-TX', 'M', 40000, null, 4),
                            ('Peter', 'J', 'Zelaya', 186544885, '1987-01-23', '325-Castle-Spring-TX', 'M', 25000, null, 1);

select * from dependent;
insert into dependent values (123456788, 'Alice', 'F', '1986-04-05', 'Daughter'),
							 (123456788, 'Theodore', 'M', '1999-04-05', 'Son'),
                             (123456788, 'Joy', 'F', '1977-07-05', 'Daughter'),
                             (386544885, 'Michael', 'M', '1969-04-30', 'Son'),
                             (186544885, 'Elizabeth', 'F', '1994-02-05', 'Spouse'),
							 (186544885, 'Michael', 'M', '1972-04-30', 'Son'),
                             (386544885, 'Elizabeth', 'F', '1982-02-05', 'Spouse');
                             
select * from departament;
insert into departament values ('Reasearch', 5, 123456788, '1988-05-22', '1986-05-22'),
							   ('Administration', 4, 386544885, '1995-01-01', '1994-01-01'),
                               ('Headquarters', 1, 186544885, '1981-06-19', '1980-06-19');

select * from dept_locations;
insert into dept_locations values (1, 'Houston'),
								  (4, 'Standfford'),
                                  (5, 'Bellaire'),
                                  (5, 'Sugarland'),
                                  (5, 'Houston');
                                  
select * from project;
insert into project values ('ProductX', 1, 'Bellaire', 5),
						   ('ProductY', 2, 'Sugarland', 5),
                           ('ProductZ', 3, 'Houston', 5),
                           ('Computerization', 10, 'Standfford', 4),
                           ('Reorganization', 20, 'Houston', 1),
                           ('Newbenefits', 30, 'Standfford', 4);

select * from works_on;
insert into works_on values (123456788, 1, 32.5),
							(123456788, 2, 7.5),
                            (386544885, 3, 40.0),
                            (256459875, 1, 20.0),
                            (256459875, 2, 25.0),
							(186543385, 2, 10.0),
                            (186543385, 3, 10.0),
                            (186543385, 10, 10.0),
                            (256459873, 30, 30.0);

-- Recuperando dados com queries SQL
                            
select * from employee;

-- Gerente e seu departamento
select Ssn, Fname, Dname
	from employee e, departament d
		where (e.Ssn = d.Mgr_ssn);
        
-- Dependentes dos empregados
select Ssn, Fname, Dependent_name 
	from employee, dependent
		where Essn = Ssn;

select Fname, Dependent_name, Relationship
	from employee, dependent
		where Essn = Ssn;
        
-- Localizando funcionário
select Bdate, Address
	from employee
		where Fname = 'John' and Minit = 'B' and Lname = 'Smith';
        
-- Localizando departamento específico
select * from departament
	where Dname = 'Research';

select Fname, Lname, Address 
	from employee, departament
		where Dname = 'Research' and Dnumber=Dno;

desc works_on;

select * from project;

select * from project, works_on
	where Pnumber = Pno;

select Pname, Essn, Hours
	from project, works_on, employee
		where Pnumber = Pno and Essn = Ssn;
        