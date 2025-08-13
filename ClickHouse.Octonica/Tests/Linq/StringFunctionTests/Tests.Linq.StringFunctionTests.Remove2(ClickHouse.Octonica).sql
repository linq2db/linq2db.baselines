BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
WHERE
	concat(substringUTF8(p.FirstName, 1, 2 - 1), '', substringUTF8(p.FirstName, 2 + 2)) = 'Jn' AND
	p.PersonID = 1

