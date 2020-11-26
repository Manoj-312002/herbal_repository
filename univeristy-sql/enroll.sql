DECLARE
    PROCEDURE enr ( stdid number , courseid number ) IS 
        sectionid number;
        faculty_n faculty.fname%type ;
        
        cursor sections is select sid , fname
          from section , faculty 
        where faculty_taken = ssn and section.course_id = courseid;

        BEGIN 
            dbms_output.put_line('Section Id                Fname');
            open sections;
            loop
                FETCH sections INTO sectionid , faculty_n;
                EXIT when sections%notfound;
                dbms_output.put_line(sectionid || '                         ' || faculty_n );
            end loop;
            close sections;
            
            dbms_output.put_line('Call enroll function');
        END;


BEGIN
    enr(2000402002 , 0020100003);
END;
/
