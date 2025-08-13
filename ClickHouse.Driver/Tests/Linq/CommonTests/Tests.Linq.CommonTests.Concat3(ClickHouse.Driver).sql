BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	p.FirstName
FROM
	Person p
WHERE
	concat(p.FirstName, ' 12') = 'John 12'

