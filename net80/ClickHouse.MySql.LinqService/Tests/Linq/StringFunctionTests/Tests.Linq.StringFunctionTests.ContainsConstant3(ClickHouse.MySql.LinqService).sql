BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	Count(*)
FROM
	Person p
WHERE
	p.FirstName IN ('oh', 'oh\'', 'oh\\')

