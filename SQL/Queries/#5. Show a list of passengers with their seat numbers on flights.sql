-- Show a list of passengers with their seat numbers on flights --

Select p.FirstName, p.LastName, pit.Place
From Passenger p 
	Inner Join Pass_in_trip pit on p.PassengerId=pit.PassengerFK