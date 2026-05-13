-- ClickHouse.MySql ClickHouse

SELECT
	pp.PersonID,
	concat(concat('  ', pp.FirstName), ' ')
FROM
	Person pp
WHERE
	pp.PersonID = 1 AND trim(LEADING (' ') FROM (concat(concat('  ', pp.FirstName), ' '))) = 'John '

