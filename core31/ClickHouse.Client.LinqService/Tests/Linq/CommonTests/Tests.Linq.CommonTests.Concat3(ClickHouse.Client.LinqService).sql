BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	p.FirstName
FROM
	Person p
WHERE
	concat(p.FirstName, ' ', toString(toInt32(1)), toString(toInt32(2))) = 'John 12'

