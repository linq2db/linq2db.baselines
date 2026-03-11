-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	Person t1
WHERE
	t1.PersonID = 1 OR t1.PersonID <= 1

