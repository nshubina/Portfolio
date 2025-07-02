 -- Find passengers who flew to the city of "London" --
 SELECT p.FirstName, p.LastName, t.Town_from, t.Town_to, t.Time_out
 FROM Passenger p
		JOIN Pass_in_trip pit ON p.PassengerId=pit.PassengerFK
		JOIN Trip t ON pit.TripFK = t.TripId
Where Town_to ='London'