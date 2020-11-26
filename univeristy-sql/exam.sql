-- CREATE PROCEDURE IS
DECLARE 
    nov number := 0;   
    a char;  
    b char;  
    ur varchar(50);
    vowels number ;
    dom varchar(50);
    pal varchar(50);
    sta number;
    sto number;
    len number;
    f number := 0;

    cursor webrow is select url from websites for update;
    cursor webshow is select url , domain , vowels , palindrome from websites;

BEGIN 
    OPEN webrow;

    loop
        f := 0;
        nov := 0;
        fetch webrow into ur;
        EXIT when webrow%notfound;
        sta := instr(ur , '.' , 1 ) +1;
        sto := instr(ur , '.' , 5 ) -sta ;
        
        dom := Substr( ur , sta ,  sto);
        
        update websites set domain = dom where current of webrow;

        FOR i IN 1..Length(dom) LOOP  
            a := Substr( dom , i, 1); 
            IF a IN ( 'A', 'E', 'I', 'O', 'U' ) OR a IN ( 'a', 'e', 'i', 'o', 'u' ) THEN 
                nov := nov + 1;  
            END IF;
        end loop;

        update websites set vowels = nov where current of webrow;

        len := Length(dom);
        FOR j IN 1..( ceil ( Length(dom)/2 )  ) loop
            IF Substr( dom , j , 1 ) != Substr( dom , len - j + 1 , 1 ) THEN
                dbms_output.put_line( j || len-j+1 );
                f:=1;
            END IF;
        end loop;

        dbms_output.put_line( 'Done' || dom );

        If f = 1 THEN
            update websites set palindrome = 'False' where current of webrow;
        ELse
            update websites set palindrome = 'True' where current of webrow;
        End IF;
        
    END LOOP; 
  
    OPEN webshow;
    loop
      fetch webshow into ur , dom , nov, pal;
      EXit when webshow%notfound;
      dbms_output.put_line(ur || dom || nov || pal );
    end loop;
    Close webshow;
END;  
/
