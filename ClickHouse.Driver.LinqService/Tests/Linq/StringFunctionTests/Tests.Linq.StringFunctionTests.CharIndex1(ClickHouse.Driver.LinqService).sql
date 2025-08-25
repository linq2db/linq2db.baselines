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
	positionUTF8(p.FirstName, 'oh') = 2 AND p.PersonID = 1

