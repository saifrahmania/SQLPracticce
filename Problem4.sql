DECLARE 
 mark number:=92; 
 grade varchar2(1); 
BEGIN 
 dbms_output.put_line('STUDENT ID: 2018-1-60-048'); 
 
 IF mark <=59 THEN 
 grade := 'F'; 
 ELSIF mark <=69 THEN 
 grade := 'D'; 
 ELSIF mark <=84 THEN 
 grade := 'C'; 
 ELSIF mark <=94 THEN 
 grade := 'B'; 
 ELSIF mark <=100 THEN 
 grade := 'A'; 
 END IF; 
 dbms_output.put_line(grade); 
END;
