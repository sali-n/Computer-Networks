Use `cn - lab2`;

Create table sailor (
	sid int,
    sname varchar(50),
    rating float,
    age int,
    primary key (sid)
);

create table boat(
	bid int,
    bname varchar(50),
    color varchar(10),
    primary key(bid)
);

create table Reserve(
	sid int,
    bid int,
    day date,
    Foreign Key (sid) references  sailor(sid),
    foreign key (bid) references  boat(bid)
);
