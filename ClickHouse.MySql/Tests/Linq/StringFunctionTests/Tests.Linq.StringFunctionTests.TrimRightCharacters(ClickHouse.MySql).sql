-- ClickHouse.MySql ClickHouse

SELECT
	pp.PersonID,
	concat(concat('  ', pp.FirstName), ' ')
FROM
	Person pp
WHERE
	pp.PersonID = 1 AND trim(TRAILING ' n' FROM (concat(concat('  ', pp.FirstName), ' '))) = '  Joh'

