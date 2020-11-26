DECLARE
    sec number;
    FUNCTION enroll(stdid number ) 
    RETURN number IS 
        sectionid section.sid%type := &sectionid;
        BEGIN
            insert into current_course_m (student_id , section_id )
            values ( stdid , sectionid );
            dbms_output.put_line(stdid || ' Enrolled in ' || sectionid );
            return sectionid;

        END;
begin
    sec := enroll(2000402002 );
end;
/