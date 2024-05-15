BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	pp.PersonID,
	concat('  ', pp.FirstName, ' ')
FROM
	Person pp
WHERE
	pp.PersonID = 1 AND RTRIM(concat('  ', pp.FirstName, ' ')) = '  John'

