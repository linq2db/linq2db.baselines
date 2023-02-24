BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p.PersonID,
	Coalesce(p.FirstName, 'None'),
	Coalesce(p.MiddleName, 'None')
FROM
	Person p
WHERE
	p.PersonID = toInt32(1)

