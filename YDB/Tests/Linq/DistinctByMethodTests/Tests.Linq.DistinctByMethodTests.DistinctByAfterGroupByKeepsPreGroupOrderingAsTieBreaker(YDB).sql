-- YDB Ydb
SELECT
	t1.RowNumber_1 as RowNumber,
	t1.RowNumber_2 as RowNumber_1
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e_1.RowNumber ORDER BY e_1.RowNumber_1) as RowNumber,
			e_1.RowNumber as RowNumber_1,
			e_1.RowNumber_1 as RowNumber_2
		FROM
			(
				SELECT
					e.ParentID as RowNumber,
					COUNT(*) as RowNumber_1
				FROM
					Parent e
				GROUP BY
					e.ParentID
			) e_1
	) t1
WHERE
	t1.RowNumber = 1l
ORDER BY
	t1.RowNumber_2,
	t1.RowNumber_1 DESC

