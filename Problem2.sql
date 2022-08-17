DECLARE 
 side1 NUMBER := 5; 
 side2 NUMBER := 7; 
 side3 NUMBER := 3; 
BEGIN 
 dbms_output.put_line('STUDENT ID: 2018-1-60-048'); 
 IF side1 + side2 > side3 AND 
 side1 + side3 > side2 AND 
 side3 + side2 > side1 THEN 
 dbms_output.put_line(side1||', '||side2||' and '||side3||' form a 
valid triangle.'); 
 
 ELSE 
 dbms_output.put_line(side1||', '||side2||' and '||side3||' do not 
form a valid triangle.'); 
 
 END IF; 
 
END; 
