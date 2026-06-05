-- ClickHouse.MySql ClickHouse

SELECT DISTINCT
	p.Value1
FROM
	Parent p
ORDER BY
	p.Value1 DESC
LIMIT 3

-- ClickHouse.MySql ClickHouse

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

