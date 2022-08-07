BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	maxOrNull(t1.ChildID),
	maxOrNull(t1.ChildID + t1.ParentID)
FROM
	Child t1
GROUP BY
	t1.ParentID

