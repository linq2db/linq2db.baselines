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
	position(p.FirstName, 'oh') > toInt32(0) AND p.PersonID = toInt32(1)

