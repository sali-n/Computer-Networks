use `cn-lab3`;
-- Q14
-- select room.type,room.price
-- from room
-- join hotel on hotel.hotelno = room.hotelno
-- where hotel.hotelname='avarii'
-- Q15
-- select count(distinct booking.guestno) as MariottGuests
-- from booking
-- join hotel on hotel.hotelno = booking.hotelno
-- where hotel.hotelname = 'Mariott' and (current_timestamp() <= booking.dateto or booking.dateto is null)
-- Q16
-- select sum(room.price) as InnIncome
-- from room
-- join booking on room.hotelno = booking.hotelno and room.roomno = booking.roomno
-- where room.hotelno = 'i01' and (current_timestamp() <= booking.dateto or booking.dateto is null)
-- Q18
-- select sum(room.price) as LostIncomeInn
-- from room
-- where room.hotelno = 'i01' and not exists (
-- select 1 
-- from booking
-- where booking.roomno = room.roomno and booking.hotelno = room.hotelno
-- )
-- Q19
-- select sum(room.price) as LostIncome, room.hotelno
-- from room
-- where not exists (
-- select 1 
-- from booking
-- where booking.roomno = room.roomno and booking.hotelno = room.hotelno
-- )
-- group by room.hotelno
-- Q20
select sum(room.price) as LostIncome, room.hotelno
from room
where room.hotelno in ( 
	SELECT room.hotelno
    FROM room
    GROUP BY room.hotelno
    HAVING COUNT(distinct room.type) > 2) 
and not exists (
select 1 
from booking
where booking.roomno = room.roomno and booking.hotelno = room.hotelno)
group by room.hotelno