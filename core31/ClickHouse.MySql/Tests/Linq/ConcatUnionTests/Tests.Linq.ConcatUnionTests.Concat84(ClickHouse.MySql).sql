BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	c_1.ParentID,
	c_1.ChildID,
	c_1.ParentID + toInt32(1)
FROM
	Child c_1
UNION ALL
SELECT
	c_2.ParentID,
	c_2.ParentID,
	Coalesce(c_2.Value1, toInt32(0))
FROM
	Parent c_2

