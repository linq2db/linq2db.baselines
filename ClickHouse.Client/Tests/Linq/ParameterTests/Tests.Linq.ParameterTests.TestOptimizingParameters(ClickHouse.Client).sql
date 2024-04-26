BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	Count(*)
FROM
	Person t1
WHERE
	(t1.PersonID = 1 OR t1.PersonID <= 1 OR t1.PersonID = 1)

