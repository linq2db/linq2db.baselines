-- ClickHouse.Octonica ClickHouse
SELECT
	COUNT(*)
FROM
	PrefixedCodeWithTitleTable t
WHERE
	(concat(Coalesce(t.Code, ''), Coalesce(t.Title, ''))) LIKE 'x:AT'

-- ClickHouse.Octonica ClickHouse
SELECT
	COUNT(*)
FROM
	PrefixedCodeWithTitleTable t
WHERE
	(concat(Coalesce(t.Code, ''), Coalesce(t.Title, ''))) = 'x:AT'

-- ClickHouse.Octonica ClickHouse
SELECT
	COUNT(*)
FROM
	PrefixedCodeWithTitleTable t
WHERE
	(concat(Coalesce(t.Code, ''), Coalesce(t.Title, ''))) = 'x:AT'

