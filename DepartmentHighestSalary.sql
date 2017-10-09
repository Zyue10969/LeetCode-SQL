# Write your MySQL query statement below
#思路：两个限制条件
#1.Employee.DepartmentId = Department.Id
#2.(DepartmentId, Salary) in 
#  (select DepartmentID, max(Salary) from Employee group by DepartmentId)
select d.Name as 'Department', e.Name as 'Employee', e.Salary as 'Salary'
from Employee as e, Department as d
where e.DepartmentId = d.Id 
    and (e.DepartmentId, e.Salary) in 
    (select DepartmentID, max(Salary) from Employee group by DepartmentId);
