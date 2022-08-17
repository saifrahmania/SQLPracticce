CREATE TABLE emp2 (empno varchar(24), empname varchar(30), designation 
 varchar2(100), categoryy char(12), basicsalary number, joined 
date 
 ); 
CREATE TABLE temp (empname varchar(30), joined date); 
INSERT INTO emp2 VALUES ('1001','Sabbir','Man','a',50000,date '2022-1-
12'); 
INSERT INTO emp2 VALUES ('1002','Tanvir','Assist','b',35000,date '2022-
1-12'); 
INSERT INTO emp2 VALUES ('1002','Suzon','Mana','a',50000,date '2012-1-
12'); 
INSERT INTO emp2 VALUES ('1003','Tasnuva','Clark','b',15000, date '2021-
11-18'); 
INSERT INTO emp2 VALUES ('1004','Shoili','Mana','a',50000,date '2012-1-
22'); 
DECLARE 
exp_check EXCEPTION; 
CURSOR C1 IS 
SELECT empname, joined FROM emp2; 
BEGIN 
FOR i IN C1 
LOOP 
IF(trunc(months_between(sysdate,i.joined)/12)<2) THEN 
RAISE exp_check; 
ELSE 
INSERT INTO temp VALUES(i.empname, 
trunc(months_between(sysdate,i.joined)/12)); 
END IF; 
END LOOP; 
EXCEPTION 
WHEN exp_check THEN 
DBMS_OUTPUT.PUT_LINE('Experiance is less then 2 years not allowed'); 
WHEN OTHERS THEN 
DBMS_OUTPUT.PUT_LINE('Unidentified error occured'); 
END; 
