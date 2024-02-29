BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	(p.Value1 NOT IN (toInt32(1), toInt32(2), toInt32(3)) OR p.Value1 IS NULL)

