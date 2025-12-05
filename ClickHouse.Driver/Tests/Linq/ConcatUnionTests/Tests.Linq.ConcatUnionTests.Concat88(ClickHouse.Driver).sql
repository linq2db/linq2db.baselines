-- ClickHouse.Driver ClickHouse

SELECT
	c_1.ChildID as Value1,
	c_1.ParentID
FROM
	Child c_1
UNION ALL
SELECT
	c_2.Value1 as Value1,
	c_2.ParentID as ParentID
FROM
	Parent c_2

