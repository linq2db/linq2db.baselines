BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Patient p
WHERE
	endsWith(p.Diagnosis, 'Persecution') AND p.PersonID = 2

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Patient p
WHERE
	NOT endsWith(p.Diagnosis, 'Persecution') AND p.PersonID = 2

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Patient p
WHERE
	endsWith(p.Diagnosis, 'persecution') AND p.PersonID = 2

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Patient p
WHERE
	NOT endsWith(p.Diagnosis, 'persecution') AND p.PersonID = 2

