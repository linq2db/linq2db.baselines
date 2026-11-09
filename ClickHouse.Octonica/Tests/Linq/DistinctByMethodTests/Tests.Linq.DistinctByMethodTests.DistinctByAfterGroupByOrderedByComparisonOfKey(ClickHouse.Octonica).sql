-- ClickHouse.Octonica ClickHouse
SELECT
	t1.Key_1,
	t1.Count_1
FROM
	(
		SELECT
			toInt64(ROW_NUMBER() OVER (PARTITION BY e.c1 ORDER BY e.c2 DESC, e.Key_1)) as RowNumber,
			e.c2 as c2,
			e.Key_1 as Key_1,
			e.Count_1 as Count_1
		FROM
			(
				SELECT
					g_1.ParentID % 2 as c1,
					g_1.ParentID > 2 as c2,
					g_1.ParentID as Key_1,
					COUNT(*) as Count_1
				FROM
					Parent g_1
				GROUP BY
					g_1.ParentID
			) e
	) t1
WHERE
	t1.RowNumber = toInt64(1)
ORDER BY
	t1.c2 DESC,
	t1.Key_1

-- ClickHouse.Octonica ClickHouse
SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

