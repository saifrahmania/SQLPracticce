CREATE TABLE CUSTOMER ( 
Meter_Number varchar2(4), 
Meter_Type char(1), 
Previous_Reading number, 
Current_Reading number, 
Customer_Type char(1), 
Last_Bill_payment char(1), 
check(Last_Bill_payment = 'Y' OR Last_Bill_payment = 'N') 
); 
INSERT INTO CUSTOMER VALUES (1000,'S',3000,5000,'A','Y'); 
INSERT INTO CUSTOMER VALUES (1001,'T',3000,5000,'R','Y'); 
INSERT INTO CUSTOMER VALUES (1002,'S',400,2000,'R','Y'); 
CREATE TABLE BILL ( 
Meter_Number varchar2(4) PRIMARY KEY, 
units number, 
rate number, 
amount number, 
surcharge number, 
Excise number, 
Net number 
); 
CREATE OR REPLACE PROCEDURE PROC_7_2018_1_60_048 
IS 
 CURSOR CUSTOMERS IS 
 SELECT * FROM CUSTOMER; 
 units number; 
 rate number; 
 amount number; 
 surcharge number; 
 Excise number; 
 Net number; 
 
BEGIN 
 dbms_output.put_line('STUDENT ID: 2018-1-60-048'); 
 FOR i IN CUSTOMERS 
 LOOP 
 units:=i.current_reading - i.previous_reading; 
 rate := 1; 
 
 IF i.customer_type = 'A' THEN 
 rate := 1; 
 ELSIF i.customer_type = 'I' THEN 
 rate := 1.25; 
 ELSIF i.customer_type = 'C' THEN 
 rate := 1.50; 
 ELSIF i.customer_type = 'R' THEN 
 rate := 1.30;
 END IF; 
 amount:= rate * units; 
 
 IF i.meter_type = 'T' THEN 
 surcharge:=amount*0.1; 
 ELSIF i.meter_type = 'S' THEN 
 surcharge:=amount*0.05; 
 END IF; 
 Excise:= (amount + surcharge) * 0.3; 
 Net:= amount + surcharge + Excise; 
 
 INSERT INTO BILL VALUES (i.meter_number,units ,rate, amount, 
surcharge, Excise, Net); 
 END LOOP; 
END; 
/ 
EXECUTE PROC_7_2018_1_60_048; 
SELECT * FROM BILL; 
