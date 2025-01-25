BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	maxOrNull(t1.ChildID > 20)
FROM
	Child t1

