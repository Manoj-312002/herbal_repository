CREATE OR REPLACE TRIGGER cresection BEFORE UPDATE 
        -- OF ass3 
        ON current_course_m 
    FOR EACH ROW 
    WHEN (new.ass3 > 50 )     
BEGIN          
    if (:new.ass3 > 50) then
        insert into students_course_marks (student_id , section_id , ass1 ,ass2 , ass3
        ) values ( :new.student_id , :new.section_id , :new.ass1 , :new.ass2 , :new.ass3 );    
            
        update students set current_sem = current_sem +1 where ssn = :new.student_id;  
            
        dbms_output.put_line( :new.student_id || ' Is promoted');         end if; 
END; 
 
