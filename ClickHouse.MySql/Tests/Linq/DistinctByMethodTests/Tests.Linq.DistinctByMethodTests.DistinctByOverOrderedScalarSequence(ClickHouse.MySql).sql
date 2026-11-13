-- ClickHouse.MySql ClickHouse
SELECT
	t1.ParentID
FROM
	(
		SELECT
			toInt64(ROW_NUMBER() OVER (PARTITION BY e.ParentID % 2 ORDER BY e.ParentID DESC)) as RowNumber,
			e.ParentID as ParentID
		FROM
			Parent e
	) t1
WHERE
	t1.RowNumber = toInt64(1)
ORDER BY
	t1.ParentID DESC

-- ClickHouse.MySql ClickHouse
SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

