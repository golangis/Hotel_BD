.mode columns
.headers on
.nullvalue NULL

PRAGMA FOREIGN_KEYS = ON;
-- HotelZones e número de eventos, ordenadas por número de eventos
SELECT hotel_zone, count(hotel_zone) as nEvents 
    FROM event
        GROUP BY hotel_zone 
            ORDER BY nEvents desc;