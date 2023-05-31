--pl/sql--

--variable Declaration
set serveroutput on
declare 
hotel_id hotel.hotel_id%type;
hotel_name hotel.hotel_name%type;
no_of_room number;
begin
select hotel_id,hotel_name,no_of_room into hotel_id,hotel_name,no_of_room from hotel where hotel_id=121;
dbms_output.put_line('hotel_id: '||hotel_id|| ' hotel_name: '||hotel_name || ' no_of_room: '||no_of_room);
end;
/

set serveroutput on
declare
v1 varchar2(30);
begin
v1:='sadia';
dbms_output.put_line(v1);
end;
/

--select
set serveroutput on
declare
v varchar(30);
locationn varchar(30),
begin
select hotel_name,hotel_location into v,locationn from hotel where hotel_id=121;
dbms_output.put_line(v || 'is located at' ||location);
end;
/

--insert & set value
set serveroutput on
declare 
hotel_id hotel.hotel_id%type:=127;
hotel_name hotel.hotel_name%type:='Sunflower';
location hotel.hotel_location%type:='katakhali';
no_of_room number:=20;
begin
insert into hotel values(hotel_id,hotel_name,location,no_of_room,city2);
end;
/


--row type
set serveroutput on
declare 
hotel_row hotel%rowtype;
begin
select hotel_id,hotel_name,no_of_room into hotel_row.hotel_id,hotel_row.hotel_name,hotel_row.no_of_room from hotel where hotel_id=7;
end;
/

--cursor

set serveroutput on
declare
v varchar(30);
cursor h_c is select hotel_name from hotel;
begin
open h_c;
loop
fetch h_c into v;
dbms_Output.put_line(v);
exit when h_c%notfound;
end loop;
close h_c;
end;
/

set serveroutput on
declare
v hotel%rowtype;;
cursor h_c is select * from hotel;
begin
open h_c;
loop
fetch h_c into v.hotel_id,v.hotel_name,v.no_of_room ;
dbms_output.put_line('hotel_id: '||v.hotel_id|| ' hotel_name: '||v.hotel_name || ' no_of_room: '||v.no_of_room);
dbms_output.put_line('Row count: '|| h_c%rowcount);
exit when h_c%notfound;
end loop;
close h_c;
end;
/

set serveroutput on
declare 
hotel_row hotel%rowtype;
cursor hotel_cursor is select * from hotel;
begin
open hotel_cursor;
fetch hotel_cursor into hotel_row.hotel_id,hotel_row.hotel_name,hotel_row.hotel_location,hotel_row.no_of_room,hotel_row.city2 ;
while hotel_cursor%found loop
dbms_output.put_line('hotel_id: '||hotel_row.hotel_id|| ' hotel_name: '||hotel_row.hotel_name || ' no_of_room: '||hotel_row.no_of_room||'hotel_location'||hotel_location||'city2:'||city2);
dbms_output.put_line('Row count: '|| dept_cursor%rowcount);
fetch hotel_cursor into hotel_row.hotel_id,hotel_row.hotel_name,hotel_row.hotel_location,hotel_row.no_of_room,hotel_row.city2 ;
end loop;
close hotel_cursor;
end;
/

--array
--type name_a varray(5) of varchar(20);
--type name_a varray(5) of  hotel.hotel_name%Type;

set serveroutput on
declare 
  counter number;
  hotel_name2 hotel.hotel_name%type;
  type name_a is varray(5) of hotel.hotel_name%type;
  name name_a;
  --A_NAME NAMEARRAY:=NAMEARRAY();
begin
  counter:=120;
  for i in 1..5  
  loop
    select hotel_name into hotel_name2 from hotel where hotel_id=counter;
    name.EXTEND();
    name(counter):=hotel_name2;
    counter:=counter+1;
  end loop;
  counter:=1;
  WHILE counter<=name.COUNT 
    LOOP 
    DBMS_OUTPUT.PUT_LINE(name(counter)); 
    counter:=counter+1;
  END LOOP;
end;
/


---if then else
set serveroutput on
declare 
v_num number := &enter a number;
begin
if mod(v_num,2)==0 then
   dbms_output.put_line(v_num||'is a even num');
else
    dbms_output.put_line(v_num||'is a odd num');
end if
     dbms_output.put_line('if else executed');
	 end;
/

DECLARE 
   counter NUMBER := 1;
   hotel_name2 hotel.hotel_name%TYPE;
   TYPE NAMEARRAY IS VARRAY(5) OF hotel.hotel_name%TYPE;
   A_NAME NAMEARRAY:=NAMEARRAY('Book 1', 'Book 2', 'Book 3', 'Book 4', 'Book 5'); 
   -- VARRAY with a fixed size of 5 elements and initialized with book names
BEGIN
   counter := 1;
   FOR x IN 12..16  
   LOOP
      SELECT hotel_name INTO hotel_name2 FROM hotel WHERE hotel_id=x;
      if book_name2='discreate math' 
        then
        dbms_output.put_line(book_name2||' is a '||'CSE course');
      elsif book_name2='electrical engineering'  
        then
        dbms_output.put_line(book_name2||' is a '||'EEE course');
      else 
        dbms_output.put_line(book_name2||' is a '||'other dept course');
        end if;
   END LOOP;
END;   
     

---while loop
set serveroutput on
declare
v_counter number :=1;
v_result number;
begin
while v_counter<=10 loop
v_result:=19*v_counter;
dbms_output.put_line('19'||'x'||v_counter||'='||v_result);
v_counter:=v_counter+1;
end loop;
end;
/

--for loop
set serveroutput on
begin
for v_counter<=10 IN 1..10 loop
dbms_output.out_line(v_counter);
end loop;
end;
/

--procedure
create or replace procedure proc1(var1 in number,var2 out varchar(30),var3 in out number)
is
begin
select hotel_name into var2 from hotel where hotel_id=var1;
var3=var1+1;
dbms_output.put_line('Name: '||var2||', '||var3);
end;
/
set serveroutput on
declare
h_id hotel.hotel_id%type:=121;
var2 hotel.hotel_name%type;
var3 number;
begin
proc1(h_id,var2,var3);
end;
/

---function
set serveroutput on
create or replace function fun1(var1 in varchar) return varchar
AS
value hotel.hotel_name%type;
begin
  select hotel_name into value from hotel where hotel_id=var1; 
   return value;
end;
/
set serveroutput on
declare 
value varchar(20);
begin
value:=fun(122);
end;
/