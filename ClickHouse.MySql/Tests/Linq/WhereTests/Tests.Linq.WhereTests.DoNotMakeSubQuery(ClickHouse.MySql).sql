-- ClickHouse.MySql ClickHouse

SELECT
	p2.PersonID,
	trim(TRAILING '' FROM concat(p2.FirstName, ''))
FROM
	Person p2
WHERE
	p2.PersonID = 1

