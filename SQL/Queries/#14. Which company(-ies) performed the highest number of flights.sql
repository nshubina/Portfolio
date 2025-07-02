-- Which company(-ies) performed the highest number of flights? --
SELECT c.CName, COUNT(*) AS flight_count
FROM Company c
		INNER JOIN Trip t ON c.CompanyId = t.CompanyFK
GROUP BY c.CName
HAVING COUNT(*) = (
    SELECT MAX(company_flight_count)
    FROM (
        SELECT COUNT(*) AS company_flight_count
        FROM Trip
        GROUP BY CompanyFK
    ) AS subquery
);