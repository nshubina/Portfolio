--Find the total number of flights taken by all passengers. --
Select Sum(count) AS TotalPFlights
From  (
		Select PassengerFK, COUNT(passengerFK) as count
		From Pass_in_trip
		Group By PassengerFK
)as subquery