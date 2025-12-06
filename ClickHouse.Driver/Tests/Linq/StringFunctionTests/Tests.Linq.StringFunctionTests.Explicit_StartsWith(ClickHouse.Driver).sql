-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	Patient r
WHERE
	startsWith(r.Diagnosis, 'Hall')

-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	Patient r
WHERE
	startsWith(r.Diagnosis, 'hall')

-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	Patient r
WHERE
	startsWith(lowerUTF8(r.Diagnosis), 'hall')

-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	Patient r
WHERE
	startsWith(lowerUTF8(r.Diagnosis), 'hall')

