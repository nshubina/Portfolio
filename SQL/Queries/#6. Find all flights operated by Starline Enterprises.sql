-- Find all flights operated by "Starline Enterprises" --

Select c.CName, t.*
From Company c Inner Join Trip t on c.CompanyId=t.CompanyFK
WHERE c.CName='Starline Enterprises'