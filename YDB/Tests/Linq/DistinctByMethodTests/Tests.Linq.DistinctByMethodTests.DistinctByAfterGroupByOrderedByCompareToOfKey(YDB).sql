-- YDB Ydb
SELECT
	t1.RowNumber_2 as RowNumber,
	t1.Count_1 as Count_1
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e.RowNumber ORDER BY e.RowNumber_1, e.RowNumber_2 DESC) as RowNumber,
			e.RowNumber_1 as RowNumber_1,
			e.RowNumber_2 as RowNumber_2,
			e.Count_1 as Count_1
		FROM
			(
				SELECT
					g_2.Length_1 as RowNumber,
					CASE
						WHEN g_2.Key_1 > 'K'u THEN 1
						WHEN g_2.Key_1 = 'K'u THEN 0
						ELSE -1
					END as RowNumber_1,
					g_2.Key_1 as RowNumber_2,
					COUNT(*) as Count_1
				FROM
					(
						SELECT
							g_1.FirstName as Key_1,
							Unwrap(CAST(Unicode::GetLength(g_1.FirstName) AS Int32)) as Length_1
						FROM
							Person g_1
					) g_2
				GROUP BY
					g_2.Key_1,
					g_2.Length_1
			) e
	) t1
WHERE
	t1.RowNumber = 1l
ORDER BY
	t1.RowNumber_1,
	t1.RowNumber_2 DESC

-- YDB Ydb
SELECT
	t1.FirstName as FirstName,
	t1.PersonID as PersonID,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	t1.Gender as Gender
FROM
	Person t1

