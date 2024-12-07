BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	c_1.ParentID,
	c_1.ParentID as ParentID_1
FROM
	Parent c_1
UNION ALL
SELECT
	c_2.ParentID as ParentID,
	c_2.ChildID as ParentID_1
FROM
	Child c_2

