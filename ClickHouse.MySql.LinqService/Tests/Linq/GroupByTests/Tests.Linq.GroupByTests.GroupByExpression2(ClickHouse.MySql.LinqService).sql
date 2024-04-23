BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	_.ChildID,
	avgOrNull(_.ParentID)
FROM
	Child _
GROUP BY
	_.ChildID

