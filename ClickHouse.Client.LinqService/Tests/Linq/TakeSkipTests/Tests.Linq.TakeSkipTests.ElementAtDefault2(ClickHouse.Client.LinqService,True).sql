BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID > 1
LIMIT 300000, 1

