-- Union, Except e Intersect

CREATE DATABASE teste;

USE teste;

CREATE TABLE R(
	A char(2)
);

CREATE TABLE S(
	A char(2)
);

INSERT INTO R(A) VALUES('a1'), ('a2'), ('a3');
INSERT INTO S(A) VALUES('a1'), ('a1'), ('a2'), ('a3'), ('a4'), ('a5');

SELECT * FROM R;
SELECT * FROM S;

-- Except
SELECT * FROM S WHERE A NOT IN (SELECT A FROM R);

-- Union
SELECT DISTINCT R.A FROM R
	UNION
    (SELECT DISTINCT S.A FROM S);
    
SELECT R.A FROM R
	UNION
    (SELECT S.A FROM S);
    
-- Intersect
SELECT DISTINCT R.A FROM R
	WHERE R.A IN 
    (SELECT S.A FROM S);