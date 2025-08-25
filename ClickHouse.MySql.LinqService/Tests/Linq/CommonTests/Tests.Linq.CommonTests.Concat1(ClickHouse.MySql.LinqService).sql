BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	p.FirstName
FROM
	Person p
WHERE
	concat(p.FirstName, ' I') = 'John I'

