BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	t1.ID_1,
	t1.ID
FROM
	(
		SELECT
			a.PersonID as ID,
			a.PersonID as ID_1
		FROM
			Person a
		LIMIT 10
	) t1
ORDER BY
	t1.ID

