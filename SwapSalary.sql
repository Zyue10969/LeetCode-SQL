# Write your MySQL query statement below
#思路：用update修改table,用case when语句判断
# UPDATE salary
# SET
#     sex = CASE sex
#         WHEN 'm' THEN 'f'
#         ELSE 'm'
#     END;

update salary
set sex= 
case when sex='m' then 'f'
     when sex='f' then 'm'
else sex
end;
