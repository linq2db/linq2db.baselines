BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	t1.ParentID,
	t1.ChildID
FROM
	Child t1
LIMIT 2, 5

