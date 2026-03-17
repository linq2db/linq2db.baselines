-- ClickHouse.Driver ClickHouse

SELECT
	r_1.ID,
	r_1.LastName,
	r_1.FirstName
FROM
	(
		SELECT DISTINCT
			r.FirstName as FirstName,
			r.PersonID as ID,
			r.LastName as LastName,
			r.MiddleName as MiddleName,
			r.Gender as Gender
		FROM
			Person r
	) r_1
ORDER BY
	r_1.FirstName
LIMIT 1, 2

-- ClickHouse.Driver ClickHouse

SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1

