BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
WHERE
	concat(substringUTF8(p.FirstName, 1, 3 - 1), '123', substringUTF8(p.FirstName, 3 + 1)) = 'Jo123n' AND
	p.PersonID = 1

