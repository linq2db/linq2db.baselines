-- ClickHouse.Octonica ClickHouse

SELECT DISTINCT
	Coalesce(p.Value1, p.ParentID),
	3
FROM
	Parent p

-- ClickHouse.Octonica ClickHouse

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

