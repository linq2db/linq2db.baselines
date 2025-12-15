-- ClickHouse.Driver ClickHouse

SELECT
	MAX(id.ChildID)
FROM
	Child id
GROUP BY
	id.ParentID

