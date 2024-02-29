BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	x.ParentID,
	x.ChildID
FROM
	Child x
ORDER BY
	x.ChildID % toInt32(2),
	x.ChildID DESC

