DECLARE 
   roll INTEGER:= &roll ; 
   sname VARCHAR(10) := '&name'; 
BEGIN 
    dbms_output.put_line('Hello ' || roll || sname); 
   null; 
END; 
/ 

DECLARE 
   gpa number(3) := &gpa; 
BEGIN 
   IF ( gpa  > 9 ) THEN 
      dbms_output.put_line('Excellent '); 
   ELSIF ( gpa > 8 ) THEN 
      dbms_output.put_line('Great score'); 
   ELSIF ( gpa > 7 ) THEN 
      dbms_output.put_line('Better luck next time' ); 
   ELSE 
       dbms_output.put_line('Work hard'); 
   END IF; 
END; 
/ 

DECLARE 
   i colleges%rowtype ; 
BEGIN 
    select * into i from colleges where college_id = 1;
    dbms_output.put_line( i.cname || ' ' || i.dean ); 
END; 
/

DECLARE 
    stdid students.ssn%type := &ssn; 
    stdname students.fname%type; 
    stdept students.deptid%type; 
BEGIN 
    SELECT fname , deptid INTO stdname , stdept FROM students WHERE ssn = stdid; 
    DBMS_OUTPUT.PUT_LINE ('Name: '|| stdname);
    DBMS_OUTPUT.PUT_LINE ('Deptno: ' || stdept ); 

EXCEPTION
    WHEN no_data_found THEN 
        dbms_output.put_line('No such Student !'); 
    WHEN others THEN 
        dbms_output.put_line('Error!'); 
END; 
/


DECLARE 
    stdid students.ssn%type := &ssn; 
    stdname students.fname%type; 
    stdept students.deptid%type; 

    inv EXCEPTION; 
BEGIN 
IF stdid <= 0 THEN 
    RAISE inv; 
ELSE 
    SELECT fname , deptid INTO stdname , stdept FROM students WHERE ssn = stdid; 
    DBMS_OUTPUT.PUT_LINE ('Name: '|| stdname);
    DBMS_OUTPUT.PUT_LINE ('Deptno: ' || stdept ); 

END IF; 

EXCEPTION 
    WHEN 
    inv THEN 
        dbms_output.put_line('ID must be greater than zero!'); 
    WHEN no_data_found THEN 
        dbms_output.put_line('No such Student !'); 
    WHEN others THEN 
        dbms_output.put_line('Error!'); 
END; 
/
