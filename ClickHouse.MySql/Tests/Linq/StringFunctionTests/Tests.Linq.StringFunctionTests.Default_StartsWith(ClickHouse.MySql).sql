-- ClickHouse.MySql ClickHouse

ALTER TABLE
	CollatedTable
DELETE WHERE 1

-- ClickHouse.MySql ClickHouse

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

-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	CollatedTable r
WHERE
	startsWith(r.CaseSensitive, 'TestSt')

-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	CollatedTable r
WHERE
	startsWith(r.CaseInsensitive, 'TestSt')

-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	CollatedTable r
WHERE
	startsWith(r.CaseSensitive, 'testst')

-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	CollatedTable r
WHERE
	startsWith(r.CaseInsensitive, 'testst')

