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
	position(r.CaseSensitive, 'stSt') > 0

-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	CollatedTable r
WHERE
	position(r.CaseInsensitive, 'stSt') > 0

-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	CollatedTable r
WHERE
	position(r.CaseSensitive, 'stst') > 0

-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	CollatedTable r
WHERE
	position(r.CaseInsensitive, 'stst') > 0

