# Write your MySQL query statement below
Select Name as 'Customers id'
from Customers
where Customers.id not in
(
    select customerid from orders
);
