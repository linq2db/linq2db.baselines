BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	max(id.ChildID)
FROM
	Child id
GROUP BY
	id.ParentID

