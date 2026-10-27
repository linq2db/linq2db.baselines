-- ClickHouse.MySql ClickHouse
SELECT
	p.ParentID,
	toInt32(NULL) as c1,
	toInt32(NULL) as ParentID_1,
	toInt32(NULL) as ChildID
FROM
	Parent p
UNION ALL
SELECT
	t1.ParentID as ParentID,
	c_1.ParentID as c1,
	c_1.ParentID as ParentID_1,
	c_1.ChildID as ChildID
FROM
	Parent t1
		LEFT JOIN Child c_1 ON c_1.ParentID = t1.ParentID

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

