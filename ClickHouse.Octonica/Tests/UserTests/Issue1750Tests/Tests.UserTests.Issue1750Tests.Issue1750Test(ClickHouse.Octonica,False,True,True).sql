BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID IN (1, 2, 3, 4) AND (p.Value1 = 2 AND p.Value1 IS NOT NULL OR p.ParentID % 2 = 0)

