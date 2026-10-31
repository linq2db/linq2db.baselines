-- ClickHouse.MySql ClickHouse
SELECT
	p.ParentID,
	ch.ChildID
FROM
	Parent p
		LEFT JOIN Child ch ON p.ParentID = ch.ParentID

-- ClickHouse.MySql ClickHouse
SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

-- ClickHouse.MySql ClickHouse
SELECT
	t1.ParentID,
	t1.ChildID
FROM
	Child t1

