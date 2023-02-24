BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	x.Value1,
	x.ParentID
FROM
	Parent x
WHERE
	x.Value1 IN (toInt32(2), toInt32(3), toInt32(4))

