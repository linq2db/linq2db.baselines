-- ClickHouse.MySql ClickHouse

SELECT
	pp.PersonID,
	concat('  ', pp.FirstName, ' ')
FROM
	Person pp
WHERE
	pp.PersonID = 1 AND trimLeft(concat('  ', pp.FirstName, ' ')) = 'John '

