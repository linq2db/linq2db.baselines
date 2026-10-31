-- ClickHouse.MySql ClickHouse
SELECT
	c_1.ChildID,
	p.ParentID
FROM
	Child c_1
		LEFT JOIN Parent p ON 1 = 0

-- ClickHouse.MySql ClickHouse
SELECT
	t1.ParentID,
	t1.ChildID
FROM
	Child t1

-- ClickHouse.MySql ClickHouse
SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

