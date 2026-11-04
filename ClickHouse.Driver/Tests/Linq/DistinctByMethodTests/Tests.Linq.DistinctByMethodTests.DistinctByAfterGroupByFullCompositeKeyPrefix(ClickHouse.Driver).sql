-- ClickHouse.Driver ClickHouse
SELECT
	t1.RowNumber_1,
	t1.RowNumber_2
FROM
	(
		SELECT
			toInt64(ROW_NUMBER() OVER (PARTITION BY e.RowNumber ORDER BY e.RowNumber, e.RowNumber_1 NULLS FIRST)) as RowNumber,
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
	t1.RowNumber = toInt64(1)
ORDER BY
	t1.RowNumber_1,
	t1.RowNumber_2 NULLS FIRST

-- ClickHouse.Driver ClickHouse
SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

