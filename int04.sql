DROP VIEW IF EXISTS guest_bookings;
Create VIEW guest_bookings (
    name,
    btype
)

AS

Select Guest.name as name, booking_type
from Renting, Guest, Booking
Where guest_SSN = Guest.ssn
    and Guest.name = 'Cristiano Ronaldo'
    and Booking.id = Renting.booking_id;


Select DISTINCT Event.name as permitted_events
From HotelZoneBookingType, guest_bookings, Event
Where guest_bookings.btype = booking_type
    and Event.hotel_zone = HotelZoneBookingType.hotel_zone;