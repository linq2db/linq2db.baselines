-- ClickHouse.MySql ClickHouse

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1
ORDER BY
	t1.ParentID DESC
LIMIT 1

