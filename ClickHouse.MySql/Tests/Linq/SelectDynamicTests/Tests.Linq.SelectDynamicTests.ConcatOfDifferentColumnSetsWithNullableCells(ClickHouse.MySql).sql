-- ClickHouse.MySql ClickHouse
SELECT
	x.Id,
	x.Usd,
	toDecimal128(NULL, 10) as c1
FROM
	Amounts x
WHERE
	x.Id = 1
UNION ALL
SELECT
	x_1.Id as Id,
	toDecimal128(NULL, 10) as Usd,
	x_1.Usd * 2 as c1
FROM
	Amounts x_1
WHERE
	x_1.Id = 2

