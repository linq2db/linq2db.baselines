-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	CollatedTable
DELETE WHERE 1

-- ClickHouse.Octonica ClickHouse

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

-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	CollatedTable r
WHERE
	endsWith(r.CaseSensitive, 'stString')

-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	CollatedTable r
WHERE
	endsWith(r.CaseInsensitive, 'stString')

-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	CollatedTable r
WHERE
	endsWith(r.CaseSensitive, 'ststring')

-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	CollatedTable r
WHERE
	endsWith(r.CaseInsensitive, 'ststring')

