Create Trigger check_renting Before insert on Renting
When NEW.renter = 1
Begin

    UPDATE Renting SET renter = 0 WHERE booking_id = NEW.booking_id and renter = 1;

End;