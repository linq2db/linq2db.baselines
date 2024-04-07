BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	maxOrNull(t1.ChildID)
FROM
	Child t1
GROUP BY
	t1.ParentID

