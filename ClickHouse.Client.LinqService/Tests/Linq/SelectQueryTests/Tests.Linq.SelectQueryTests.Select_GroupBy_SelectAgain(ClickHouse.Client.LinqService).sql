BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	COUNT(*) OVER(),
	x.Key_1,
	x.Count_1,
	x.MAX_1
FROM
	(
		SELECT
			summary.LastName as Key_1,
			COUNT(*) as Count_1,
			max(summary.FirstName) as MAX_1
		FROM
			Person summary
		GROUP BY
			summary.LastName
		HAVING
			COUNT(*) > 5
		LIMIT 1, 1
	) x

