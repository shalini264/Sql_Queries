# Write your MySQL query statement below
Select Person.FirstName,Person.LastName,Address.City,Address.State
from Person
Left Join Address
on Person.PersonId=Address.PersonId;
