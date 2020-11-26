insert all
--  into colleges ( college_id , cname , dean , cphno ) values ( 001 , 'College of Engineering'             , 00101001 , 9828051023 )
 into colleges ( college_id , cname , dean , cphno ) values ( 002 , 'Madras Institute of Technology'     , 00201001 , 9828061023 )
 into colleges ( college_id , cname , dean , cphno ) values ( 003 , 'Azhagappa college'                  , 00301001 , 9828051023 )
 into colleges ( college_id , cname , dean , cphno ) values ( 004 , 'Vels Institute'                     , 00401001 , 9128551123 )
 select * from dual;

 insert all
 into departments ( deptid , dname, dphno , hod, college_id ) values ( 00101 , 'Computer Technology'       , 9828051023 , 00101002 , 001 )
 into departments ( deptid , dname, dphno , hod, college_id ) values ( 00102 , 'Information Technology'    , 9828061023 , 00102001 , 001 )
 into departments ( deptid , dname, dphno , hod, college_id ) values ( 00201 , 'Computer Technology'       , 9828051023 , 00201003 , 002 )
 into departments ( deptid , dname, dphno , hod, college_id ) values ( 00202 , 'Information Technology'    , 9128551123 , 00202001 , 002 )
 into departments ( deptid , dname, dphno , hod, college_id ) values ( 00301 , 'Information Technology'    , 9828051023 , 00301001 , 003 )
 into departments ( deptid , dname, dphno , hod, college_id ) values ( 00401 , 'Computer Technology'       , 9828051023 , 00401002 , 004 )
 into departments ( deptid , dname, dphno , hod, college_id ) values ( 00402 , 'Information Technology'    , 9828051023 , 00402001 , 004 )
 into departments ( deptid , dname, dphno , hod, college_id ) values ( 00403 , 'Mechanical Engineering'    , 9828051023 , 00403001 , 004 )
 into departments ( deptid , dname, dphno , hod, college_id ) values ( 00404 , 'Aeuronautical Engineering' , 9828051023 , 00404001 , 004 )
 select * from dual;
