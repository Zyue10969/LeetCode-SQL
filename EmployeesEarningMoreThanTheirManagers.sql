# Write your MySQL query statement below
#思路一:where
# select e1.Name as 'Employee'
# from Employee as e1, Employee as e2
# where e1.ManagerID = e2.Id and e1.Salary > e2.Salary;

#思路二:join
select e1.Name as 'Employee'
from Employee as e1
join Employee as e2
on e1.ManagerId = e2.Id and e1.Salary > e2.Salary;
