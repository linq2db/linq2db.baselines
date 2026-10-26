-- ClickHouse.Octonica ClickHouse
SELECT
	p.ParentID,
	ch.ChildID
FROM
	Parent p
		LEFT JOIN Child ch ON 1 = 0

-- ClickHouse.Octonica ClickHouse
SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

-- ClickHouse.Octonica ClickHouse
SELECT
	t1.ParentID,
	t1.ChildID
FROM
	Child t1

