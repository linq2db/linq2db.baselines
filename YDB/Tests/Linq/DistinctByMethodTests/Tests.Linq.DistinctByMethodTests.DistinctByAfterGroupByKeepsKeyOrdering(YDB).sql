-- YDB Ydb
SELECT
	t1.RowNumber_1 as RowNumber,
	t1.Count_1 as Count_1
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e.RowNumber % 2 ORDER BY e.RowNumber) as RowNumber,
			e.RowNumber as RowNumber_1,
			COUNT(*) as Count_1
		FROM
			(
				SELECT
					g_1.ParentID % 3 as RowNumber
				FROM
					Parent g_1
			) e
		GROUP BY
			e.RowNumber
	) t1
WHERE
	t1.RowNumber = 1l
ORDER BY
	t1.RowNumber_1

-- YDB Ydb
SELECT
	t1.ParentID as ParentID,
	t1.Value1 as Value1
FROM
	Parent t1

