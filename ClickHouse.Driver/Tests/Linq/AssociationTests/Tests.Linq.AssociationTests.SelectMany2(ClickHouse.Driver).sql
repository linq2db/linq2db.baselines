BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
		CROSS JOIN Child ch

