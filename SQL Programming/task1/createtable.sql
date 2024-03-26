Create Table Hotel(
	HotelNo int,
    hotelName varchar(50),
    city varchar(50)
);
Create Table Guest(
	GuestNo int,
    guestName varchar(50),
    guestAddress varchar(50)
);
Create Table Room(
	RoomNo int,
    HotelNo int,
    type varchar(50),
    price float
);
Create Table Booking(
	HotelNo int,
    GuestNo int,
    DateFrom datetime,
    DateTo datetime,
    RoomNo int
);

