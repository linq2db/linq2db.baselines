BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	Count(*)
FROM
	Person _
WHERE
	(_.PersonID = 1 OR _.PersonID <= 1 OR _.PersonID = 1)

