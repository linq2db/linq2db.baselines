-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	Patient r
WHERE
	position(r.Diagnosis, 'Paranoid') > 0

-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	Patient r
WHERE
	position(r.Diagnosis, 'paranoid') > 0

-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	Patient r
WHERE
	positionCaseInsensitive(r.Diagnosis, 'paranoid') > 0

-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	Patient r
WHERE
	positionCaseInsensitive(r.Diagnosis, 'Paranoid') > 0

