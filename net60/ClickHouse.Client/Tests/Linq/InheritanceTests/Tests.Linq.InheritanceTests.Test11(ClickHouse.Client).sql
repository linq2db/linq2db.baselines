BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	(p.Value1 = toInt32(1) OR p.Value1 = toInt32(2))

