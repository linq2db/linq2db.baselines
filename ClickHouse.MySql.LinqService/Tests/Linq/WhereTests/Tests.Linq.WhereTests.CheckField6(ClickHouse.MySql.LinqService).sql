BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p.Value1,
	p.Value1 * toInt32(100),
	p.ParentID
FROM
	Parent p
WHERE
	p.ParentID = toInt32(1) AND p.Value1 * toInt32(100) > toInt32(0)

