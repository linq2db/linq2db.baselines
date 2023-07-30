BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	Count(*)
FROM
	Patient p
WHERE
	endsWith(p.Diagnosis, 'Persecution') AND p.PersonID = toInt32(2)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	Count(*)
FROM
	Patient p
WHERE
	NOT endsWith(p.Diagnosis, 'Persecution') AND p.PersonID = toInt32(2)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	Count(*)
FROM
	Patient p
WHERE
	endsWith(p.Diagnosis, 'persecution') AND p.PersonID = toInt32(2)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	Count(*)
FROM
	Patient p
WHERE
	NOT endsWith(p.Diagnosis, 'persecution') AND p.PersonID = toInt32(2)

