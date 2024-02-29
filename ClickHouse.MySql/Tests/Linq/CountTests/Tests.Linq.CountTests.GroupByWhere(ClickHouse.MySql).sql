BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	Count(*)
FROM
	Child ch
WHERE
	ch.ChildID > toInt32(20)

