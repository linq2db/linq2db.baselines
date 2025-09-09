BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	COUNT(*)
FROM
	Patient r
WHERE
	position(r.Diagnosis, 'Paranoid') > 0

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	COUNT(*)
FROM
	Patient r
WHERE
	position(r.Diagnosis, 'paranoid') > 0

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	COUNT(*)
FROM
	Patient r
WHERE
	positionCaseInsensitive(r.Diagnosis, 'paranoid') > 0

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	COUNT(*)
FROM
	Patient r
WHERE
	positionCaseInsensitive(r.Diagnosis, 'Paranoid') > 0

