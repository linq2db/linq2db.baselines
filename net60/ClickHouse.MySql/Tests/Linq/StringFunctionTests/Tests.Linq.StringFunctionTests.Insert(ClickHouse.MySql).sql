BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
WHERE
	CASE
		WHEN CHAR_LENGTH(p.FirstName) = toInt32(2)
			THEN concat(p.FirstName, '123')
		ELSE concat(substringUTF8(p.FirstName, 1, toInt32(3) - 1), '123', substringUTF8(p.FirstName, toInt32(3) + toInt32(0)))
	END = 'Jo123hn' AND
	p.PersonID = toInt32(1)

