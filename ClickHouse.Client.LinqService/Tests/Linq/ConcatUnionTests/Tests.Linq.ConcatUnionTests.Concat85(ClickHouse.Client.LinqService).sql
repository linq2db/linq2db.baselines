BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	c_1.ParentID,
	Coalesce(c_1.Value1, 0) as c1,
	c_1.ParentID as ParentID_1
FROM
	Parent c_1
UNION ALL
SELECT
	c_2.ParentID as ParentID,
	c_2.ParentID + 1 as c1,
	c_2.ChildID as ParentID_1
FROM
	Child c_2

