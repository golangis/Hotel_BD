create trigger if not exists bTypeHasApparts
    before insert on bookingtype
    begin
        insert into hotelzonebookingtype
        values (new.name, "Apartamentos");
    end;