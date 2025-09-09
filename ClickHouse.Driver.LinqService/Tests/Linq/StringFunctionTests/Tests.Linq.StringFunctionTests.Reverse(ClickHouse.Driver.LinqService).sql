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
	reverseUTF8(p.FirstName) = 'nhoJ' AND p.PersonID = 1

