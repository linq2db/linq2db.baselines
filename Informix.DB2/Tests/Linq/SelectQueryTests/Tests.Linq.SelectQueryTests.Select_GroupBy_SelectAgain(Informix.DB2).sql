BeforeExecute
-- Informix.DB2 Informix

SELECT SKIP 1 FIRST 1
	summary.c1,
	summary.LastName,
	summary.Count_1,
	summary.MAX_1
FROM
	(
		SELECT
			COUNT(*) as Count_1,
			group_1.LastName,
			MAX(group_1.FirstName) as MAX_1,
			COUNT(*) OVER() as c1
		FROM
			Person group_1
		GROUP BY
			group_1.LastName
	) summary
WHERE
	summary.Count_1 > 5

