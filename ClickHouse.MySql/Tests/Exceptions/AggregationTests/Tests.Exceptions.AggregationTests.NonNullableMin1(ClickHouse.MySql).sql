-- ClickHouse.MySql ClickHouse

SELECT
	minOrNull(t1.ParentID)
FROM
	Parent t1
WHERE
	t1.ParentID < 0

