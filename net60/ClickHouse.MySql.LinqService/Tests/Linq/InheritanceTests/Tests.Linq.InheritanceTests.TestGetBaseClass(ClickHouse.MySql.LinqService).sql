BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	x.ParentID,
	x.Value1
FROM
	Parent x
WHERE
	(x.Value1 = toInt32(1) OR x.Value1 = toInt32(2))

