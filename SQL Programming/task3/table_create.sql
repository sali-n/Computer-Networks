use `cn-lab3`;
-- create table hotel( hotelno varchar(10) primary key, hotelname varchar(20), city varchar(20) );
-- create table room( roomno numeric(5), hotelno varchar(10), type varchar(10), price decimal(5,2), primary key (roomno, hotelno), foreign key (hotelno) REFERENCES hotel(hotelno) );
-- create table guest( guestno numeric(5), guestname varchar(20), guestaddress varchar(50),
-- primary key (guestno) );
-- create table booking( hotelno varchar(10), guestno numeric(5), datefrom datetime, dateto datetime, roomno numeric(5), primary key (hotelno, guestno, datefrom), foreign key (roomno, hotelno) REFERENCES room(roomno, hotelno), foreign key (guestno) REFERENCES guest(guestno) );
-- insert into hotel values('a01', 'Avarii', 'Lahore'); -- hotels
-- insert into hotel values('m01', 'Mariott', 'karachi');
-- insert into hotel values('i01', 'Inn', 'islamabad');

-- insert into room values(1, 'a01', 'single', 19.99);  -- avari hotel
-- insert into room values(2, 'a01', 'single', 19.99);
-- insert into room values(3, 'a01', 'single', 28.99);
-- insert into room values(4, 'm01', 'family', 49.99); -- mariott hotel
-- insert into room values(2, 'm01', 'double', 21.99);
-- insert into room values(3, 'm01', 'single', 28.99);
-- insert into room values(5, 'i01', 'single', 28.99); -- hotel inn
-- insert into room values(2, 'i01', 'single', 28.99);
-- insert into room values(1, 'i01', 'double', 34.99);
-- insert into room values(3, 'i01', 'double', 34.99);
-- insert into room values(6, 'i01', 'family', 49.99);

-- insert into guest values(1, 'Ali', '56 High St, London');
-- insert into guest values(12, 'hp', '98 High St, York');
-- insert into guest values(13, 'dell', '56 High St, lahore');
-- insert into guest values(14, 'alienware', '56 High St, karachi');
-- insert into guest values(5, 'lenovo', '56 High St, islamabad');

insert into booking values('a01', 1, '23-04-01', '23-04-08', 1);
insert into booking values('a01', 12, '23-11-15', '23-12-15', 2);
insert into booking values('m01', 1, '23-12-02', '24-01-07', 4);
insert into booking values('m01', 12, '23-05-01', null, 2);
insert into booking values('i01', 14, '23-11-05', '23-12-31', 2);
insert into booking values('i01', 13, '23-04-21', null, 5);
insert into booking values('i01', 5, '23-04-25', '23-05-06', 1);
