-- ClickHouse.MySql ClickHouse

SELECT
	p.PersonID,
	trim(TRAILING '' FROM concat(p.FirstName, '1'))
FROM
	Person p

