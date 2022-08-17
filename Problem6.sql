CREATE OR REPLACE PROCEDURE PROC_5_2018_1_60_048 
IS 
digit number := 0; 
reminder number := 0; 
res number := 0; 
BEGIN 
 dbms_output.put_line('STUDENT ID: 2018-1-60-048'); 
 FOR i IN 1..999 
 LOOP 
 digit := i; 
 reminder := 0; 
 res := 0; 
 WHILE digit > 0 
 LOOP 
 reminder := MOD(digit,10); ---1%10 = 1 
 res := res + (reminder*reminder*reminder); ---0 + 1 = 1 
 digit := FLOOR(digit/10); 
 END LOOP; 
 IF res = i THEN 
 dbms_output.put_line('Number: '||i); 
 END IF; 
 END LOOP; 
END; 
/ 
EXECUTE PROC_5_2018_1_60_048;
