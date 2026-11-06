-- ClickHouse.MySql ClickHouse
SELECT
	t1.RowNumber_2,
	t1.RowNumber_1
FROM
	(
		SELECT
			toInt64(ROW_NUMBER() OVER (PARTITION BY e.Value1 ORDER BY e.ParentID DESC)) as RowNumber,
			e.Value1 as RowNumber_1,
			e.ParentID as RowNumber_2
		FROM
			Parent e
	) t1
WHERE
	t1.RowNumber = toInt64(1)
ORDER BY
	t1.RowNumber_2 DESC
LIMIT 2

-- ClickHouse.MySql ClickHouse
SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

