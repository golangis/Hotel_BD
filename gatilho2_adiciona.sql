CREATE Trigger IF NOT EXISTS overlap_date BEFORE INSERT ON Booking
    WHEN EXISTS (

        SELECT room_number, begin_date, end_date FROM Booking 
            WHERE (NEW.room_number = room_number 
                AND (
                    (NEW.begin_date <= begin_date AND NEW.end_date >= end_date) --começa antes e acaba depois
                    OR
                    (NEW.begin_date <= end_date AND NEW.begin_date >= begin_date ) --começa no meio e acaba antes
                    OR
                    (NEW.begin_date <= begin_date AND NEW.end_date >= begin_date ) --começa antes e acaba no meio
                    OR
                    (NEW.begin_date >= begin_date AND NEW.end_date <= begin_date ) --começa e acaba no meio
                    )))
 
        BEGIN
            SELECT RAISE(ABORT, 'Quarto não disponível na data pretendida!');
END;
