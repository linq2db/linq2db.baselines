BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	x.ParentID,
	x.ChildID
FROM
	Child x
ORDER BY
	x.ChildID DESC,
	x.ChildID % 2 DESC

