BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	p.PersonID,
	trim(TRAILING '' FROM concat(p.FirstName, '1'))
FROM
	Person p

