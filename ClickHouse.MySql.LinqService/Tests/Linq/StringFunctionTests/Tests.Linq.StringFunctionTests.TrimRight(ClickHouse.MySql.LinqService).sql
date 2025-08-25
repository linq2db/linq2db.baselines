BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	pp.PersonID,
	concat('  ', pp.FirstName, ' ')
FROM
	Person pp
WHERE
	pp.PersonID = 1 AND RTRIM(concat('  ', pp.FirstName, ' ')) = '  John'

