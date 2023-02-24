BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	p.PersonID,
	p.Gender,
	p.FirstName,
	p.MiddleName,
	p.LastName
FROM
	Person p
WHERE
	p.PersonID = toInt32(1)
LIMIT toInt32(2)

