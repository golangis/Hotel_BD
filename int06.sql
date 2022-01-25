.mode columns
.headers on
.nullvalue NULL

PRAGMA FOREIGN_KEYS = ON;
--Pagamento por hora médio dos trabalhadores do hotel
SELECT SUM(Specialty.hourly_pay) / count(*) as [Average Hourly Pay]
    FROM Specialty JOIN Employee
        ON Specialty.name = Employee.specialty;
            