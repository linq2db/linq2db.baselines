BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.ID,
	t1.Id2
FROM
	(
		SELECT
			a.PersonID as Id2,
			a.PersonID as ID
		FROM
			Person a
		LIMIT 10
	) t1
ORDER BY
	t1.Id2

