-- ClickHouse.Driver ClickHouse
SELECT
	COUNT(*)
FROM
	PrefixedCodeWithTitleTable t
WHERE
	(concat(Coalesce(t.Code, ''), Coalesce(t.Title, ''))) LIKE 'x:AT'

-- ClickHouse.Driver ClickHouse
SELECT
	COUNT(*)
FROM
	PrefixedCodeWithTitleTable t
WHERE
	(concat(Coalesce(t.Code, ''), Coalesce(t.Title, ''))) = 'x:AT'

-- ClickHouse.Driver ClickHouse
SELECT
	COUNT(*)
FROM
	PrefixedCodeWithTitleTable t
WHERE
	(concat(Coalesce(t.Code, ''), Coalesce(t.Title, ''))) = 'x:AT'

