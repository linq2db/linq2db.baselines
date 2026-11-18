-- ClickHouse.Driver ClickHouse
SELECT
	p.FirstName
FROM
	Person p
WHERE
	p.FirstName IN ('John', 'Jane')

