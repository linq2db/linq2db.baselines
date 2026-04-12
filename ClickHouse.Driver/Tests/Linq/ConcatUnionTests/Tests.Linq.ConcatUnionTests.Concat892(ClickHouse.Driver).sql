-- ClickHouse.Driver ClickHouse

SELECT
	c_1.ParentID as Value1,
	c_1.ParentID
FROM
	Child c_1
UNION DISTINCT
SELECT
	toInt32(NULL) as Value1,
	c_2.ParentID as ParentID
FROM
	Parent c_2
UNION ALL
SELECT
	c_3.ParentID as Value1,
	c_3.ParentID as ParentID
FROM
	Child c_3

-- ClickHouse.Driver ClickHouse

SELECT
	t1.ParentID,
	t1.ChildID
FROM
	Child t1

-- ClickHouse.Driver ClickHouse

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

