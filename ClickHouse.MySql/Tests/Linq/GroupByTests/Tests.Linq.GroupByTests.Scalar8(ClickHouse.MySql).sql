-- ClickHouse.MySql ClickHouse

SELECT
	MAX(id.ChildID)
FROM
	Child id
GROUP BY
	id.ParentID

