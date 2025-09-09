BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	t1.FirstName,
	t1.ID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	(
		SELECT
			position(p.FirstName, 'Jo') > 0 as Field1,
			p.FirstName as FirstName,
			p.PersonID as ID,
			p.LastName as LastName,
			p.MiddleName as MiddleName,
			p.Gender as Gender
		FROM
			Person p
	) t1
WHERE
	t1.Field1
ORDER BY
	t1.Field1

