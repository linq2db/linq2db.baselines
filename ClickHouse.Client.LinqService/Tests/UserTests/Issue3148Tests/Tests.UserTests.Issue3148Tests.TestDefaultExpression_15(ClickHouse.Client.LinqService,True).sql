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
	Coalesce(r.PersonID + toInt32(1), toInt32(0)) = toInt32(0)

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
	Coalesce(r.PersonID + toInt32(1), toInt32(0)) = toInt32(0)

