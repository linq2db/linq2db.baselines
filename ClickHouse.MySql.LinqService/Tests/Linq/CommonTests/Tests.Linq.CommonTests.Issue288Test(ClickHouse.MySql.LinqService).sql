BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p.FirstName
FROM
	Person p
WHERE
	p.FirstName IS NULL
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p.FirstName
FROM
	Person p
WHERE
	p.FirstName = 'John'
LIMIT toInt32(1)

