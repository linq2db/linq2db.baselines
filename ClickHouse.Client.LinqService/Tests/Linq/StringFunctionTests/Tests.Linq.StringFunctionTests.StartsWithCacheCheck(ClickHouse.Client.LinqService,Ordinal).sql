BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	p.FirstName
FROM
	Person p
WHERE
	p.PersonID = toInt32(1)
LIMIT toInt32(2)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	Count(*)
FROM
	Person p
WHERE
	startsWith(p.FirstName, 'Joh') AND p.PersonID = toInt32(1)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	Count(*)
FROM
	Person p
WHERE
	NOT startsWith(p.FirstName, 'Joh') AND p.PersonID = toInt32(1)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	Count(*)
FROM
	Person p
WHERE
	startsWith(p.FirstName, 'JOH') AND p.PersonID = toInt32(1)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	Count(*)
FROM
	Person p
WHERE
	NOT startsWith(p.FirstName, 'JOH') AND p.PersonID = toInt32(1)

