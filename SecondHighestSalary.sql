# Write your MySQL query statement below
#思路一：ifnull + limit
# select ifnull(
# (select distinct Salary
# from Employee
# order by Salary desc
# limit 1, 1), null) as 'SecondHighestSalary'
#思路二: max
select max(Salary) as 'SecondHighestSalary'
from Employee
where Salary < (select max(Salary) from Employee);
