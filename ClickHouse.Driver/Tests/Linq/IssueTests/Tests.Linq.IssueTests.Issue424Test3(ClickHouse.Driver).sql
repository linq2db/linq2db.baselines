-- ClickHouse.Driver ClickHouse

SELECT DISTINCT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1
ORDER BY
	t1.ParentID DESC
LIMIT 1, 1

-- ClickHouse.Driver ClickHouse

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

