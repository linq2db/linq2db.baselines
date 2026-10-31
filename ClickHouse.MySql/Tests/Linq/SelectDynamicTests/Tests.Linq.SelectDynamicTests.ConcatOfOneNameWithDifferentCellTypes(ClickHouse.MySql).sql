-- ClickHouse.MySql ClickHouse
SELECT
	x.Usd,
	x.Id,
	toInt32(NULL) as c1
FROM
	Amounts x
WHERE
	x.Id = 1
UNION ALL
SELECT
	toDecimal128(NULL, 10) as Usd,
	x_1.Id as Id,
	x_1.Id as c1
FROM
	Amounts x_1
WHERE
	x_1.Id = 2

