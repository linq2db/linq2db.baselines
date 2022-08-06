BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	(p.ParentID = toInt32(1) AND p.Value1 = toInt32(1) OR p.ParentID = toInt32(2) AND (p.ParentID <> toInt32(3) OR p.ParentID = toInt32(4)) AND p.Value1 IS NOT NULL)

