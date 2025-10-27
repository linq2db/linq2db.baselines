BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	maxOrNull(id.ChildID)
FROM
	Child id
GROUP BY
	id.ParentID

