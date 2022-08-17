DECLARE 
 side1 NUMBER; 
BEGIN 
 side1 := 20; 
 dbms_output.put_line('STUDENT ID: 2018-1-60-048'); 
 IF side1 < 18 THEN 
 dbms_output.put_line('child'); 
 ELSIF side1 >=18 AND 21> side1 THEN 
 dbms_output.put_line('major'); 
 ELSE 
 dbms_output.put_line('adult'); 
 
 END IF; 
 
END; 
