Select COALESCE(

    (Select G1.name as next_anniversary
    From Guest as G1
    Where strftime('%j', G1.birthdate) > strftime('%j', 'now')
    Order by strftime('%j', G1.birthdate) ASC LIMIT 1),

    (Select G2.name as next_anniversary
    From Guest as G2
    Order by strftime('%j', G2.birthdate) ASC LIMIT 1))

as next_anniversary