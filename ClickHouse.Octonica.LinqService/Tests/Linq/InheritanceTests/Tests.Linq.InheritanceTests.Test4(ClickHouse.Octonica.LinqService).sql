BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	CASE
		WHEN p.Value1 = 1 THEN true
		ELSE false
	END,
	p.ParentID,
	p.Value1,
	p.Value1
FROM
	Parent p
WHERE
	p.Value1 <> 0

