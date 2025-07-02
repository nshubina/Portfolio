-- Find the most frequently used seat on a flight --
Select place,COUNT(place) as freq
From Pass_in_trip
GROUP BY place
Having  COUNT(place)=
	(
		SELECT MAX(freq_count)
		From 
			(
				SELECT Count(place) as freq_count
				From Pass_in_trip
				Group By place
			) as subquery
)