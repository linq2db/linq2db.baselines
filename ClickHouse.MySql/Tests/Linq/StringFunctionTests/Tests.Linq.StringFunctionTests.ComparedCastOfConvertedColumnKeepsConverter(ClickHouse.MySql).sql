-- ClickHouse.MySql ClickHouse
SELECT
	COUNT(*)
FROM
	PrefixedCodeTable t
WHERE
	toString(t.Code) LIKE 'x:A'

-- ClickHouse.MySql ClickHouse
SELECT
	COUNT(*)
FROM
	PrefixedCodeTable t
WHERE
	toString(t.Code) = 'x:A'

