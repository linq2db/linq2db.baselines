BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p.FirstName,
	COUNT(*)
FROM
	Person p
GROUP BY
	p.FirstName

