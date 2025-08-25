BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	p.FirstName
FROM
	Person p
WHERE
	concat(p.FirstName, ' I') = 'John I'

