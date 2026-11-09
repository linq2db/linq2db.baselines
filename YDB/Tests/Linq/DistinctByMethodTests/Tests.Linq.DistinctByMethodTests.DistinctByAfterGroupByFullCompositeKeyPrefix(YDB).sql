-- YDB Ydb
SELECT
	t1.Parity as Parity,
	t1.Value1 as Value1
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e.Parity ORDER BY e.Parity, e.Value1) as RowNumber,
			e.Parity as Parity,
			e.Value1 as Value1
		FROM
			(
				SELECT DISTINCT
					g_1.ParentID % 2 as Parity,
					g_1.Value1 as Value1
				FROM
					Parent g_1
			) e
	) t1
WHERE
	t1.RowNumber = 1l
ORDER BY
	t1.Parity,
	t1.Value1

-- YDB Ydb
SELECT
	t1.ParentID as ParentID,
	t1.Value1 as Value1
FROM
	Parent t1

