-- Delete all sql tables 
DROP table students  cascade constraints;
DROP table students_course_marks cascade constraints;
DROP table current_course_m cascade constraints;
DROP table current_lab_m cascade constraints;
DROP table students_lab_marks cascade constraints;

DROP table courses cascade constraints;
DROP table departments cascade constraints;
DROP table section cascade constraints;
DROP table visiting cascade constraints;
DROP table electives cascade constraints;
DROP table faculty cascade constraints;
DROP table colleges cascade constraints;


delete from visiting where  fid = 101001;
delete from visiting;