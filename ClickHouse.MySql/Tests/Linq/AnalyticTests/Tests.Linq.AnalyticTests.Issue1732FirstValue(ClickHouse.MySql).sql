-- ClickHouse.MySql ClickHouse

SELECT
	p.Id,
	FIRST_VALUE(p.Id) RESPECT NULLS OVER(ORDER BY p.Order DESC)
FROM
	Position p
WHERE
	p.Group = 7

