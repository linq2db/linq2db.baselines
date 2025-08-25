BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	pp.PersonID,
	concat('  ', pp.FirstName, ' ')
FROM
	Person pp
WHERE
	pp.PersonID = 1 AND trim(TRAILING ' n' FROM concat('  ', pp.FirstName, ' ')) = '  Joh'

