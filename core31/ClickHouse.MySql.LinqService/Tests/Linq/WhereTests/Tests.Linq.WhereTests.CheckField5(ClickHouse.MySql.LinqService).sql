BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p.Value1,
	p.ParentID
FROM
	Parent p
WHERE
	p.Value1 + toInt32(1) = toInt32(2) AND p.ParentID = toInt32(1)

