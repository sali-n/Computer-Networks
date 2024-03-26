-- Q1
-- select guestname, guestaddress from guest
-- where guestaddress Like '%London'
-- order by guestname asc;
-- Q2
-- SELECT h.hotelname, COUNT(r.roomno) AS noOfrooms
-- FROM hotel h
-- JOIN room r ON h.hotelno = r.hotelno
-- GROUP BY h.hotelname;
-- Q3
-- select hotel.hotelname, format(avg(room.price),2) as AvgRoomPrice
-- from hotel
-- join room on room.hotelno = hotel.hotelno
-- where hotel.city = 'London'
-- group by hotel.hotelname
-- Q4
-- select room.type, Max(room.price) as MaxPrice
-- from room
-- Group by room.type;
-- Q5
-- select hotel.hotelname, hotel.city, Count(Distinct room.type) as RoomTypes
-- from hotel
-- join room on room.hotelno = hotel.hotelno
-- group by hotel.hotelname, hotel.city
-- Q6
-- select Distinct(hotel.hotelname), hotel.city
-- from hotel
-- join booking on booking.hotelno = hotel.hotelno
-- join guest on guest.guestno = booking.guestno
-- where guest.guestaddress like '%london'
-- Q7
-- select hotel.hotelname, hotel.city, count(booking.hotelno) as NoOfReservations
-- from hotel
-- join booking on booking.hotelno = hotel.hotelno
-- group by hotel.hotelname, hotel.city
-- order by (NoOfReservations) desc 
-- Q8
-- select guest.guestname
-- from guest
-- join booking on booking.guestno = guest.guestno
-- where booking.dateto is null
-- Q9
-- select hotel.hotelname, room.roomno, guest.guestno
-- from hotel
-- join room on room.hotelno = hotel.hotelno
-- join booking on booking.hotelno = hotel.hotelno
-- join guest on booking.guestno = guest.guestno
-- where Year(booking.datefrom) = 2003 or Year(booking.datefrom) = 2004 or Year(booking.dateto) = 2003 or Year(booking.datefrom) = 2004
-- Q10
-- select distinct(hotel.hotelname), hotel.city
-- from hotel
-- join room on hotel.hotelno = room.hotelno
-- where not exists (
-- 	select 1
-- 	from booking
-- 	where booking.hotelno = hotel.hotelno and booking.roomno = room.roomno)
-- group by hotel.hotelname, hotel.city
-- Q11
-- select count(distinct(booking.guestno)) as NoOfGuests
-- from booking
-- where year(booking.dateto) is null  or (year(booking.dateto) <= 2015  and month(booking.dateto) <= 'May')
-- Q12
-- select sum(room.price) as DoublePrice
-- from room
-- join booking on room.roomno = booking.roomno
-- where room.type = 'double'
-- Q13
 select count(distinct booking.guestno) as AugustGuests 
 from booking
 WHERE (month(booking.dateFrom) <= 8  AND (month(booking.dateTo) >= 8 or booking.dateto is null)) OR
 (booking.dateFrom >= DATE(2004-08-01) AND booking.dateFrom <= DATE(2004-08-31));