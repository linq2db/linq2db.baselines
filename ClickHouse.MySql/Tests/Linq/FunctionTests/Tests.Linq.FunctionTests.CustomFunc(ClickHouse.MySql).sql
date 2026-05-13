-- ClickHouse.MySql ClickHouse

SELECT
	concat(concat(p.LastName, ', '), p.FirstName)
FROM
	Person p
WHERE
	(concat(concat(p.LastName, ', '), p.FirstName)) = 'Pupkin, John'

