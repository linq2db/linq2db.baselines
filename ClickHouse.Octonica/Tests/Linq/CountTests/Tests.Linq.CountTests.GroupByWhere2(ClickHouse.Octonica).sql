BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.ParentID
FROM
	Child t1
GROUP BY
	t1.ParentID
HAVING
	Count(*) > toInt32(2)

