CREATE TABLE tempp ( item number, square number, CUBE number ); 
DECLARE 
 nm NUMBER := 3; 
 item_a NUMBER; 
 item_b NUMBER; 
 item_c NUMBER; 
BEGIN 
 INSERT INTO tempp values (nm, nm*nm, nm*nm*nm); 
 
 SELECT item, square, cube 
 INTO item_a, item_b, item_c 
 FROM tempp; 
 dbms_output.put_line(item_a || ' ' ||item_b || ' ' || item_c); 
END;
