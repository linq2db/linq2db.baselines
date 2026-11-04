-- ClickHouse.MySql ClickHouse
SELECT
	t1.RowNumber_2,
	t1.RowNumber_1
FROM
	(
		SELECT
			toInt64(ROW_NUMBER() OVER (PARTITION BY e.RowNumber ORDER BY e.RowNumber_1 NULLS FIRST, e.RowNumber_2)) as RowNumber,
			e.RowNumber_1 as RowNumber_1,
			e.RowNumber_2 as RowNumber_2
		FROM
			(
				SELECT
					p.ParentID % 2 as RowNumber,
					p.Value1 as RowNumber_1,
					p.ParentID as RowNumber_2
				FROM
					Parent p
				ORDER BY
					p.Value1 NULLS FIRST,
					p.ParentID
				LIMIT 7
			) e
	) t1
WHERE
	t1.RowNumber = toInt64(1)
ORDER BY
	t1.RowNumber_1 NULLS FIRST,
	t1.RowNumber_2

-- ClickHouse.MySql ClickHouse
SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

