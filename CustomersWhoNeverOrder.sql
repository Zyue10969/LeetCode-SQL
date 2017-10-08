# Write your MySQL query statement below
#思路一:not in 
# select Name as 'Customers'
# from Customers
# where Id not in (
# select CustomerId from Orders)

#思路二: left join
select c.Name as 'Customers'
from Customers as c
left join Orders as o
on c.Id = o.CustomerId 
where o.CustomerId is null #注意这行是where，限制Customers里面的行
