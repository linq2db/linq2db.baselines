BeforeExecute
-- Informix.DB2 Informix

SELECT
	COUNT(*) OVER(),
	x.Key_1,
	x.Count_1,
	x.MAX_1
FROM
	(
		SELECT SKIP 1 FIRST 1
			summary.LastName as Key_1,
			COUNT(*) as Count_1,
			MAX(summary.FirstName) as MAX_1
		FROM
			Person summary
		GROUP BY
			summary.LastName
		HAVING
			COUNT(*) > 5
	) x

