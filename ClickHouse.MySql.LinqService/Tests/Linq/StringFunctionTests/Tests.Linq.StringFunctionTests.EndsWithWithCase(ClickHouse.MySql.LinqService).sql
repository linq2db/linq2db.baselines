BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Patient p
WHERE
	endsWith(p.Diagnosis, 'Persecution') = true AND p.PersonID = 2

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Patient p
WHERE
	(endsWith(p.Diagnosis, 'Persecution') = false OR endsWith(p.Diagnosis, 'Persecution') IS NULL) AND
	p.PersonID = 2

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Patient p
WHERE
	endsWith(p.Diagnosis, 'persecution') = true AND p.PersonID = 2

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Patient p
WHERE
	(endsWith(p.Diagnosis, 'persecution') = false OR endsWith(p.Diagnosis, 'persecution') IS NULL) AND
	p.PersonID = 2

