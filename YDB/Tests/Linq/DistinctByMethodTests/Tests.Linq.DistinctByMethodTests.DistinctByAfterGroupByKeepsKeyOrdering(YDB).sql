-- YDB Ydb
SELECT
	t1.Key_1 as Key_1,
	t1.Count_1 as Count_1
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e.Key_1 % 2 ORDER BY e.Key_1) as RowNumber,
			e.Key_1 as Key_1,
			COUNT(*) as Count_1
		FROM
			(
				SELECT
					g_1.ParentID % 3 as Key_1
				FROM
					Parent g_1
			) e
		GROUP BY
			e.Key_1
	) t1
WHERE
	t1.RowNumber = 1l
ORDER BY
	t1.Key_1

-- YDB Ydb
SELECT
	t1.ParentID as ParentID,
	t1.Value1 as Value1
FROM
	Parent t1

