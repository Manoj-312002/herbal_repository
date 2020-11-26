insert all
 into courses ( cid , credits , dept_offering , cname ) values ( 0010100001 , 4 , 00101 , 'Maths' )
 into courses ( cid , credits , dept_offering , cname ) values ( 0010200002 , 4 , 00102 , 'Physics' )
 into courses ( cid , credits , dept_offering , cname ) values ( 0020100003 , 4 , 00201 , 'Chemistry' )
 into courses ( cid , credits , dept_offering , cname ) values ( 0020200004 , 4 , 00202 , 'Artificial Intelligence' )
 into courses ( cid , credits , dept_offering , cname ) values ( 0040100005 , 3 , 00401 , 'Data Science' )
 into courses ( cid , credits , dept_offering , cname ) values ( 0040200006 , 3 , 00402 , 'Thermodynamics' )
 into courses ( cid , credits , dept_offering , cname ) values ( 0040300007 , 3 , 00404 , 'Ethics and Holistic life' )
 into courses ( cid , credits , dept_offering , cname ) values ( 0040400008 , 3 , 00404 , 'Humanities' )
 select * from dual;

insert all
 into electives ( cid , cname , main ) values ( 00001 , 'Psychology', 0040300007 )
 into electives ( cid , cname , main ) values ( 00002 , 'Work Relation', 0040300007 )
 into electives ( cid , cname , main ) values ( 00003 , 'Application of psychology', 0040300007 )
 into electives ( cid , cname , main ) values ( 00004 , 'Philosophy', 0040300007 )
 into electives ( cid , cname , main ) values ( 00005 , 'Ehics', 0040300007 )
 into electives ( cid , cname , main ) values ( 00006 , 'English', 0040400008 )
 into electives ( cid , cname , main ) values ( 00007 , 'Professional Communication', 0040400008 )
 into electives ( cid , cname , main ) values ( 00008 , 'Film Appreciation', 0040400008 )
 select * from dual;

insert all
 into section ( sid , semester , year , course_id , faculty_taken  ) values ( 001 , 3 , 2020 , 0020100003 , 00101001 )
 into section ( sid , semester , year , course_id , faculty_taken  ) values ( 002 , 3 , 2020 , 0020200004 , 00102001 )
 into section ( sid , semester , year , course_id , faculty_taken  ) values ( 003 , 3 , 2020 , 0040100005 , 00201001 )
 into section ( sid , semester , year , course_id , faculty_taken  ) values ( 004 , 3 , 2020 , 0040200006 , 00202001 )
 into section ( sid , semester , year , course_id , faculty_taken  ) values ( 005 , 2 , 2020 , 0020100003 , 00402001 )
 into section ( sid , semester , year , course_id , faculty_taken  ) values ( 006 , 2 , 2020 , 0020200004 , 00402002 )
 into section ( sid , semester , year , course_id , faculty_taken  ) values ( 007 , 2 , 2020 , 0040100005 , 00402003 )
 into section ( sid , semester , year , course_id , faculty_taken  ) values ( 008 , 2 , 2020 , 0040200006 , 00404001 )
 into section ( sid , semester , year , course_id , faculty_taken  ) values ( 009 , 3 , 2019 , 0020100003 , 00101001 )
 into section ( sid , semester , year , course_id , faculty_taken  ) values ( 010 , 3 , 2019 , 0020200004 , 00102001 )
 into section ( sid , semester , year , course_id , faculty_taken  ) values ( 011 , 3 , 2019 , 0040100005 , 00201001 )
 into section ( sid , semester , year , course_id , faculty_taken  ) values ( 012 , 3 , 2019 , 0040200006 , 00202001 )
 into section ( sid , semester , year , course_id , faculty_taken  ) values ( 013 , 2 , 2019 , 0020100003 , 00402001 )
 into section ( sid , semester , year , course_id , faculty_taken  ) values ( 014 , 2 , 2019 , 0020200004 , 00402002 )
 into section ( sid , semester , year , course_id , faculty_taken  ) values ( 015 , 2 , 2019 , 0040100005 , 00402003 )
 into section ( sid , semester , year , course_id , faculty_taken  ) values ( 016 , 2 , 2019 , 0040200006 , 00404001 )
 select * from dual;
