BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID = p.Value1 AND
	p.Value1 IS NOT NULL AND
	p.Value1 = 1 AND
	p.Value1 IS NOT NULL

