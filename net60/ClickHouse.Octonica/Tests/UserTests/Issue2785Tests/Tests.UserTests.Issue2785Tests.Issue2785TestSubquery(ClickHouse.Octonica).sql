BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.Id2
FROM
	(
		SELECT
			a.PersonID as Id2,
			a.PersonID as Id
		FROM
			Person a
		LIMIT toInt32(10)
	) t1
ORDER BY
	t1.Id2

