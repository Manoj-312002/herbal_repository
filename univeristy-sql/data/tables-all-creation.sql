CREATE TABLE students (
  ssn number(10),
  fname varchar2(10),
  lname varchar2(10),
  bdate timestamp,
  gender varchar2(5),
  address varchar2(50),
  phno number(10),
  deptid number(5),
  course_name varchar(50),
  current_sem number(1),  
  PRIMARY KEY (ssn)
);

CREATE TABLE departments (
  deptid number(5) ,
  dname varchar2(50),
  dphno number(10),
  hod number(8),
  college_id number(3),
  PRIMARY KEY (deptid)
);

CREATE TABLE section (
  sid number(5),
  semester number(1),
  year number(4),
  course_id number(10),
  faculty_taken number(8),
  PRIMARY KEY (sid)
);

CREATE TABLE visiting (
  fid number(8),
  period number(2)
);

CREATE TABLE current_lab_m (
  student_id number(10),
  section_id number(3),
  ass1 number(3),
  ass3 number(3) 
);

CREATE TABLE students_course_marks (
  student_id number(10),
  section_id number(3),
  ass1 number(3),
  ass2 number(3),
  ass3 number(3)
);


CREATE TABLE current_course_m (
  student_id number(10),
  section_id number(3),
  ass1 number(3),
  ass2 number(3),
  ass3 number(3)
);

CREATE TABLE students_lab_marks (
  student_id number(10),
  section_id number(3),
  ass1 number(3),
  ass3 number(3)
);


CREATE TABLE courses (
  cid number(10),
  credits number(1),
  dept_offering number(5),
  cname varchar2(50),
  PRIMARY KEY (cid)
);

CREATE TABLE electives (
  cid number(5),
  credits number(1),
  cname varchar2(50), 
  main number(10),
  PRIMARY KEY (cid)
);

CREATE TABLE faculty (
  ssn number(8),
  fname varchar2(10),
  lname varchar2(10),
  bdate timestamp,
  gender varchar2(5),
  address varchar2(50),
  phno number(10),
  de number(5),
  rank varchar2(10),
  salary number(8),
  PRIMARY KEY (ssn)
);


CREATE TABLE colleges (
  college_id number(3),
  cname varchar2(50),
  dean number(8),
  cphno number(10),
  PRIMARY KEY (college_id)
);

ALTER TABLE current_lab_m ADD FOREIGN KEY (student_id) REFERENCES students(ssn);
ALTER TABLE current_lab_m ADD FOREIGN KEY (section_id) REFERENCES section(sid);

ALTER TABLE students_lab_marks ADD FOREIGN KEY (student_id) REFERENCES students(ssn);
ALTER TABLE students_lab_marks ADD FOREIGN KEY (section_id) REFERENCES section(sid);

ALTER TABLE current_course_m ADD FOREIGN KEY (student_id) REFERENCES students(ssn);
ALTER TABLE current_course_m ADD FOREIGN KEY (section_id) REFERENCES section(sid);

ALTER TABLE students_course_marks  ADD FOREIGN KEY (student_id) REFERENCES students(ssn);
ALTER TABLE students_course_marks  ADD FOREIGN KEY (section_id) REFERENCES section(sid);

ALTER TABLE colleges ADD FOREIGN KEY (dean) REFERENCES faculty(ssn);


ALTER TABLE courses ADD FOREIGN KEY (dept_offering) REFERENCES departments(deptid);

ALTER TABLE electives ADD FOREIGN KEY (main) REFERENCES courses(cid);

ALTER TABLE students ADD FOREIGN KEY (deptid) REFERENCES departments(deptid);

ALTER TABLE section ADD FOREIGN KEY (course_id) REFERENCES courses(cid);
ALTER TABLE section ADD FOREIGN KEY (faculty_taken) REFERENCES faculty(ssn);

ALTER TABLE departments ADD FOREIGN KEY (hod) REFERENCES faculty(ssn);
ALTER TABLE departments ADD FOREIGN KEY (college_id) REFERENCES colleges(college_id);

ALTER TABLE visiting ADD FOREIGN KEY (fid) REFERENCES faculty(ssn);

-- done after inserting inro faculty
ALTER TABLE faculty ADD FOREIGN KEY (de) REFERENCES departments(deptid);

