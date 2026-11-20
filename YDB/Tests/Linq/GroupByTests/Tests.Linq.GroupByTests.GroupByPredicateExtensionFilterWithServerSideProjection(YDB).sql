-- YDB Ydb
SELECT
	Unicode::GetLength(g_2.FirstName) as c1
FROM
	(
		SELECT
			g_1.FirstName as FirstName,
			SUM(g_1.PersonID) as Sum_1
		FROM
			Person g_1
		GROUP BY
			g_1.FirstName
	) g_2
WHERE
	g_2.Sum_1 NOT BETWEEN 2 AND 3

-- YDB Ydb
SELECT
	t1.FirstName as FirstName,
	t1.PersonID as PersonID,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	t1.Gender as Gender
FROM
	Person t1

