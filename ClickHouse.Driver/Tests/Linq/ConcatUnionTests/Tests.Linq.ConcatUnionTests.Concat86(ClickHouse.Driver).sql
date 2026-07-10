-- ClickHouse.Driver ClickHouse
SELECT
	c_1.ParentID,
	c_1.ParentID + 1 as ID2,
	c_1.ChildID
FROM
	Child c_1
UNION ALL
SELECT
	c_2.ParentID as ParentID,
	Coalesce(c_2.Value1, 0) as ID2,
	c_2.ParentID as ChildID
FROM
	Parent c_2

