-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Patient r
WHERE
	startsWith(r.Diagnosis, 'Hall')

-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Patient r
WHERE
	startsWith(r.Diagnosis, 'hall')

-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Patient r
WHERE
	startsWith(lowerUTF8(r.Diagnosis), 'hall')

-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Patient r
WHERE
	startsWith(lowerUTF8(r.Diagnosis), 'hall')

