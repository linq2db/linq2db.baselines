BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	x.ChildID
FROM
	Child x
WHERE
	x.ChildID = toInt32(10)
LIMIT toInt32(1)

