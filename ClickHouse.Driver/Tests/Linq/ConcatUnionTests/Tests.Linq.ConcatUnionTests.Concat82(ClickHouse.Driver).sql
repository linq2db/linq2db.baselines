-- ClickHouse.Driver ClickHouse

SELECT
	c_1.ParentID as ID1,
	c_1.ChildID as ID2
FROM
	Child c_1
UNION ALL
SELECT
	c_2.ParentID as ID1,
	c_2.ParentID as ID2
FROM
	Parent c_2

