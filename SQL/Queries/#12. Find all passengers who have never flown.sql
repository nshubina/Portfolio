-- Find all passengers who have never flown --
Select p.LastName, Count (PassengerFK) as quantity
FROM Passenger p 
		LEFT JOIN Pass_in_trip pit ON p.PassengerId=pit.PassengerFK
GROUP BY p.PassengerId, p.LastName
Having Count (PassengerFK)=0