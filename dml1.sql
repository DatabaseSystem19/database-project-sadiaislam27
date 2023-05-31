insert into hotel values(120,'snigdha','bonpara',12);
insert into hotel values(121,'Sonia','boalia',11);
insert into hotel values(122,'Flower','katakhali',13);
insert into hotel values(123,'Dream','sipra',10);
insert into hotel values(124,'Mahal','sonapur',14);
insert into hotel values(125,'Iraboti','Maniktola',20);
insert into hotel values(126,'Lilaboti','Fulbari',12);
insert into hotel values(127,'RiverView','bonpara',18);
insert into hotel values(128,'Encanto','Fulbari',16);
insert into hotel values(129,'BlueHeaven','boalia',15);

insert into room values(00001,'AC',2,'Vacant','abc',121);
insert into room values(00002,'AC',4,'Occupied','abc',121);
insert into room values(00004,'AC',3,'Vacant','acc',121);
insert into room values(00005,'AC',2,'Occupied','dbc',121);
insert into room values(00006,'AC',4,'Occupied','aabc',123);
insert into room values(00001,'AC',2,'Vacant','abcc',123);
insert into room values(00002,'AC',4,'Occupied','abbc',124);
insert into room values(00001,'AC',2,'Vacant','abc',125);
insert into room values(00003,'AC',3,'Occupied','abc',126);
insert into room values(00004,'AC',2,'Occupied','abcc',122);

insert into guest values(00010,'Sadia','sadia@gmail',01777777777,date'2020-11-11',date'2020-11-13',00001,121);
insert into guest values(00011,'Sadia','sadia@gmail',01777777777,date'2020-11-11',date'2020-11-13',00002,121);
insert into guest values(00010,'Sadia','sadia@gmail',01777777777,date'2020-10-11',date'2020-10-13',00001,123);
insert into guest values(00010,'Sadia','sadia@gmail',01777777777,date'2020-11-11',date'2020-11-13',00001,125);
insert into hotel values(120,'snigdha','bonpara',12);
insert into hotel values(121,'Sonia','boalia',11);
insert into hotel values(122,'Flower',' ',13);
insert into hotel values(123,'Dream','sipra',10);
insert into hotel values(124,'Mahal','sonapur',14);
insert into hotel values(125,'Iraboti','Maniktola',20);
insert into hotel values(126,'Lilaboti','Fulbari',12);
insert into hotel values(127,'RiverView','bonpara',18);
insert into hotel values(128,'Encanto','Fulbari',16);
insert into hotel values(129,'BlueHeaven','boalia',15);

insert into room values(00001,'AC',2,'Vacant','abc',121);
insert into room values(00002,'AC',4,'Occupied','abc',121);
insert into room values(00004,'AC',3,'Vacant','acc',121);
insert into room values(00005,'AC',2,'Occupied','dbc',121);
insert into room values(00006,'AC',4,'Occupied','aabc',123);
insert into room values(00001,'AC',2,'Vacant','abcc',123);
insert into room values(00002,'AC',4,'Occupied','abbc',124);
insert into room values(00001,'AC',2,'Vacant','abc',125);
insert into room values(00003,'AC',3,'Occupied','abc',126);
insert into room values(00008,'AC',3,'Occupied','abc',126);
insert into room values(00004,'AC',2,'Occupied','abcc',122);

insert into guest values(00010,'Sadia','sadia@gmail',01777777777,date'2020-11-11',date'2020-11-13',00001,121);
insert into guest values(00011,'Sadia','sadia@gmail',01777777777,date'2020-11-11',date'2020-11-13',00002,121);
insert into guest values(00010,'Sadia','sadia@gmail',01777777777,date'2020-10-11',date'2020-10-13',00001,123);
insert into guest values(00010,'Sadia','sadia@gmail',01777777777,date'2020-11-11',date'2020-11-13',00001,125);
insert into guest values(00012,'Sadia','sadia@gmail',01777777777,date'2020-11-11',date'2020-11-13',00001,121);
insert into guest values(00013,'Sadia','sadia@gmail',01777777777,date'2020-11-11',date'2020-11-13',00001,121);
insert into guest values(00014,'Sadia','sadia@gmail',01777777777,date'2020-11-11',date'2020-11-13',00001,121);
insert into guest values(00015,'Sadia','sadia@gmail',01777777777,date'2020-11-11',date'2020-11-13',00001,121);
insert into guest values(00011,'Sadia','sadia@gmail',01777777777,date'2020-11-11',date'2020-11-13',00004,122);
insert into guest values(00013,'Sadia','sadia@gmail',01777777777,date'2020-11-11',date'2020-11-13',00006,123);
insert into guest values(00016,'Nadia','nadia@gmail',01777777779,date'2020-11-9',date'2020-1-13',00002,124);
insert into guest values(00017,'Zadia','zadia@gmail',01707777779,date'2020-1-9',date'2020-1-1',00003,126);

insert into booking values(0010,date'2020-11-11',00010,00001,121);
insert into booking values(0011,date'2020-11-12',00010,00001,121);
insert into booking values(0001,date'2020-08-14',00011,00002,121);
insert into booking values(0013,date'2020-11-21',00014,00001,121);
insert into booking values(0010,date'2020-11-22',00013,00006,123);
insert into booking values(0014,date'2020-10-11',00010,00001,123);
insert into booking values(0012,date'2020-10-18',00016,00002,124);
insert into booking values(0011,date'2020-11-19',00010,00001,125);
insert into booking values(0020,date'2020-9-11',00017,00003,126);
insert into booking values(0015,date'2020-11-1',00011,00004,122);

insert into staff values(0001,'abc',01777777777,00001,121);
insert into staff values(0002,'d',01777777777,00002,121);
insert into staff values(0003,'gh',01777770777,00001,123);
insert into staff values(0004,'k',01777777677,00001,125);
insert into staff values(0005,'ra',01777778777,00004,122);
insert into staff values(0012,'ba',01777775777,00006,123);
insert into staff values(0005,'sa',01777779777,00002,124);
insert into staff values(0016,'om',01777773777,00003,126);
insert into staff values(0017,'na',01777772777,00005,121);
insert into staff values(0007,'bc',01777771777,00004,121);
 
----display table data
select *from hotel;
select *from hotel where no_of_room>10;
--select * from hotel where hotel_id=(select hotel_id from room where room_status='Vacant');
--select * from hotel where hotel_id=(select hotel_id from room where room_capacity>2);
--select * from staff where room_id=(select room_id from room where room_capacity>2);

--update table
update hotel set hotel_name='Dream' where hotel_id=121;
update hotel set hotel_name='Shimla' where hotel_id=123;

--delete 
insert into guest values(00018,'Sazia','sadia@gmail',01777777777,date'2020-1-4',date'2020-11-13',00008,126);
delete from guest where guest_id=(select guest_id from guest where room_id=8);

--union
select hotel_name from hotel where hotel_name like 'S%' union select hotel_name from hotel where hotel_name like '%l%';

--with
with max_room(val) as (select max(no_of_room) from hotel)
select * from hotel,max_room where hotel.no_of_room=max_room.val;

--aggregation
select count(*) from hotel;
select count(*) from guest;

select count(guest_name) as number_of_guest from guest;
select count(distinct guest_name) as number_of_guest from guest;

select avg(no_of_room) from hotel;
select sum(no_of_room) from hotel;
select max(no_of_room) from hotel;
select min(no_of_room) from hotel;

--group by
select hotel_name,avg(no_of_room) from hotel group by hotel_name;
--select hotel_id,guest_name from guest group by hotel_id;
select hotel_id,avg(room_capacity) from room group by hotel_id;
select hotel_id,avg(room_capacity) from room group by hotel_id having avg(room_capacity)>3;

--nested
 select hotel_name from hotel where hotel_id=(select hotel_id from room where room_id=(select room_id from guest where guest_id=(select guest_id from booking where booking_id=20)));
  select * from hotel where hotel_id=(select hotel_id from room where room_id=(select room_id from guest where guest_id=(select guest_id from booking where booking_id=20)));

--set member
select * from hotel where no_of_room>10 and hotel_id in (select hotel_id from staff where staff_name like '%a%');

--some
select * from hotel where no_of_room> some(select no_of_room from hotel where no_of_room>=14);
select * from hotel where no_of_room> all(select no_of_room from hotel where no_of_room<20);

--exists
select * from room where room_capacity>2 and exists(select * from hotel where hotel_name like '%a%');

 SELECT * FROM guest WHERE guest_name LIKE '%a%';
SELECT * FROM hotel WHERE NAME LIKE '___' or NAME LIKE '____' or NAME LIKE '_____';
select *from hotel where hotel_name like'_____' or hotel_name like'______';

--join
select * from hotel natural join room ;
select * from hotel natural join room where hotel_id=121 ;
select hotel_name,staff_name from hotel join staff using(hotel_id);
select hotel_name,staff_name from hotel join staff on hotel.hotel_id=staff.hotel_id;
select hotel_name,staff_name from hotel left outer join staff using(hotel_id);
select hotel_name,staff_name from hotel right outer join staff using(hotel_id);
select hotel_name,staff_name from hotel full outer join staff using(hotel_id);


--views
create view hotel_details as select hotel_id,hotel_name from hotel;
create view staff_detail as select staff_name from staff where hotel_id=(select hotel_id from hotel where hotel_name='Snigdha');
create view  custom as select * from hotel_details where hotel_id>=123;

insert into guest values(00021,'Nabila','nabila@gmail',01700875329,date'2020-2-9',date'2020-1-1',00004,122);


---prob1
select hotel_name from hotel where hotel_id=(select hotel_id from guest where guest_phone=01707777779);


set serveroutput on
declare
num hotel.hotel_id%Type;
h_name hotel.hotel_name%type;
max number:=0;
num number:=0;
v number:=0;
i number:=120;
begin
for i IN 1..10 loop
select count(*) into v from guest where hotel_id=i;
if max<v then
max:=v;
num:=hotel_id;
end if;
end loop;
select hotel_name into h_name from hotel where hotel_id=num;
dbms_output.put_line('hotel_name: '||h_name);
end;
/