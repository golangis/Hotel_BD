PRAGMA foreign_keys = ON;

drop table if exists HotelZone;
create table HotelZone(
    name text primary key,
    open_hour time  not null,
    time_open time  not null,
    CONSTRAINT openHour_valid CHECK(open_hour < "24:00:00" and open_hour >= "00:00:00"),
    CONSTRAINT timeOpen_valid CHECK (time_open <= "24:00:00" and time_open > "00:00:00")
); 

drop table if exists Specialty;
create table Specialty (
    name text primary key,
    hourly_pay int not null,
    CONSTRAINT hourlyPay_positive CHECK (hourly_pay > 0)
);

drop table if exists Guest;
create table Guest (

    SSN int primary key,
    name text not null,
    address text,
    birthdate date not null,
    CONSTRAINT GuestSSNLength CHECK (LENGTH(ssn) = 9)

);

drop table if exists Employee;
create table Employee (

    SSN int primary key,
    name text not null,
    address text,
    birthdate date not null,
    specialty text references Specialty(name) ON DELETE CASCADE ON UPDATE CASCADE not null,
    hotel_zone text references HotelZone(name) ON DELETE SET NULL ON UPDATE CASCADE,
    working_phone int not null,
    CONSTRAINT WPLenght CHECK (LENGTH(working_phone) = 9),
    CONSTRAINT EmployeeSSNLength CHECK (LENGTH(ssn) = 9)

);

drop table if exists Room;
create table Room (

    number int primary key,
    number_of_beds int not null,
    number_of_bathrooms int not null,
    price_per_night int not null,
    nfloor int not null,
    CONSTRAINT number_positive CHECK (number > 0),
    CONSTRAINT numberBeds_positive CHECK (number_of_beds > 0),
    CONSTRAINT numberBathrooms_positive CHECK (number_of_bathrooms > 0),
    CONSTRAINT price_positive CHECK (price_per_night > 0),
    CONSTRAINT nfloor_notNegative CHECK (nfloor >= 0)
);

drop table if exists BookingType;
create table BookingType (

    name text primary key,
    extra_costs int not null,
    CONSTRAINT extraCosts_notNegative CHECK (extra_costs >= 0)
);

drop table if exists Booking;
create table Booking (
    id int primary key,
    room_number int references Room(number) ON DELETE CASCADE ON UPDATE CASCADE not null,
    booking_type text references BookingType(name) ON DELETE SET DEFAULT ON UPDATE CASCADE DEFAULT 'DEFAULT' not null,
    payment_method text not null,
    phone_number int,
    begin_date date not null,
    end_date date not null,
    CONSTRAINT endDateAfterBegin CHECK (end_date > begin_date),
    CONSTRAINT phoneNumber_Length CHECK (LENGTH(phone_number) = 9)

);

drop table if exists Renting;
create table Renting (
    renter int,
    guest_SSN int references Guest(SSN) ON DELETE CASCADE ON UPDATE CASCADE,
    booking_id int references Booking(id),
    primary key (guest_SSN, booking_id),
    CONSTRAINT isRenter CHECK (renter = 0 or renter = 1)

);

drop table if exists Event;
create table Event (
    id int primary key,
    hotel_zone text references HotelZone(name) ON DELETE CASCADE ON UPDATE CASCADE not null,
    name text not null,
    age_access int not null,
    begin_date datetime not null,
    end_date datetime not null,
    CONSTRAINT endDateAfterBegin CHECK (end_date > begin_date),
    CONSTRAINT age_notNegative CHECK (age_access >= 0)


);

drop table if exists WorkingDay;
create table WorkingDay (
    name text primary key
);

drop table if exists WorkingShift;
create table WorkingShift (
    employee int references Employee(SSN) ON DELETE CASCADE ON UPDATE CASCADE,
    working_day text references WorkingDay(name) ON DELETE CASCADE ON UPDATE CASCADE,
    working_hours time not null,
    begin_hour time not null,
    primary key (employee, working_day),
    CONSTRAINT workingHours_valid CHECK (working_hours > "00:00:00" and working_hours < "24:00:00"),
    CONSTRAINT beginHour_valid CHECK ("00:00:00" <= begin_hour and begin_hour < "24:00:00")

);

drop table if exists HotelZoneBookingType;
create table HotelZoneBookingType (
    booking_type text references BookingType(name) ON DELETE CASCADE ON UPDATE CASCADE,
    hotel_zone text references HotelZone(name) ON DELETE CASCADE ON UPDATE CASCADE,
    primary key (booking_type, hotel_zone)

);