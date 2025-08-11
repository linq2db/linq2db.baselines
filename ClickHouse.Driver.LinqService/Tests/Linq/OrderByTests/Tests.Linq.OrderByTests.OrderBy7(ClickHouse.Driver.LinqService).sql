BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	x.ParentID,
	x.ChildID
FROM
	Child x
ORDER BY
	x.ChildID % 2,
	x.ChildID

