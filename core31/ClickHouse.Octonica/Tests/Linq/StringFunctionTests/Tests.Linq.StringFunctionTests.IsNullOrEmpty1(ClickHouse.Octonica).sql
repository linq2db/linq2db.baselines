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
	NOT (p.FirstName IS NULL OR CHAR_LENGTH(p.FirstName) = toInt32(0)) AND
	p.PersonID = toInt32(1)

