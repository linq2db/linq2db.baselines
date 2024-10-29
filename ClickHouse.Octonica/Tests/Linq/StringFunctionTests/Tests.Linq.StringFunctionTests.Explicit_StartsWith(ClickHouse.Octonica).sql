BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	Patient r
WHERE
	startsWith(r.Diagnosis, 'Hall') = true

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	Patient r
WHERE
	startsWith(r.Diagnosis, 'hall') = true

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	Patient r
WHERE
	startsWith(lowerUTF8(r.Diagnosis), 'hall') = true

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	Patient r
WHERE
	startsWith(lowerUTF8(r.Diagnosis), 'hall') = true

