BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Patient r
WHERE
	endsWith(r.Diagnosis, 'Persecution')

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Patient r
WHERE
	endsWith(r.Diagnosis, 'persecution')

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Patient r
WHERE
	endsWith(lowerUTF8(r.Diagnosis), 'persecution')

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Patient r
WHERE
	endsWith(lowerUTF8(r.Diagnosis), 'persecution')

