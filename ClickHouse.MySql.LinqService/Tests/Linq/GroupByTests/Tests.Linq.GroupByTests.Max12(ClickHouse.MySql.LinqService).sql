BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	maxOrNull(t1.ChildID > 20)
FROM
	Child t1

