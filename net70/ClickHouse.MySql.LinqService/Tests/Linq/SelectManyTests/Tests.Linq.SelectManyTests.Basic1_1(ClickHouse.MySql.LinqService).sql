BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.ParentID,
	t1.ChildID,
	t1.GrandChildID
FROM
	Parent cp,
	(
		SELECT
			c_1.ParentID as ParentID,
			c_1.ChildID as ChildID,
			c_1.GrandChildID as GrandChildID
		FROM
			Child cp_1,
			GrandChild c_1
	) t1

