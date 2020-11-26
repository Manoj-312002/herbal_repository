DECLARE 
    gp number; 
    FUNCTION calc_gpac( ass1 number ,ass2  number ,ass3  number) RETURN number IS     
        gpa number := 0; 
        BEGIN  
            gpa := CEIL( (ass1/4 + ass2/4 + ass3/2)/10  ); 
            RETURN gpa; 
    END; 
    BEGIN 
        gp := calc_gpac( 90 ,90 , 90); dbms_output.put_line( gp ); 
END; 
/ 
 
DECLARE gp number;  
FUNCTION cal_gpa_sem ( stdid number , sem number ) RETURN number IS 
    gpa number := 0;
    cgpa number := 0;
    ass1 number := 0;
    ass2 number := 0;     
    ass3 number := 0;     
    credits number := 0;     
    cr number := 0; 
    CURSOR mret IS select ass1 , ass2 , ass3, credits     
        from students_course_marks , courses
        where student_id = stdid and section_id in ( select sid from section where semester = sem and section.course_id = courses.cid) ; 
BEGIN 
    OPEN mret;     
    loop 
        FETCH mret INTO ass1 , ass2 , ass3 , cr;
        EXIT when mret%notfound;
        gpa := calc_gpac( ass1 , ass2 , ass3 );
        cgpa := cgpa + gpa*cr ; 
        credits := credits + cr;     
    end loop;     
    cgpa := ( cgpa / credits ); 
 
    RETURN cgpa; 
END; 
 
BEGIN 
    gp := cal_gpa_sem(2000402002 , 2);   dbms_output.put_line( gp ); 
END; 
/ 
 
