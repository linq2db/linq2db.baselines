-- YDB Ydb
SELECT
	x.Usd as Usd,
	x.Id as Id,
	CAST(NULL AS Int32) as c1
FROM
	Amounts x
WHERE
	x.Id = 1
UNION ALL
SELECT
	CAST(NULL AS Decimal(22,9)) as Usd,
	x_1.Id as Id,
	x_1.Id as c1
FROM
	Amounts x_1
WHERE
	x_1.Id = 2

