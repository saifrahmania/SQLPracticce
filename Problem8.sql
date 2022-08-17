create table emp1 ( 
empname varchar(24),
basicsalary number); 
INSERT INTO emp1 VALUES('Nasim Bahadur',3000); 
INSERT INTO emp1 VALUES('Mustakim Mishu',4000); 
INSERT INTO emp1 VALUES('Mokhlesur Rahman',5000); 
INSERT INTO emp1 VALUES('Shahida Afrin',6000); 
INSERT INTO emp1 VALUES('Kazi Sumaiya Akter',7000); 
INSERT INTO emp1 VALUES('Mazharul Islam',2000); 
INSERT INTO emp1 VALUES('Mahamud Alam',2342); 
INSERT INTO emp1 VALUES('Mamud ur Rahman',7564); 
INSERT INTO emp1 VALUES('Tahmid Shahriar',5987); 
INSERT INTO emp1 VALUES('Muhit Hasan',2352); 
INSERT INTO emp1 VALUES('Ibrahim Khalil',6456); 
DECLARE 
 emp_salary number := 5000; 
 emp_name varchar(24); 
BEGIN 
 SELECT empname INTO emp_name 
 FROM emp1 
 WHERE basicsalary = emp_salary; 
 DBMS_OUTPUT.PUT_LINE('Employee name is :' || emp_name); 
 EXCEPTION 
 WHEN TOO_MANY_ROWS THEN 
 DBMS_OUTPUT.PUT_LINE ('More than one employee getting the 
salary'); 
 WHEN NO_DATA_FOUND THEN 
 DBMS_OUTPUT.PUT_LINE ('No employee name found'); 
 
END; 
