insert all
 into students (ssn , fname, lname, bdate, gender, address, phno, deptid, course_name, current_sem ) values ( 2000401001 , 'Ashwin'  , 'S' , '12-JAN-2004' , 'Male' , 'West street Anna Nagar chennai'      , 9823053023  ,  00401 , 'B.Tech Information Technology' , 1 )
 into students (ssn , fname, lname, bdate, gender, address, phno, deptid, course_name, current_sem ) values ( 2000401002 , 'Gaikwad' , 'R' , '2-JAN-2004'  , 'Male' , 'North street Anna Nagar chennai'     , 9823063023  ,  00401 , 'B.Tech Information Technology' , 1 )
 into students (ssn , fname, lname, bdate, gender, address, phno, deptid, course_name, current_sem ) values ( 2000401003 , 'Tripatti', 'T' , '12-JUL-2004' , 'Male' , 'East street Anna Nagar chennai'      , 9823053023  ,  00401 , 'B.Tech Information Technology' , 1 )
 into students (ssn , fname, lname, bdate, gender, address, phno, deptid, course_name, current_sem ) values ( 2000402001 , 'Dhoni'   , 'D' , '6-MAR-2004'  , 'Male' , 'South street Anna Nagar chennai'     , 9123553123  ,  00402 , 'BE Computer Technology'        , 1 )
 into students (ssn , fname, lname, bdate, gender, address, phno, deptid, course_name, current_sem ) values ( 2000402002 , 'Rahul'   , 'L' , '12-APR-2004' , 'Male' , '1 st cross street chromepet chennai' , 9823053023  ,  00402 , 'BE Computer Technology'        , 3 )  -- Important
 into students (ssn , fname, lname, bdate, gender, address, phno, deptid, course_name, current_sem ) values ( 2000402003 , 'Rohith'  , 'K' , '12-AUG-2004' , 'Male' , '2 nd cross street chromepet chennai' , 9823053023  ,  00402 , 'BE Computer Technology'        , 1 )
 into students (ssn , fname, lname, bdate, gender, address, phno, deptid, course_name, current_sem ) values ( 2000402004 , 'Tewatia' , 'S' , '23-NOV-2004' , 'Male' , '3rd  cross street chromepet chennai' , 9823053023  ,  00402 , 'BE Computer Technology'        , 1 )
 into students (ssn , fname, lname, bdate, gender, address, phno, deptid, course_name, current_sem ) values ( 2000402005 , 'Thakur'  , 'S' , '12-JAN-2004' , 'Male' , '4 st cross street chromepet chennai' , 9823053023  ,  00402 , 'BE Computer Technology'        , 1 )
 select * from dual;

insert all
 into current_lab_m ( student_id , section_id, ass1 , ass3) values ( 2000401001 , 001 , 97 , 99 )
 into current_lab_m ( student_id , section_id, ass1 , ass3) values ( 2000401002 , 001 , 97 , 99 )
 into current_lab_m ( student_id , section_id, ass1 , ass3) values ( 2000401003 , 001 , 97 , 99 )
 into current_lab_m ( student_id , section_id, ass1 , ass3) values ( 2000402001 , 001 , 97 , 99 )
 into current_lab_m ( student_id , section_id, ass1 , ass3) values ( 2000402002 , 004 , 97 , 99 )
 into current_lab_m ( student_id , section_id, ass1 , ass3) values ( 2000402003 , 004 , 97 , 99 )
 into current_lab_m ( student_id , section_id, ass1 , ass3) values ( 2000402004 , 004 , 97 , 99 )
 into current_lab_m ( student_id , section_id, ass1 , ass3) values ( 2000402005 , 004 , 97 , 99 )
 into current_lab_m ( student_id , section_id, ass1 , ass3) values ( 2000402002 , 002 , 97 , 99 )
 into current_lab_m ( student_id , section_id, ass1 , ass3) values ( 2000402002 , 003 , 97 , 99 )
 select * from dual;

insert all
 into current_course_m ( student_id , section_id, ass1 , ass2 , ass3) values ( 2000401001 , 005 , 97 , 96 , 99 )
 into current_course_m ( student_id , section_id, ass1 , ass2 , ass3) values ( 2000401002 , 005 , 97 , 96 , 99 )
 into current_course_m ( student_id , section_id, ass1 , ass2 , ass3) values ( 2000401003 , 005 , 97 , 96 , 99 )
 into current_course_m ( student_id , section_id, ass1 , ass2 , ass3) values ( 2000402001 , 005 , 97 , 96 , 99 )
 into current_course_m ( student_id , section_id, ass1 , ass2 , ass3) values ( 2000402002 , 006 , 97 , 96 , 99 )
 into current_course_m ( student_id , section_id, ass1 , ass2 , ass3) values ( 2000402003 , 006 , 97 , 96 , 99 )
 into current_course_m ( student_id , section_id, ass1 , ass2 , ass3) values ( 2000402004 , 006 , 97 , 96 , 99 )
 into current_course_m ( student_id , section_id, ass1 , ass2 , ass3) values ( 2000402005 , 006 , 97 , 96 , 99 )
 into current_course_m ( student_id , section_id, ass1 , ass2 , ass3) values ( 2000402002 , 007 , 97 , 96 , 99 )
 into current_course_m ( student_id , section_id, ass1 , ass2 , ass3) values ( 2000402002 , 008 , 97 , 96 , 99 )
 select * from dual;

insert all
 into students_lab_marks ( student_id , section_id, ass1 , ass3) values ( 2000401001 , 009 , 97 , 99 )
 into students_lab_marks ( student_id , section_id, ass1 , ass3) values ( 2000401002 , 009 , 97 , 99 )
 into students_lab_marks ( student_id , section_id, ass1 , ass3) values ( 2000401003 , 009 , 97 , 99 )
 into students_lab_marks ( student_id , section_id, ass1 , ass3) values ( 2000402001 , 009 , 97 , 99 )
 into students_lab_marks ( student_id , section_id, ass1 , ass3) values ( 2000402002 , 010 , 97 , 99 )
 into students_lab_marks ( student_id , section_id, ass1 , ass3) values ( 2000402003 , 010 , 97 , 99 )
 into students_lab_marks ( student_id , section_id, ass1 , ass3) values ( 2000402004 , 010 , 97 , 99 )
 into students_lab_marks ( student_id , section_id, ass1 , ass3) values ( 2000402005 , 010 , 97 , 99 )
 into students_lab_marks ( student_id , section_id, ass1 , ass3) values ( 2000402002 , 011 , 97 , 99 )
 into students_lab_marks ( student_id , section_id, ass1 , ass3) values ( 2000402002 , 012 , 97 , 99 )
 select * from dual;

insert all
 into students_course_marks ( student_id , section_id, ass1 , ass2 , ass3) values ( 2000401001 , 013 , 97 , 96 , 99 )
 into students_course_marks ( student_id , section_id, ass1 , ass2 , ass3) values ( 2000401002 , 013 , 97 , 96 , 99 )
 into students_course_marks ( student_id , section_id, ass1 , ass2 , ass3) values ( 2000401003 , 013 , 97 , 96 , 99 )
 into students_course_marks ( student_id , section_id, ass1 , ass2 , ass3) values ( 2000402001 , 013 , 97 , 96 , 99 )
 into students_course_marks ( student_id , section_id, ass1 , ass2 , ass3) values ( 2000402002 , 014 , 97 , 96 , 99 )
 into students_course_marks ( student_id , section_id, ass1 , ass2 , ass3) values ( 2000402003 , 014 , 97 , 96 , 99 )
 into students_course_marks ( student_id , section_id, ass1 , ass2 , ass3) values ( 2000402004 , 014 , 97 , 96 , 99 )
 into students_course_marks ( student_id , section_id, ass1 , ass2 , ass3) values ( 2000402005 , 014 , 97 , 96 , 99 )
 into students_course_marks ( student_id , section_id, ass1 , ass2 , ass3) values ( 2000402002 , 015 , 97 , 96 , 99 )
 into students_course_marks ( student_id , section_id, ass1 , ass2 , ass3) values ( 2000402002 , 016 , 97 , 96 , 99 )
 select * from dual;
