Select room_number, end_date as start_date,

    cast (julianday (
        
        COALESCE(

            (Select MIN(B2.begin_date)
            From Booking as B2
            Where B2.room_number = Booking.room_number
                and B2.begin_date > Booking.begin_date),

            date(Booking.end_date, '+99 day')))

        - julianday(end_date) as Integer) as available_days

From Booking
Order By Booking.room_number asc;


