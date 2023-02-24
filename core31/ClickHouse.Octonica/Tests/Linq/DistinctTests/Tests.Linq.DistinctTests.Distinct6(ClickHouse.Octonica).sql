BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT DISTINCT
	Coalesce(p.Value1, p.ParentID),
	toInt32(3)
FROM
	Parent p

