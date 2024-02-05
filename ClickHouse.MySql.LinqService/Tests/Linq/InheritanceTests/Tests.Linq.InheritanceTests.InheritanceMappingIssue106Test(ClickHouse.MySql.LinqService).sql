BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.ChildID
FROM
	Child t1
WHERE
	(t1.ChildID = toInt32(11) OR t1.ChildID = toInt32(21))

