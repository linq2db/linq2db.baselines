BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	max(id.ChildID)
FROM
	Child id
GROUP BY
	id.ParentID

