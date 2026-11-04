-- ClickHouse.Driver ClickHouse
SELECT
	t1.RowNumber_2,
	t1.RowNumber_1
FROM
	(
		SELECT
			toInt64(ROW_NUMBER() OVER (PARTITION BY e_1.RowNumber ORDER BY e_1.RowNumber_1, e_1.RowNumber_2 DESC)) as RowNumber,
			e_1.RowNumber as RowNumber_1,
			e_1.RowNumber_2 as RowNumber_2
		FROM
			(
				SELECT
					e.Value1 as RowNumber,
					Coalesce(e.Value1, 0) as RowNumber_1,
					e.ParentID as RowNumber_2
				FROM
					Parent e
				ORDER BY
					Coalesce(e.Value1, 0),
					e.ParentID DESC
				LIMIT 4
			) e_1
	) t1
WHERE
	t1.RowNumber = toInt64(1)
ORDER BY
	Coalesce(t1.RowNumber_1, 0),
	t1.RowNumber_2 DESC

-- ClickHouse.Driver ClickHouse
SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

