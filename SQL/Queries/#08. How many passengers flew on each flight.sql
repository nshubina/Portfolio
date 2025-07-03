 -- How many passengers flew on each flight? --
 Select TripFK, Count(passengerFK) as P_Count
 From Pass_in_trip
 Group By TripFk