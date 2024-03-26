-- Questions
-- Q1 
-- select sname,age from sailor;
-- Q2
-- select * from sailor where sailor.rating > 7;
-- Q3
-- select sname from sailor join reserve on reserve.sid = sailor.sid where reserve.bid = 104;
-- Q4
-- select sid from reserve join boat on boat.bid = reserve.bid where boat.color = 'red';
-- Q5
-- select sailor.sname
-- from sailor
-- join reserve on reserve.sid = sailor.sid
-- join boat on boat.bid = reserve.bid
-- where boat.color = 'red';
-- Q6
-- select boat.color 
-- from boat
-- join reserve on reserve.bid = boat.bid
-- join sailor on sailor.sid = reserve.sid
-- where sailor.sname = 'Lubber';
-- Q7
-- select Distinct(sailor.sname)
-- from sailor
-- right join reserve on reserve.sid = sailor.sid;
-- Q8
-- Select *
-- from sailor
-- where sailor.sname like 'b%b' and Length(sailor.sname) >= 7
-- Q9
-- Select sailor.sname
-- from sailor
-- right join reserve on reserve.sid = sailor.sid
-- join boat on reserve.bid = boat.bid
-- where boat.color = 'red' or boat.color = 'green';
-- Q10
Select Distinct(sailor.sid)
from sailor
join reserve on reserve.sid = sailor.sid
where sailor.rating = 10 or reserve.sid = 104;