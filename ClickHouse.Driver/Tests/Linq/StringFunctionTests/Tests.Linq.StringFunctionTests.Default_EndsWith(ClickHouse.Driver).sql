-- ClickHouse.Driver ClickHouse

ALTER TABLE
	CollatedTable
DELETE WHERE 1

-- ClickHouse.Driver ClickHouse

INSERT INTO CollatedTable
(
	Id,
	CaseSensitive,
	CaseInsensitive
)
VALUES
(
	1,
	'TestString',
	'TestString'
)

-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	CollatedTable r
WHERE
	endsWith(r.CaseSensitive, 'stString')

-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	CollatedTable r
WHERE
	endsWith(r.CaseInsensitive, 'stString')

-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	CollatedTable r
WHERE
	endsWith(r.CaseSensitive, 'ststring')

-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	CollatedTable r
WHERE
	endsWith(r.CaseInsensitive, 'ststring')

