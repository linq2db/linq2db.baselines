BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.FirstName,
	r.PersonID,
	r.LastName,
	r.MiddleName,
	r.Gender
FROM
	Person r
WHERE
	Coalesce(r.PersonID + 1, 0) = 0

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.FirstName,
	r.PersonID,
	r.LastName,
	r.MiddleName,
	r.Gender
FROM
	Person r
WHERE
	Coalesce(r.PersonID + 1, 0) = 0

