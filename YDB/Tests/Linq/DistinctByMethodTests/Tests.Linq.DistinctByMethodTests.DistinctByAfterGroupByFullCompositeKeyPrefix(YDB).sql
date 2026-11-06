-- YDB Ydb
SELECT
	t1.RowNumber_1 as RowNumber,
	t1.RowNumber_2 as RowNumber_1
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e.RowNumber ORDER BY e.RowNumber, e.RowNumber_1) as RowNumber,
			e.RowNumber as RowNumber_1,
			e.RowNumber_1 as RowNumber_2
		FROM
			(
				SELECT DISTINCT
					g_1.ParentID % 2 as RowNumber,
					g_1.Value1 as RowNumber_1
				FROM
					Parent g_1
			) e
	) t1
WHERE
	t1.RowNumber = 1l
ORDER BY
	t1.RowNumber_1,
	t1.RowNumber_2

-- YDB Ydb
SELECT
	t1.ParentID as ParentID,
	t1.Value1 as Value1
FROM
	Parent t1

