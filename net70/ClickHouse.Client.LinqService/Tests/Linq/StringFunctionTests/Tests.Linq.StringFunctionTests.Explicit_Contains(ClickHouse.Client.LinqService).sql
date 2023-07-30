BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	Count(*)
FROM
	Patient r
WHERE
	position(r.Diagnosis, 'Paranoid') > toInt32(0)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	Count(*)
FROM
	Patient r
WHERE
	position(r.Diagnosis, 'paranoid') > toInt32(0)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	Count(*)
FROM
	Patient r
WHERE
	positionCaseInsensitive(r.Diagnosis, 'paranoid') > toInt32(0)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	Count(*)
FROM
	Patient r
WHERE
	positionCaseInsensitive(r.Diagnosis, 'Paranoid') > toInt32(0)

