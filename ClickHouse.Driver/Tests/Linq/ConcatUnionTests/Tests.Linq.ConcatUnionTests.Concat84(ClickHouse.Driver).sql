-- ClickHouse.Driver ClickHouse
SELECT
	c_1.ParentID,
	c_1.ChildID,
	c_1.ParentID + 1 as ID3
FROM
	Child c_1
UNION ALL
SELECT
	c_2.ParentID as ParentID,
	c_2.ParentID as ChildID,
	Coalesce(c_2.Value1, 0) as ID3
FROM
	Parent c_2

