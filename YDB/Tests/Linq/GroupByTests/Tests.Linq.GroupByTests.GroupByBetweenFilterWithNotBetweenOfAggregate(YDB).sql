-- YDB Ydb
SELECT
	g_2.FirstName as FirstName,
	g_2.OutOfRange NOT BETWEEN 2 AND 3 as c1
FROM
	(
		SELECT
			g_1.FirstName as FirstName,
			SUM(g_1.PersonID) as Sum_1,
			MAX(g_1.PersonID) as OutOfRange
		FROM
			Person g_1
		GROUP BY
			g_1.FirstName
	) g_2
WHERE
	g_2.Sum_1 BETWEEN 1 AND 2

-- YDB Ydb
SELECT
	t1.FirstName as FirstName,
	t1.PersonID as PersonID,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	t1.Gender as Gender
FROM
	Person t1

