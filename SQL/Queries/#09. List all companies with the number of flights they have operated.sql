-- List all companies with the number of flights they have operated and sort them in descending order --

Select c.CName, Count(*) as number_flight
From Company c 
	Inner Join Trip t on c.CompanyId=t.CompanyFK
Group By c.CName
Order by number_flight desc