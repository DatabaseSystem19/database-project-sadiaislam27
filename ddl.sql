create table hotel(
hotel_id number not null,
hotel_name varchar(30),
hotel_location varchar(30),
no_of_room number(3),
primary key (hotel_id));

create table room(
room_id number(5) not null,
room_type varchar(20),
room_capacity number,
room_status varchar(10),
room_password varchar(20),
hotel_id number not null,
primary key (room_id,hotel_id),
foreign key (hotel_id) references hotel(hotel_id));

create table guest(
guest_id number(5),
guest_name varchar(30),
guest_email varchar(30),
guest_phone number(11),
check_in_date DATE NOT NULL,
check_out_date DATE NOT NULL,
room_id number(5) not null,
hotel_id number not null,
primary key (guest_id,room_id,hotel_id),
foreign key (hotel_id) references hotel(hotel_id),
foreign key (room_id,hotel_id) references room(room_id,hotel_id));

create table booking(
booking_id number(4),
booking_date DATE not null,
guest_id number(5),
room_id number(5) not null,
hotel_id number not null,
primary key (booking_id,hotel_id),
foreign key (hotel_id) references hotel(hotel_id),
foreign key(room_id,hotel_id) references room(room_id,hotel_id),
foreign key (guest_id,room_id,hotel_id) references guest(guest_id,room_id,hotel_id));

create table staff(
staff_id number(4),
staff_name varchar(30),
staff_phone number(11),
room_id number(5) not null,
hotel_id number not null,
primary key (staff_id,hotel_id),
foreign key (hotel_id) references hotel(hotel_id),
foreign key (room_id,hotel_id) references room(room_id,hotel_id));

---alter
alter table hotel add city char(20);
alter table hotel modify city varchar(23);
alter table hotel rename column city to city2;
alter table hotel drop column city2;

