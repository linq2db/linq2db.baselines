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
	concat(substringUTF8(p.FirstName, 1, toInt32(3) - 1), '123', substringUTF8(p.FirstName, toInt32(3) + toInt32(1))) = 'Jo123n' AND
	p.PersonID = toInt32(1)

