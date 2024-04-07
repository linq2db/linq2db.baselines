BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p.FirstName
FROM
	Person p
WHERE
	concat(p.FirstName, ' ', toString(toInt32(1))) = 'John 1'

