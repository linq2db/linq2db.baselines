BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	COUNT(*)
FROM
	Person p
WHERE
	endsWith(p.FirstName, 'JOHN') AND p.PersonID = 1

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	COUNT(*)
FROM
	Person p
WHERE
	NOT endsWith(p.FirstName, 'JOHN') AND p.PersonID = 1

