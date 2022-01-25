.mode columns
.headers on
.nullvalue NULL

PRAGMA FOREIGN_KEYS = ON;
-- Empregados a trabalhar na restauração sábado às 13 horas
SELECT name
    FROM workingshift, employee 
        WHERE (employee = ssn and hotel_zone = 'Restauração' and working_day = 'Sábado' 
            and '13:00:00' between begin_hour and time(begin_hour, +working_hours)) 
            ORDER BY employee asc;