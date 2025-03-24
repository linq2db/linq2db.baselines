BeforeExecute
--  ClickHouse.MySql ClickHouse

SELECT
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
WHERE
	(CHAR_LENGTH(p.LastName) - positionUTF8(reverseUTF8(p.LastName), 'p')) - CHAR_LENGTH('p') = 1 AND
	positionUTF8(p.LastName, 'p') <> 0 AND p.PersonID = 1

