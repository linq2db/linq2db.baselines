-- ClickHouse.MySql ClickHouse
SELECT
	x.Id,
	toString('Q1') as Name,
	x.Q1
FROM
	QuarterlySales x
WHERE
	x.Q1 IS NOT NULL
UNION ALL
SELECT
	x_1.Id as Id,
	toString('Q2') as Name,
	x_1.Q2 as Q1
FROM
	QuarterlySales x_1
WHERE
	x_1.Q2 IS NOT NULL

