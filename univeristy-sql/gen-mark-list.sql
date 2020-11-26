DECLARE
CREATE PROCEDURE marklist 
is 
  stdid number := &x ; 
  sem   number; 
  i     number := 1; 
  ass1  number; 
  ass2  number; 
  ass3  number; 
  cname varchar(50); 
  cursor prevcor (sem number ) IS 
    SELECT scm.ass1, 
           scm.ass2 , 
           scm.ass3 , 
           co.cname 
    FROM   students_course_marks scm, 
           section sc, 
           courses co 
    WHERE  sc.semester = sem 
    AND    scm.student_id = stdid 
    AND    scm.section_id = sc.sid 
    AND    sc. course_id = co.cid; 

   cursor prevlab (sem number ) IS 
    SELECT scm.ass1 , 
            scm.ass3 , 
            co.cname 
    FROM   students_lab_marks scm, 
            section sc, 
            courses co 
    WHERE  sc.semester = sem 
    AND    scm.student_id = stdid 
    AND    scm.section_id = sc.sid 
    AND    sc. course_id = co.cid; 

begin 
  dbms_output.put_line('Students Marks :'); 
  select current_sem 
  INTO   sem 
  FROM   students 
  WHERE  ssn = stdid; 
   
  -- dbms_output.put_line('cname       ass1        ass2        ass3        gpa'); 
    loop dbms_output.put_line( 'semester : ' || i ); 
        dbms_output.put_line( 'Theory Courses '); 
        open prevcor( i ); 

        loop 
            FETCH prevcor 
            INTO  ass1 , 
                    ass2 , 
                    ass3 , 
                    cname; 
            
            EXIT WHEN prevcor%notfound; 
            dbms_output.put_line(cname || '     ' || ass1 || '     ' || ass2 || '     ' || ass 3 ); 
        end loop; 

        close prevcor; 


        dbms_output.put_line( 'Lab Courses '); 
        dbms_output.put_line( ' '); 

        open prevlab( i ); 
        loop 
            FETCH prevlab 
            INTO  ass1 , 
                ass3 , 
                cname; 

            EXIT WHEN prevlab%notfound; 
            dbms_output.put_line(cname || '     ' || ass1 || '     ' || ass3 ); 
        end loop; 

        close prevlab; 
        i := i + 1; 
        EXIT WHEN i >= sem; 
    end loop; 
end; 

begin 
  marklist(); 
end; 
/


DECLARE 
PROCEDURE enr ( stdid   NUMBER , 
               courseid NUMBER ) 
IS 
  sectionid NUMBER;faculty_n faculty.fname%TYPE ;CURSOR sections IS 
    SELECT sid , 
           fname 
    FROM   SECTION , 
           faculty 
    WHERE  faculty_taken = ssn 
    AND    SECTION.course_id = courseid;BEGIN 
  dbms_output.Put_line('Section Id                Fname'); 

  OPEN sections; 
  LOOP 
    FETCH sections 
    INTO  sectionid , 
          faculty_n; 
     
    EXIT 
  WHEN sections%NOTFOUND; 
    dbms_output.Put_line(sectionid 
    || '                         ' 
    || faculty_n ); 
  END LOOP; 
  CLOSE sections; 
  dbms_output.Put_line('Call enroll function'); 

END; 
BEGIN 
  enr(2000402002 , 0020100003); 
END;
/
