-- YDB Ydb
SELECT
	t1.Key_1 as Key_1,
	t1.C_1 as C_1
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e.Key_1 % 2 ORDER BY e.RowNumber) as RowNumber,
			e.RowNumber as RowNumber_1,
			e.Key_1 as Key_1,
			e.C_1 as C_1
		FROM
			(
				SELECT
					g_1.ParentID as Key_1,
					-g_1.ParentID as RowNumber,
					COUNT(*) as C_1
				FROM
					Parent g_1
				GROUP BY
					g_1.ParentID
			) e
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

