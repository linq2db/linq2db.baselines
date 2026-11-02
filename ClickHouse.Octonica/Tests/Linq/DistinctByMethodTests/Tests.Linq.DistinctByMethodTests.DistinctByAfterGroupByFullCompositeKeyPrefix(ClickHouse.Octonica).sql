-- ClickHouse.Octonica ClickHouse
SELECT
	t1.Parity,
	t1.RowNumber_1
FROM
	(
		SELECT
			toInt64(ROW_NUMBER() OVER (PARTITION BY e.Parity ORDER BY e.Parity, e.RowNumber NULLS FIRST)) as RowNumber,
			e.Parity as Parity,
			e.RowNumber as RowNumber_1
		FROM
			(
				SELECT DISTINCT
					g_1.ParentID % 2 as Parity,
					g_1.Value1 as RowNumber
				FROM
					Parent g_1
			) e
	) t1
WHERE
	t1.RowNumber = toInt64(1)
ORDER BY
	t1.Parity,
	t1.RowNumber_1 NULLS FIRST

-- ClickHouse.Octonica ClickHouse
SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

