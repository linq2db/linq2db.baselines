-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	Patient r
WHERE
	endsWith(r.Diagnosis, 'Persecution')

-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	Patient r
WHERE
	endsWith(r.Diagnosis, 'persecution')

-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	Patient r
WHERE
	endsWith(lowerUTF8(r.Diagnosis), 'persecution')

-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	Patient r
WHERE
	endsWith(lowerUTF8(r.Diagnosis), 'persecution')

