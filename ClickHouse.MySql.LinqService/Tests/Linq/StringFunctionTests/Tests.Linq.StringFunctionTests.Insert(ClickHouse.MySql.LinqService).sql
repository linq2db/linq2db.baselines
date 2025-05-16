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
		WHEN lengthUTF8(p.FirstName) = 2 THEN concat(p.FirstName, '123')
		ELSE concat(substringUTF8(p.FirstName, 1, 3 - 1), '123', substringUTF8(p.FirstName, 3 + 0))
	END = 'Jo123hn' AND
	p.PersonID = 1

