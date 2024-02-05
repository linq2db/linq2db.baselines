BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID IN (toInt32(2), toInt32(3))

