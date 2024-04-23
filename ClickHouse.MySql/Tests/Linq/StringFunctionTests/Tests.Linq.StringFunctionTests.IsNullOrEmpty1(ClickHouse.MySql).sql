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
	NOT (p.FirstName IS NULL OR CHAR_LENGTH(p.FirstName) = 0) AND
	p.PersonID = 1

