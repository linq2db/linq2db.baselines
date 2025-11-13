-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*) * 100E0 / SUM(COUNT(*)) OVER(),
	sumOrNull(t1.ParentID)
FROM
	Child t1
GROUP BY
	t1.ParentID
HAVING
	sumOrNull(t1.ParentID) <> 36 OR sumOrNull(t1.ParentID) IS NULL

