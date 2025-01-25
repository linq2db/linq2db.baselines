BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	pp.PersonID,
	concat('  ', pp.FirstName, ' ')
FROM
	Person pp
WHERE
	pp.PersonID = 1 AND LTRIM(concat('  ', pp.FirstName, ' ')) = 'John '

