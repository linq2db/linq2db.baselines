BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	pp.PersonID,
	concat('  ', pp.FirstName, ' ')
FROM
	Person pp
WHERE
	pp.PersonID = 1 AND trim(LEADING (' J') FROM concat('  ', pp.FirstName, ' ')) = 'ohn '

