BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p.ParentID
FROM
	Parent p
WHERE
	((p.ParentID = toInt32(1) OR p.ParentID = toInt32(2)) OR p.ParentID = toInt32(4)) AND
	p.Value1 IS NULL

