.mode columns
.headers on
.nullvalue NULL

PRAGMA FOREIGN_KEYS = ON;
 -- Rooms ocupados no dia 2021-12-14
 SELECT DISTINCT room_number
     FROM Booking
         WHERE '2021-12-14' between begin_date and end_date 
            ORDER BY room_number asc;

 
