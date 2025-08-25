BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	COUNT(*)
FROM
	Person p
WHERE
	position(p.FirstName, 'o%h') > 0 AND p.PersonID = 1

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	COUNT(*)
FROM
	Person p
WHERE
	position(p.FirstName, 'o%h') <= 0 AND p.PersonID = 1

