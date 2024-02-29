BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	(p.ParentID = toInt32(1) OR (p.ParentID = toInt32(2) OR p.ParentID = toInt32(3)) AND (p.ParentID = toInt32(3) OR p.ParentID = toInt32(1)))

