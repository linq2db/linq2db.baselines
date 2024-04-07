BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	Count(*)
FROM
	Person p
WHERE
	startsWith(p.FirstName, 'Jo') AND p.PersonID = toInt32(1)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	Count(*)
FROM
	Person p
WHERE
	startsWith(p.FirstName, 'jo') AND p.PersonID = toInt32(1)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	Count(*)
FROM
	Person p
WHERE
	NOT startsWith(p.FirstName, 'Jo') AND p.PersonID = toInt32(1)

