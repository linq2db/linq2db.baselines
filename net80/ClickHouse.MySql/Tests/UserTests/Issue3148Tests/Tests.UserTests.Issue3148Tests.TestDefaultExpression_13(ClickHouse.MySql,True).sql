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
	(r.PersonID <> toInt32(0))

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
	(r.PersonID <> toInt32(0))

