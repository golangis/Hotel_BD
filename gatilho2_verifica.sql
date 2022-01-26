.mode columns
.headers on
.nullvalue NULL

INSERT INTO BookingType VALUES("Premium", 200);
INSERT INTO Room VALUES(100, 2, 1, 90, 3);

SELECT * FROM Booking;
INSERT INTO Booking VALUES (29, 100, "Premium", "Cartão de Débito", 922500868, "2022-04-01", "2022-04-05" );
INSERT INTO Booking VALUES (30, 100, "Premium", "Cartão de Débito", 922500868, "2022-03-01", "2022-04-02" );
SELECT * FROM Booking;
