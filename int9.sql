.mode columns
.headers on
.nullvalue NULL

PRAGMA FOREIGN_KEYS = ON;
--Número de funcionários com especialidade em Bartender
 select count(*) as [Employees in Specialty]
     from Employee
        where (specialty = "Bartender")