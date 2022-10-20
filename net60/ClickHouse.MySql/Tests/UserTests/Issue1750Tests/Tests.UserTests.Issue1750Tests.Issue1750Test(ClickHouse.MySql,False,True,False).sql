BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	Count(*)
FROM
	Parent p
WHERE
	p.ParentID IN (toInt32(1), toInt32(2), toInt32(3), toInt32(4)) AND
	p.Value1 = toInt32(2)

