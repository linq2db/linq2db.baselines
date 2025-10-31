BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	maxOrNull(id.ChildID)
FROM
	Child id
GROUP BY
	id.ParentID

