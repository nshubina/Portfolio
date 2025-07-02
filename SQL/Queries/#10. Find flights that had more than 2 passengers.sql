-- Find flights that had more than 2 passengers --
Select t.TripId, Count (passengerFK) as count_passenger
From Trip t
		Inner Join Pass_in_trip pit on t.TripID=pit.TripFK
Group by t.tripId
Having Count (passengerFK)>2
