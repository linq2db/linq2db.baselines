BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	p.Value1,
	p.ParentID
FROM
	Parent p
WHERE
	p.Value1 = toInt32(1)

