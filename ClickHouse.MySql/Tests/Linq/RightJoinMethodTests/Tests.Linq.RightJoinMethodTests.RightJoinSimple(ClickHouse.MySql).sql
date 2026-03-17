-- ClickHouse.MySql ClickHouse

SELECT
	p.ParentID,
	c_1.ChildID
FROM
	Parent p
		RIGHT JOIN Child c_1 ON p.ParentID = c_1.ParentID

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

