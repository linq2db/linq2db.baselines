BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	p.FirstName,
	COUNT(*)
FROM
	Person p
GROUP BY
	p.FirstName

