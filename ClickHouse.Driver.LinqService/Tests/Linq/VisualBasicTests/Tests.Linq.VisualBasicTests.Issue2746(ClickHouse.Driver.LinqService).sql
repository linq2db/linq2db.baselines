BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	w.ParentID,
	w.ChildID,
	w.GrandChildID
FROM
	GrandChild w
WHERE
	w.ChildID = 1

