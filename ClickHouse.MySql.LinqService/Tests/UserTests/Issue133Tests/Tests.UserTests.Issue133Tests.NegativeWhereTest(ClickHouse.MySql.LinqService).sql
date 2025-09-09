BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	COUNT(*) * 100E0 / SUM(COUNT(*)) OVER(),
	sum(t1.ParentID)
FROM
	Child t1
GROUP BY
	t1.ParentID
HAVING
	sum(t1.ParentID) <> 36

