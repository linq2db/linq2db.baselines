BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	gc.ParentID,
	gc.ChildID,
	gc.GrandChildID
FROM
	Parent cp
		INNER JOIN GrandChild gc ON cp.ParentID = gc.ParentID AND gc.ChildID = toInt32(22)

