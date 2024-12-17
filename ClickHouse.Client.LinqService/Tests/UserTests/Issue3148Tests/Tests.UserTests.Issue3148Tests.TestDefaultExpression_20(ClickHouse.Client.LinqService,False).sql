BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.FirstName,
	r.PersonID,
	r.LastName,
	r.MiddleName,
	r.Gender
FROM
	Person r
WHERE
	endsWith(r.LastName, 'x')

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.FirstName,
	r.PersonID,
	r.LastName,
	r.MiddleName,
	r.Gender
FROM
	Person r
WHERE
	endsWith(r.LastName, 'x')

