-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*) OVER(),
	x.Key_1,
	x.Count_1,
	x.Max_1
FROM
	(
		SELECT
			summary.LastName as Key_1,
			COUNT(*) as Count_1,
			maxOrNull(summary.FirstName) as Max_1
		FROM
			Person summary
		GROUP BY
			summary.LastName
		HAVING
			COUNT(*) > 5
		LIMIT 1, 1
	) x

