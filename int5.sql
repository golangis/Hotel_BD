.mode columns
.headers on
.nullvalue NULL

PRAGMA FOREIGN_KEYS = ON;

 select Guest.name
     from Booking, Guest, Renting 
        where ('2021-04-09' between Booking.begin_date and Booking.end_date)
            and (Booking.room_number=86) 
                and (Renting.guest_SSN = Guest.ssn) 
                    and (Renting.booking_id = Booking.id) 
                        and (Renting.renter = 1);