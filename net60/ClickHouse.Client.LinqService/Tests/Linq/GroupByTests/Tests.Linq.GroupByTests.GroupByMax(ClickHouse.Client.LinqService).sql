BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	maxOrNull(t1.ParentID)
FROM
	Child t1
GROUP BY
	t1.ChildID

