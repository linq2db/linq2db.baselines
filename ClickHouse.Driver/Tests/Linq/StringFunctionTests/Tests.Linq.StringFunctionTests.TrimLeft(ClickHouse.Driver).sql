-- ClickHouse.Driver ClickHouse

SELECT
	pp.PersonID,
	concat(concat('  ', pp.FirstName), ' ')
FROM
	Person pp
WHERE
	pp.PersonID = 1 AND LTRIM(concat(concat('  ', pp.FirstName), ' ')) = 'John '

