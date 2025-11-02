-- ClickHouse.Driver ClickHouse

SELECT
	max(id.ChildID)
FROM
	Child id
GROUP BY
	id.ParentID

