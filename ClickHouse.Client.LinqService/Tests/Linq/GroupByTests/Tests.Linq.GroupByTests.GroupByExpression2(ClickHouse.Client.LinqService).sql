BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	_.ChildID,
	avgOrNull(_.ParentID)
FROM
	Child _
GROUP BY
	_.ChildID

