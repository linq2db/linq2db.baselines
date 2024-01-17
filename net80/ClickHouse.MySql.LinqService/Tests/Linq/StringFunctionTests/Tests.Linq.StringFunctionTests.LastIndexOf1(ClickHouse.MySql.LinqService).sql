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
		WHEN positionUTF8(p.LastName, 'p') = toInt32(0)
			THEN toInt32(-1)
		ELSE CHAR_LENGTH(p.LastName) - positionUTF8(reverseUTF8(p.LastName), 'p')
	END = toInt32(2) AND
	p.PersonID = toInt32(1)

