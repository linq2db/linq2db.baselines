-- ClickHouse.MySql ClickHouse

SELECT
	pp.PersonID,
	concat(concat('  ', pp.FirstName), ' ')
FROM
	Person pp
WHERE
	pp.PersonID = 1 AND RTRIM(concat(concat('  ', pp.FirstName), ' ')) = '  John'

