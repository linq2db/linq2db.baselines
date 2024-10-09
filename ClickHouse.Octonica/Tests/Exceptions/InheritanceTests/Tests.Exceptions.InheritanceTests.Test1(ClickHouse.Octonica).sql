BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	CASE
		WHEN p.Value1 = 2 THEN true
		ELSE false
	END,
	p.ParentID,
	p.Value1,
	CASE
		WHEN p.Value1 = 1 THEN true
		ELSE false
	END,
	p.Value1
FROM
	Parent p

