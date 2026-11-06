-- YDB Ydb
SELECT
	t1.RowNumber_1 as RowNumber
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e.RowNumber % 2 ORDER BY e.RowNumber DESC) as RowNumber,
			e.RowNumber as RowNumber_1
		FROM
			(
				SELECT DISTINCT
					g_1.ParentID % 3 as RowNumber
				FROM
					Parent g_1
			) e
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

