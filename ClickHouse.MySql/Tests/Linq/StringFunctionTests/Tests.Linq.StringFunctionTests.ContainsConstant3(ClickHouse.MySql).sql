-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Person p
WHERE
	p.FirstName IN ('oh', 'oh\'', 'oh\\')

