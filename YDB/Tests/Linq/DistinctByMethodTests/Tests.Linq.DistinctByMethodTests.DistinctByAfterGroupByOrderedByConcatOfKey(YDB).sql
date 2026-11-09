-- YDB Ydb
SELECT
	t1.Key_1 as Key_1,
	t1.Count_1 as Count_1
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e.Length_1 ORDER BY e.Key_1 || 'x'u DESC) as RowNumber,
			e.Key_1 || 'x'u as c1,
			e.Key_1 as Key_1,
			COUNT(*) as Count_1
		FROM
			(
				SELECT
					g_1.FirstName as Key_1,
					Unwrap(CAST(Unicode::GetLength(g_1.FirstName) AS Int32)) as Length_1
				FROM
					Person g_1
			) e
		GROUP BY
			e.Key_1,
			e.Length_1
	) t1
WHERE
	t1.RowNumber = 1l
ORDER BY
	t1.c1 DESC

-- YDB Ydb
SELECT
	t1.FirstName as FirstName,
	t1.PersonID as PersonID,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	t1.Gender as Gender
FROM
	Person t1

