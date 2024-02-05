BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	Count(*),
	sumOrNull(t1.ChildID),
	minOrNull(t1.ChildID),
	maxOrNull(t1.ChildID),
	Avg(t1.ChildID)
FROM
	Child t1
GROUP BY
	t1.ParentID

