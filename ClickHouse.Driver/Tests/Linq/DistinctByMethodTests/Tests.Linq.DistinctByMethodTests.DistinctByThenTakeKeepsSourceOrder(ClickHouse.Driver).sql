-- ClickHouse.Driver ClickHouse
SELECT
	t1.ParentID,
	t1.Value1
FROM
	(
		SELECT
			toInt64(ROW_NUMBER() OVER (PARTITION BY e.Value1 ORDER BY e.ParentID DESC)) as RowNumber,
			e.Value1 as Value1,
			e.ParentID as ParentID
		FROM
			Parent e
	) t1
WHERE
	t1.RowNumber = toInt64(1)
ORDER BY
	t1.ParentID DESC
LIMIT 2

-- ClickHouse.Driver ClickHouse
SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

