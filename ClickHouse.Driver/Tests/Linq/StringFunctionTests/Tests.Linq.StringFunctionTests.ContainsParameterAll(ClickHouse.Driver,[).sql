-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	Person p
WHERE
	p.PersonID = 1 AND position('123[456', '[') > 0

