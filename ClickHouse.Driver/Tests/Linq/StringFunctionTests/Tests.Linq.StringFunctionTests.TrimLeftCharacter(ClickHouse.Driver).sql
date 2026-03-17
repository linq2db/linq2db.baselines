-- ClickHouse.Driver ClickHouse

SELECT
	pp.PersonID,
	concat('  ', pp.FirstName, ' ')
FROM
	Person pp
WHERE
	pp.PersonID = 1 AND trim(LEADING (' ') FROM concat('  ', pp.FirstName, ' ')) = 'John '

