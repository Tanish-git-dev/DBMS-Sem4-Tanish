select m.name as Employee
from Employee e
inner join Employee m on e.id = m.managerId
where m.salary > e.salary
