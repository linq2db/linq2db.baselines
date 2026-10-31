-- YDB Ydb
SELECT
	x.Id as Id,
	x.Usd as Usd,
	CAST(NULL AS Decimal(22,9)) as c1
FROM
	Amounts x
WHERE
	x.Id = 1
UNION ALL
SELECT
	x_1.Id as Id,
	CAST(NULL AS Decimal(22,9)) as Usd,
	x_1.Usd * 2 as c1
FROM
	Amounts x_1
WHERE
	x_1.Id = 2

