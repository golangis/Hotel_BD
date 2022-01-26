DROP VIEW IF EXISTS employee_pay;
Create VIEW employee_pay (
    SSN,
    weekly_hours
)

AS

Select WorkingShift.employee, cast(sum((strftime('%s',working_hours)) -
           strftime('%s', '00:00:00'       )) as Real) / 3600
FROM WorkingShift
Group by WorkingShift.employee;


Select sum(weekly_hours * hourly_pay) as weekly_pay_costs
From employee_pay, Specialty, Employee
Where Employee.SSN = employee_pay.SSN;
