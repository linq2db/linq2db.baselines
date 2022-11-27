BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	sumOrNull(t1.ChildID),
	minOrNull(t1.ChildID),
	maxOrNull(t1.ChildID),
	Avg(t1.ChildID),
	Count(*)
FROM
	Child t1
GROUP BY
	t1.ParentID

