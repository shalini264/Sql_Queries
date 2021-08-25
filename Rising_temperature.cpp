# Write your MySQL query statement below
Select weather.id as id
from weather, weather w
where DATEDIFF(weather.recordDate,w.recordDate)=1 AND weather.Temperature>w.Temperature;
