-- ClickHouse.MySql ClickHouse
SELECT
	t1.Key_1,
	t1.Count_1
FROM
	(
		SELECT
			toInt64(ROW_NUMBER() OVER (PARTITION BY e.Key_1 % 2 ORDER BY e.Key_1)) as RowNumber,
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
	t1.RowNumber = toInt64(1)
ORDER BY
	t1.Key_1

-- ClickHouse.MySql ClickHouse
SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

