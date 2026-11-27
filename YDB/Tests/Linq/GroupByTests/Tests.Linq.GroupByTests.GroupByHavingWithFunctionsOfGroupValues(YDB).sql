-- YDB Ydb
SELECT
	g_2.Key_1 as Key_1,
	g_2.Count_1 as Count_1
FROM
	(
		SELECT
			g_1.FirstName as Key_1,
			MAX(g_1.LastName) as Max_1,
			COUNT(*) as Count_1
		FROM
			Person g_1
		GROUP BY
			g_1.FirstName
	) g_2
WHERE
	Unicode::ToLower(g_2.Key_1) = 'john'u OR Unicode::GetLength(g_2.Max_1) > 6

-- YDB Ydb
SELECT
	t1.FirstName as FirstName,
	t1.PersonID as PersonID,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	t1.Gender as Gender
FROM
	Person t1

