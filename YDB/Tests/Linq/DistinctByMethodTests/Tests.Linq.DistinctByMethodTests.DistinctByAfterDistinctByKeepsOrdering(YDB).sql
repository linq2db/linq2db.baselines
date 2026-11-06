-- YDB Ydb
SELECT
	t1.RowNumber_1 as RowNumber,
	t1.RowNumber_2 as RowNumber_1
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e_1.RowNumber_2 % 2 ORDER BY e_1.RowNumber_2 DESC) as RowNumber,
			e_1.RowNumber_2 as RowNumber_1,
			e_1.RowNumber_1 as RowNumber_2
		FROM
			(
				SELECT
					ROW_NUMBER() OVER (PARTITION BY e.Value1 ORDER BY e.ParentID DESC) as RowNumber,
					e.Value1 as RowNumber_1,
					e.ParentID as RowNumber_2
				FROM
					Parent e
			) e_1
		WHERE
			e_1.RowNumber = 1l
	) t1
WHERE
	t1.RowNumber = 1l
ORDER BY
	t1.RowNumber_1 DESC

-- YDB Ydb
SELECT
	t1.ParentID as ParentID,
	t1.Value1 as Value1
FROM
	Parent t1

