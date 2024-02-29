BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	e.ChildID
FROM
	GrandChild e
WHERE
	e.ChildID = toInt32(1)

