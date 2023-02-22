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
	r.PersonID = toInt32(4) AND (r.MiddleName <> '222' AND r.MiddleName IS NOT NULL)

