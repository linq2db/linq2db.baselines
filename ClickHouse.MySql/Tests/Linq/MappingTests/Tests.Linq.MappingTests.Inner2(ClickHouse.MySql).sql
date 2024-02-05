BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID = toInt32(1) AND p.Value1 = toInt32(1)
LIMIT toInt32(1)

