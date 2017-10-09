# Write your MySQL query statement below
#思路一:先用count语句统计行数的奇偶,
#然后用case when ...then语句交换id
select(
case 
    when id%2 != 0 and id != counts then id + 1
    when id%2 != 0 and id = counts then id
    else id - 1
    end) as id, student
from seat, (select count(*) as counts from seat) as seat_counts
order by id asc;
