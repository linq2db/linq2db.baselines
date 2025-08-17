BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
WHERE
	concat('123', CASE
		WHEN lengthUTF8(p.FirstName) >= 6 THEN p.FirstName
		ELSE LPAD(p.FirstName, 6, '*')
	END) = '123**John' AND
	p.PersonID = 1

