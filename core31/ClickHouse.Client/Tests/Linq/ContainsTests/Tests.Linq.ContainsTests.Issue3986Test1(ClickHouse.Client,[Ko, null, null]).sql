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
	r.PersonID = toInt32(3) AND (r.MiddleName IN ('Ko') OR r.MiddleName IS NULL)

