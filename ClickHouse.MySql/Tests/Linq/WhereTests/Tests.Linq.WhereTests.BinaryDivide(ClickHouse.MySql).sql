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
	(p.PersonID + toInt32(9)) / toInt32(10) = toInt32(1) AND
	p.PersonID = toInt32(1)

