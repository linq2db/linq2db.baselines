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
	CHAR_LENGTH(p.LastName) - positionUTF8(reverseUTF8(p.LastName), 'p') = 2 AND
	(positionUTF8(p.LastName, 'p') <> 0 OR positionUTF8(p.LastName, 'p') IS NULL) AND
	p.PersonID = 1

