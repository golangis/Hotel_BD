.mode columns
.headers on
.nullvalue NULL

PRAGMA FOREIGN_KEYS = ON;
--Número de funcionários por especialidade
 SELECT specialty, count(*) as [Employees in Specialty]
     FROM Employee
            GROUP BY specialty;
            