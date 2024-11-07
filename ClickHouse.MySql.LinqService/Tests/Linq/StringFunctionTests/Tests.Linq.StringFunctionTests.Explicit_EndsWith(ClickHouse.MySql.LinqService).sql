BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Patient r
WHERE
	endsWith(r.Diagnosis, 'Persecution') = true

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Patient r
WHERE
	endsWith(r.Diagnosis, 'persecution') = true

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Patient r
WHERE
	endsWith(lowerUTF8(r.Diagnosis), 'persecution') = true

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Patient r
WHERE
	endsWith(lowerUTF8(r.Diagnosis), 'persecution') = true

