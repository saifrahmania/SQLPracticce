CREATE OR REPLACE PROCEDURE PROC_4_2018_1_60_048(code in number, amount in 
number, net out number) 
IS 
 discount number := 0; 
BEGIN 
 dbms_output.put_line('STUDENT ID: 2018-1-60-048'); 
 IF code = 1 THEN 
 IF amount < 3000 THEN 
 discount := amount * 0.02; 
 ELSIF amount < 5000 THEN 
 discount := amount * 0.08; 
 ELSE 
 discount := amount * 0.12; 
 END IF; 
 ELSIF code = 2 THEN 
 IF amount >= 20000 THEN 
 discount := amount * 0.10; 
 ELSIF amount >=15000 THEN 
 discount := amount * 0.05; 
 END IF; 
 ELSIF code = 3 THEN 
 IF amount >= 50000 THEN 
 discount := amount * 0.10; 
 ELSIF amount >=25000 THEN 
 discount := amount * 0.05; 
 END IF; 
 END IF; 
 net := amount-discount; 
END; 
/ 
DECLARE 
 a number; 
BEGIN 
 PROC_4_2018_1_60_048(2,15000,a); 
 dbms_output.put_line('Net order amount:'||a); 
END; 
/
