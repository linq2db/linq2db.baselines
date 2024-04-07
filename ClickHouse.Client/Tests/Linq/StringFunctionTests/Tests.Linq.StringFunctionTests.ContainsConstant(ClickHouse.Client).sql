BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	Count(*)
FROM
	Person p
WHERE
	position(p.FirstName, 'jOh') > toInt32(0) AND p.PersonID = toInt32(1)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	Count(*)
FROM
	Person p
WHERE
	(position(p.FirstName, 'jOh') <= toInt32(0)) AND p.PersonID = toInt32(1)

