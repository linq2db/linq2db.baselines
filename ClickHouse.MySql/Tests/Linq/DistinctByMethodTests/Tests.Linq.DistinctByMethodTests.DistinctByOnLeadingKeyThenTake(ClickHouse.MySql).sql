-- ClickHouse.MySql ClickHouse
SELECT
	t1.ParentID,
	t1.Value1
FROM
	(
		SELECT
			toInt64(ROW_NUMBER() OVER (PARTITION BY e.ParentID % 3 ORDER BY e.ParentID % 3, e.ParentID DESC)) as RowNumber,
			e.ParentID as ParentID,
			e.Value1 as Value1
		FROM
			Parent e
	) t1
WHERE
	t1.RowNumber = toInt64(1)
ORDER BY
	t1.ParentID % 3,
	t1.ParentID DESC
LIMIT 2

-- ClickHouse.MySql ClickHouse
SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

