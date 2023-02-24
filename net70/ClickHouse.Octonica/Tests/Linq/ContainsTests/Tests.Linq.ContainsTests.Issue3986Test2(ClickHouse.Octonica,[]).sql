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
	r.PersonID = toInt32(4) AND 1 = 1

