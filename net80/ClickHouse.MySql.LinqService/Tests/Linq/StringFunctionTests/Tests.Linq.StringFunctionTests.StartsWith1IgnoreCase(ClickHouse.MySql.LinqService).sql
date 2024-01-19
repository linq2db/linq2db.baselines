BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	Count(*)
FROM
	Person p
WHERE
	startsWith(lowerUTF8(p.FirstName), 'joh') AND p.PersonID = toInt32(1)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	Count(*)
FROM
	Person p
WHERE
	NOT startsWith(lowerUTF8(p.FirstName), 'joh') AND p.PersonID = toInt32(1)

