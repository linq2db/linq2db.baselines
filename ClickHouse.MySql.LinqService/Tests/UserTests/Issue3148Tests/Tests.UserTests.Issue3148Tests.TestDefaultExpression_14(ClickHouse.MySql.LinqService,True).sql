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
	concat(r.FirstName, '1') IS NULL

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
	concat(r.FirstName, '1') IS NULL

