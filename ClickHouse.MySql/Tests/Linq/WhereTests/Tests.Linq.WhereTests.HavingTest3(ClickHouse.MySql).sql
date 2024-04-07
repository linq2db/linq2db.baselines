BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	Count(*)
FROM
	Child t1
GROUP BY
	t1.ParentID
HAVING
	t1.ParentID > toInt32(1) AND Count(*) > toInt32(1) AND
	t1.ParentID > toInt32(1)

