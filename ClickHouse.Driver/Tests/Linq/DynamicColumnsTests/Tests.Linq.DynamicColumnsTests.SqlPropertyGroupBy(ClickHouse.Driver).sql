-- ClickHouse.Driver ClickHouse

SELECT
	p.FirstName,
	COUNT(*)
FROM
	Person p
GROUP BY
	p.FirstName

