--  Find the earliest flight by departure time --
Select *
From Trip
WHERE time_out=(
		SELECT MIN(time_out)
		From Trip
)
