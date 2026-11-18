-- ClickHouse.Driver ClickHouse
SELECT
	COUNT(*)
FROM
	PrefixedCodeTable t
WHERE
	toString(t.Code) LIKE 'x:A%'

-- ClickHouse.Driver ClickHouse
SELECT
	COUNT(*)
FROM
	PrefixedCodeTable t
WHERE
	toString(t.Code) = 'x:A'

