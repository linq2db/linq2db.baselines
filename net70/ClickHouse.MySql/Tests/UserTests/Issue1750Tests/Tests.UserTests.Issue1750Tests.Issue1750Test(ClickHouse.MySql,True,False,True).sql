BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID IN (toInt32(1), toInt32(2), toInt32(3), toInt32(4)) AND
	(p.Value1 = toInt32(1) OR p.ParentID % toInt32(2) = toInt32(0))

