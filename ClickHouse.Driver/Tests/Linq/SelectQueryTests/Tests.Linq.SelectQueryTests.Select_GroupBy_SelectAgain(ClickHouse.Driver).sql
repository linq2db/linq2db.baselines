-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*) OVER(),
	x.Key_1,
	x.Count_1,
	x.HighestFirstName
FROM
	(
		SELECT
			summary.LastName as Key_1,
			COUNT(*) as Count_1,
			MAX(summary.FirstName) as HighestFirstName
		FROM
			Person summary
		GROUP BY
			summary.LastName
		HAVING
			COUNT(*) > 5
		LIMIT 1, 1
	) x

