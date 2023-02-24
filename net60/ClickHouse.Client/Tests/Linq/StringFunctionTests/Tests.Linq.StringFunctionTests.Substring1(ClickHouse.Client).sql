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
	Substring(p.FirstName, toInt32(2), CHAR_LENGTH(p.FirstName) - toInt32(1)) = 'ohn' AND
	p.PersonID = toInt32(1)

