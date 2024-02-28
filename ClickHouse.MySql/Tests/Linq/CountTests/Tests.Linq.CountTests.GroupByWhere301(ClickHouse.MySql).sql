BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.ParentID
FROM
	Child t1
GROUP BY
	t1.ParentID
HAVING
	(Count(*) > toInt32(3) OR t1.ParentID = toInt32(1))

