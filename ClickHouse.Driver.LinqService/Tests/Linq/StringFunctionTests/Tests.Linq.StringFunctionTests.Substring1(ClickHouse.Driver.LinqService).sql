BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
WHERE
	Substring(p.FirstName, 2, lengthUTF8(p.FirstName) - 1) = 'ohn' AND
	p.PersonID = 1

