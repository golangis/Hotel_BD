PRAGMA foreign_keys = ON;

-- HotelZone
INSERT INTO HotelZone (name, open_hour, time_open) VALUES("Apartamentos", "00:00:00", "24:00:00");
INSERT INTO HotelZone (name, open_hour, time_open) VALUES("Restauração", "07:00:00", "17:00:00");
INSERT INTO HotelZone (name, open_hour, time_open) VALUES("SPA", "07:00:00", "16:30:00");
INSERT INTO HotelZone (name, open_hour, time_open) VALUES("Bar", "16:00:00", "11:30:00");
INSERT INTO HotelZone (name, open_hour, time_open) VALUES("Campo de Golfe", "07:00:00", "16:00:00");
INSERT INTO HotelZone (name, open_hour, time_open) VALUES("Piscinas", "07:00:00", "17:00:00");
INSERT INTO HotelZone (name, open_hour, time_open) VALUES("Salão de Jogos", "10:00:00", "10:00:00");
INSERT INTO HotelZone (name, open_hour, time_open) VALUES("Lounge", "00:00:00", "24:00:00");

-- Specialty
INSERT INTO Specialty (name, hourly_pay) VALUES("Empregado de Limpeza", "7");
INSERT INTO Specialty (name, hourly_pay) VALUES("Massagista", "10");
INSERT INTO Specialty (name, hourly_pay) VALUES("Chef", "20");
INSERT INTO Specialty (name, hourly_pay) VALUES("Rececionista", "15");
INSERT INTO Specialty (name, hourly_pay) VALUES("Empregado de Mesa", "9");
INSERT INTO Specialty (name, hourly_pay) VALUES("Bartender", "12");

-- Eventos
INSERT INTO Event (id, hotel_zone, name, age_access, begin_date, end_date) VALUES(65309, "Lounge", "Jazz Night", 0, "2021-11-12 21:00:00", "2021-11-13 01:00:00");
INSERT INTO Event (id, hotel_zone, name, age_access, begin_date, end_date) VALUES(11304, "Piscinas", "Sent'água", 10, "2021-11-10 18:00:00", "2021-11-10 20:00:00");
INSERT INTO Event (id, hotel_zone, name, age_access, begin_date, end_date) VALUES(129, "Lounge", "Samba Brunch", 0, "2021-11-12 09:00:00", "2021-11-12 11:00:00");
INSERT INTO Event (id, hotel_zone, name, age_access, begin_date, end_date) VALUES(28923, "Restauração", "Prova de Queijos", 5, "2021-11-10 08:30:00", "2021-11-10 11:00:00");


-- BookingType
INSERT INTO BookingType (name, extra_costs) VALUES("Premium", 300);
INSERT INTO BookingType (name, extra_costs) VALUES("Plano D' Ouro", 200);
INSERT INTO BookingType (name, extra_costs) VALUES("Diversão Total", 50);
INSERT INTO BookingType (name, extra_costs) VALUES("Come e Cala", 10);
INSERT INTO BookingType (name, extra_costs) VALUES("Apenas Dormindo", 0);

-- Room
INSERT INTO Room (number, number_of_beds, number_of_bathrooms, price_per_night, nfloor) VALUES(74, 2, 1, 90, 3);
INSERT INTO Room (number, number_of_beds, number_of_bathrooms, price_per_night, nfloor) VALUES(75, 2, 2, 115, 3);
INSERT INTO Room (number, number_of_beds, number_of_bathrooms, price_per_night, nfloor) VALUES(87, 3, 2, 170, 4);
INSERT INTO Room (number, number_of_beds, number_of_bathrooms, price_per_night, nfloor) VALUES(86, 1, 2, 200, 4);
INSERT INTO Room (number, number_of_beds, number_of_bathrooms, price_per_night, nfloor) VALUES(22, 1, 1, 100, 3);
INSERT INTO Room (number, number_of_beds, number_of_bathrooms, price_per_night, nfloor) VALUES(67, 2, 1, 110, 4);
INSERT INTO Room (number, number_of_beds, number_of_bathrooms, price_per_night, nfloor) VALUES(45, 3, 2, 165, 3);
INSERT INTO Room (number, number_of_beds, number_of_bathrooms, price_per_night, nfloor) VALUES(98, 4, 1, 150, 3);
INSERT INTO Room (number, number_of_beds, number_of_bathrooms, price_per_night, nfloor) VALUES(23, 2, 2, 135, 4);
INSERT INTO Room (number, number_of_beds, number_of_bathrooms, price_per_night, nfloor) VALUES(38, 1, 2, 148, 5);
INSERT INTO Room (number, number_of_beds, number_of_bathrooms, price_per_night, nfloor) VALUES(100, 2, 1, 100, 4);


-- Guests
INSERT INTO Guest (SSN, name, address, birthdate) VALUES(123678900, 'Cristiano Ronaldo', "1234-5678, nº7 Rua do Cristiano, Madrid, Espanha", '2001-02-05' );
INSERT INTO Guest (SSN, name, address, birthdate) VALUES(569477700, 'Inês Rocha', "9876-3567, nº29 Rua das Camélias, Lisboa, Portugal", '1997-05-04' );
INSERT INTO Guest (SSN, name, address, birthdate) VALUES(567567563, 'Elon Musk', "4356-7564, nº23 Tesla Street, Miami, USA", '1971-06-28');
INSERT INTO Guest (SSN, name, address, birthdate) VALUES(234232323, 'Jeff Bezos', "0000-1111, nº12 Amazon Rainforest, São Paulo, Brasil", '1971-06-28');
INSERT INTO Guest (SSN, name, address, birthdate) VALUES(123678900, 'Mariana Rocha', "1234-5678, nº9 Rua do Rato, Porto, Portugal", '2002-08-08' );
INSERT INTO Guest (SSN, name, address, birthdate) VALUES(568887700, 'Miguel Silva', "2456-3567, nº2 Rua do Miguel, Braga, Portugal", '2002-01-01' );
INSERT INTO Guest (SSN, name, address, birthdate) VALUES(569997563, 'Emanuel Gestosa', "1246-7584, nº3 Travessa do Emanuel, Braga, USA", '2002-01-01');
INSERT INTO Guest (SSN, name, address, birthdate) VALUES(890900023, 'Marcelo Rebelo', "0870-1325, nº12 Palácio de Belém, Pará, Brasil", '1951-06-28');


-- WorkingDay
INSERT INTO WorkingDay VALUES ("Segunda");
INSERT INTO WorkingDay VALUES ("Terça");
INSERT INTO WorkingDay VALUES ("Quarta");
INSERT INTO WorkingDay VALUES ("Quinta");
INSERT INTO WorkingDay VALUES ("Sexta");
INSERT INTO WorkingDay VALUES ("Sábado");
INSERT INTO WorkingDay VALUES ("Domingo");

-- Booking
INSERT INTO Booking VALUES (1, 86, "Premium", "Cartão de Crédito", 912345678, "2021-12-12", "2022-01-02" );
INSERT INTO Booking VALUES (2, 87, "Come e Cala", "Dinheiro", 917834567, "2021-12-14", "2022-01-03" );
INSERT INTO Booking VALUES (3, 86, "Premium", "Cartão de Crédito", 919645851, "2022-02-14", "2022-03-02" );
INSERT INTO Booking VALUES (4, 74, "Come e Cala", "Cartão de Débito", 936642577, "2021-11-04", "2022-01-02" );
INSERT INTO Booking VALUES (5, 100, "Plano D' Ouro", "Cartão de Débito", 922645868, "2022-02-14", "2022-03-02" );

-- Employee
INSERT INTO Employee VALUES (123456700, "Vasco Miranda", "7654-3210, nº14 Rua de Minha Casa, Porto, Portugal", "1999-12-31", "Empregado de Mesa", "Restauração", 912345678);
INSERT INTO Employee VALUES (456712300, "Silvia Ribeiro", "3210-7654, nº348 Rua Ribero, Arouca, Portugal", "2001-06-06", "Massagista", "SPA", 918765432);
INSERT INTO Employee VALUES (346729500, "Célia Cavaco", "5432-7610, nº42 Avenida da Liberdade, Lisboa, Portugal", "1994-04-12", "Chef", "Restauração", 961234567);
INSERT INTO Employee VALUES (209367100, "André Teixeira", "3456-5432, nº 65 Rua do André, Paris, França", "2003-10-10", "Empregado de Limpeza", "Apartamentos", 923456789);
INSERT INTO Employee VALUES (987654300, "Gonçalo Cortes", "9876-5432, nº123 Rua Street, NY, USA", "1989-01-24", "Bartender", "Bar", 915767500);
INSERT INTO Employee VALUES (789099800, "Alberta Rosa", "1111-2222, nº321 Rua das Flores, Lisboa, Portugal", "2000-04-12", "Rececionista", "Lounge", 919191919);

-- WorkingShift
INSERT INTO WorkingShift VALUES (123456700, "Segunda", "08:00:00", "12:00:00");
INSERT INTO WorkingShift VALUES (123456700, "Terça", "08:30:00", "11:30:00");
INSERT INTO WorkingShift VALUES (123456700, "Quarta", "04:00:00", "19:00:00");
INSERT INTO WorkingShift VALUES (123456700, "Quinta", "04:00:00", "19:00:00");
INSERT INTO WorkingShift VALUES (123456700, "Sexta", "09:00:00", "11:00:00");
INSERT INTO WorkingShift VALUES (123456700, "Sábado", "04:00:00", "12:00:00");
INSERT INTO WorkingShift VALUES (456712300, "Segunda", "04:00:00", "07:00:00");
INSERT INTO WorkingShift VALUES (456712300, "Quarta", "08:00:00", "17:00:00");
INSERT INTO WorkingShift VALUES (456712300, "Sexta", "06:00:00", "14:00:00");
INSERT INTO WorkingShift VALUES (346729500, "Sexta", "08:00:00", "12:00:00");
INSERT INTO WorkingShift VALUES (346729500, "Sábado", "08:00:00", "12:00:00");
INSERT INTO WorkingShift VALUES (209367100, "Segunda", "08:00:00", "10:00:00");
INSERT INTO WorkingShift VALUES (209367100, "Terça", "08:00:00", "10:00:00");
INSERT INTO WorkingShift VALUES (209367100, "Quarta", "08:00:00", "10:00:00");
INSERT INTO WorkingShift VALUES (987654300, "Segunda", "04:30:00", "19:00:00");
INSERT INTO WorkingShift VALUES (987654300, "Sexta", "05:30:00", "18:00:00");
INSERT INTO WorkingShift VALUES (789099800, "Terça", "08:30:00", "07:00:00");
INSERT INTO WorkingShift VALUES (789099800, "Quinta", "08:45:00", "07:15:00");
INSERT INTO WorkingShift VALUES (789099800, "Domingo", "04:00:00", "08:00:00");

-- Renting
INSERT INTO Renting VALUES (1,123678900, 1);
INSERT INTO Renting VALUES (0,567567563, 2);
INSERT INTO Renting VALUES (1,234232323, 2);
INSERT INTO Renting VALUES (0,567567563, 5);
INSERT INTO Renting VALUES (1,234232323, 5);
INSERT INTO Renting VALUES (0,123678900, 5);
INSERT INTO Renting VALUES (0,569477700, 4);

-- HotelZoneBookingType
INSERT INTO HotelZoneBookingType VALUES("Premium", "Apartamentos");
INSERT INTO HotelZoneBookingType VALUES("Premium", "Restauração");
INSERT INTO HotelZoneBookingType VALUES("Premium", "SPA");
INSERT INTO HotelZoneBookingType VALUES("Premium", "Bar");
INSERT INTO HotelZoneBookingType VALUES("Premium", "Campo de Golfe");
INSERT INTO HotelZoneBookingType VALUES("Premium", "Piscinas");
INSERT INTO HotelZoneBookingType VALUES("Premium", "Salão de Jogos");
INSERT INTO HotelZoneBookingType VALUES("Premium", "Lounge");
INSERT INTO HotelZoneBookingType VALUES("Plano D' Ouro", "Apartamentos");
INSERT INTO HotelZoneBookingType VALUES("Plano D' Ouro", "Restauração");
INSERT INTO HotelZoneBookingType VALUES("Plano D' Ouro", "Bar");
INSERT INTO HotelZoneBookingType VALUES("Plano D' Ouro", "Piscinas");
INSERT INTO HotelZoneBookingType VALUES("Plano D' Ouro", "Lounge");
INSERT INTO HotelZoneBookingType VALUES("Diversão Total", "Apartamentos");
INSERT INTO HotelZoneBookingType VALUES("Diversão Total", "Campo de Golfe");
INSERT INTO HotelZoneBookingType VALUES("Diversão Total", "Salão de Jogos");
INSERT INTO HotelZoneBookingType VALUES("Apenas Dormindo", "Apartamentos");