BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	Patient r
WHERE
	startsWith(r.Diagnosis, 'Hall')

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	Patient r
WHERE
	startsWith(r.Diagnosis, 'hall')

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	Patient r
WHERE
	startsWith(lowerUTF8(r.Diagnosis), 'hall')

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	Patient r
WHERE
	startsWith(lowerUTF8(r.Diagnosis), 'hall')

