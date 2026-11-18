-- YDB Ydb
SELECT
	g_2.FirstName as FirstName,
	g_2.FirstName BETWEEN 'A'u AND 'Jo'u as c1,
	g_2.RowsInRange as RowsInRange
FROM
	(
		SELECT
			g_1.FirstName as FirstName,
			SUM(g_1.PersonID) as Sum_1,
			COUNT(CASE
				WHEN g_1.PersonID BETWEEN 3 AND 4 THEN 1
				ELSE NULL
			END) as RowsInRange
		FROM
			Person g_1
		GROUP BY
			g_1.FirstName
	) g_2
WHERE
	g_2.Sum_1 NOT BETWEEN 2 AND 2

-- YDB Ydb
SELECT
	t1.FirstName as FirstName,
	t1.PersonID as PersonID,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	t1.Gender as Gender
FROM
	Person t1

