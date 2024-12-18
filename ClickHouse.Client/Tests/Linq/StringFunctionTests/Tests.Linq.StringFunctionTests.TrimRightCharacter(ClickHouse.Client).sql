BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	pp.PersonID,
	concat('  ', pp.FirstName, ' ')
FROM
	Person pp
WHERE
	pp.PersonID = 1 AND trim(TRAILING ' ' FROM concat('  ', pp.FirstName, ' ')) = '  John' AND
	trim(TRAILING ' ' FROM concat('  ', pp.FirstName, ' ')) IS NOT NULL

