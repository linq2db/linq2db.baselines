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
	endsWith(lowerUTF8(r.CaseSensitive), 'ststring')

-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	CollatedTable r
WHERE
	endsWith(lowerUTF8(r.CaseInsensitive), 'ststring')

-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	CollatedTable r
WHERE
	endsWith(lowerUTF8(r.CaseSensitive), 'ststring')

-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	CollatedTable r
WHERE
	endsWith(lowerUTF8(r.CaseInsensitive), 'ststring')

