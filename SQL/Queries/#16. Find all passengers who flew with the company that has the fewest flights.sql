-- Find all passengers who flew with the company that has the fewest flights --
SELECT p.*, t.CompanyFK
FROM Passenger p
		JOIN Pass_in_trip pit ON p.PassengerId = pit.PassengerFK
		JOIN Trip t ON t.TripId = pit.TripFK
WHERE 
	t.CompanyFK IN (
					SELECT CompanyFK
					FROM Trip
					GROUP BY CompanyFK
					HAVING COUNT(*) = (
						SELECT MIN(flight_count)
						FROM (
								SELECT COUNT(*) AS flight_count	
								FROM Trip
								GROUP BY CompanyFK
							) AS sub
						)
					)