CREATE OR REPLACE FUNCTION FUNC_8_2018_1_60_048 (side1 number,side2 
number, side3 number) 
RETURN BOOLEAN 
IS 
BEGIN 
 dbms_output.put_line('STUDENT ID: 2018-1-60-048'); 
 IF side1 + side2 > side3 AND 
 side1 + side3 > side2 AND 
 side3 + side2 > side1 THEN 
 RETURN TRUE; 
 ELSE 
 RETURN FALSE; 
 END IF; 
END; 
/ 
CREATE OR REPLACE PROCEDURE PROC_8_2018_1_60_048 
IS 
side1 number := 5; 
side2 number := 6; 
side3 number := 10; 
BEGIN 
 IF FUNC_8_2018_1_60_048(side1,side2,side3) THEN 
 dbms_output.put_line(side1||', '||side2||' and '||side3||' form 
a valid triangle.'); 
 ELSE 
 dbms_output.put_line(side1||', '||side2||' and '||side3||' do 
not form a valid triangle.'); 
 END IF; 
END; 
/ 
EXECUTE PROC_8_2018_1_60_048; 
