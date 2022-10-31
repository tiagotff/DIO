show schemas;

desc person;

create database if not exists first_example;

use first_example;

CREATE TABLE if not exists person (
	person_id SMALLINT UNSIGNED,
    fname VARCHAR(20),
    lname VARCHAR(20),
    gender ENUM('M', 'F'),
    birth_date DATE,
    street VARCHAR(30),
    city VARCHAR(20),
    state VARCHAR(20),
    country VARCHAR(20),
    postal_code VARCHAR(20),
    CONSTRAINT pk_person PRIMARY KEY (person_id)
);
desc person;

create table favorite_food (
	person_id smallint unsigned,
    food varchar(20),
    constraint pk_favorite_food primary key (person_id, food),
    constraint fk_favorite_food_person_id foreign key (person_id) references person(person_id)
);

desc favorite_food;

show databases;

use information_schema;

select * from information_schema.table_constraints
where constraint_schema = 'first_example';

desc information_schema.table_constraints;

select constraint_name from information_schema.table_constraints
where table_name = 'person';

use first_example;

desc person;

insert into person values ('2','Tiago','Silva','M','1979-08-21','rua tal','Cidade J','RJ','Brasil','26054-89'),
						  ('3','Roberta','Silva','F','1979-08-21','rua tal','Cidade J','RJ','Brasil','26054-89'),
                          ('4','João','Silva','F','1979-08-21','rua tal','Cidade J','RJ','Brasil','26054-89');
delete from person where person_id=2
                      or person_id=3
					  or person_id=4;

select * from person;

desc favorite_food;

insert into favorite_food values (2,'macarrão'),
								 (3,'pizza'),
                                 (4,'peixe');

select * from favorite_food;
