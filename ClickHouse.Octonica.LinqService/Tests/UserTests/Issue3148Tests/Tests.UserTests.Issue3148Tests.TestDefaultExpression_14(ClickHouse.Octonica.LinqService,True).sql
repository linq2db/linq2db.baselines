BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.FirstName,
	r.PersonID,
	r.LastName,
	r.MiddleName,
	r.Gender
FROM
	Person r
WHERE
	Coalesce(concat(r.FirstName, '1'), NULL) IS NULL

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.FirstName,
	r.PersonID,
	r.LastName,
	r.MiddleName,
	r.Gender
FROM
	Person r
WHERE
	Coalesce(concat(r.FirstName, '1'), NULL) IS NULL

