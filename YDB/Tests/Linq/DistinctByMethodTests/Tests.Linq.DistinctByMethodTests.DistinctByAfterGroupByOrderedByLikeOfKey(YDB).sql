-- YDB Ydb
SELECT
	t1.RowNumber_2 as RowNumber,
	t1.Count_1 as Count_1
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e.RowNumber ORDER BY e.RowNumber_1 DESC, e.RowNumber_2 DESC) as RowNumber,
			e.RowNumber_1 as RowNumber_1,
			e.RowNumber_2 as RowNumber_2,
			e.Count_1 as Count_1
		FROM
			(
				SELECT
					g_2.Length_1 as RowNumber,
					g_2.Key_1 LIKE 'J%'u as RowNumber_1,
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
	t1.RowNumber_1 DESC,
	t1.RowNumber_2 DESC

