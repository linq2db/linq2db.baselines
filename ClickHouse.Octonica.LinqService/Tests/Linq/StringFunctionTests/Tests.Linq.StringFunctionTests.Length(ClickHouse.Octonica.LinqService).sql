BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
WHERE
	lengthUTF8(p.FirstName) = 4 AND p.PersonID = 1

