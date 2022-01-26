INSERT INTO BookingType (name, extra_costs) VALUES("Plano D' Prata", 200);

INSERT INTO Booking VALUES (21, 100, "Plano D' Prata", "Cartão de Débito", 922005978, "2022-04-07", "2022-04-18");


INSERT INTO Guest (SSN, name, address, birthdate) VALUES(123678990, 'Crica Aveiro', "1234-5678, nº7 Rua do Cristiano, Madrid, Espanha", '2001-02-05' );
INSERT INTO Guest (SSN, name, address, birthdate) VALUES(569477790, 'Okeyama Pedreiro', "9876-3567, nº29 Rua das Camélias, Lisboa, Portugal", '1997-05-04' );
INSERT INTO Guest (SSN, name, address, birthdate) VALUES(567567593, 'Nelson Musco', "4356-7564, nº23 Tesla Street, Miami, USA", '1971-06-28');

INSERT INTO Renting VALUES (1,123678990, 21);
INSERT INTO Renting VALUES (0,569477790, 21);
Select * from Renting where booking_id = 21;
INSERT INTO Renting VALUES (1,567567593, 21);
Select * from Renting where booking_id = 21;