-- YDB Ydb
SELECT
	r.Id as Id,
	CAST(CAST(Math::Trunc(CAST(r.D AS Double)) AS Text) AS Decimal(22,9)) as SqlDecimal,
	Math::Trunc(r.F) as SqlDouble,
	CAST(CAST(Math::Trunc(Unwrap(CAST(r.N AS Double))) AS Text) AS Decimal(22,9)) as MathDecimal,
	Math::Trunc(r.G) as MathDouble,
	CAST(CAST(Math::Trunc(CAST(r.D AS Double)) AS Text) AS Decimal(22,9)) as SqlDecimal_1,
	Math::Trunc(r.F) as SqlDouble_1
FROM
	TruncateValues r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.D as D,
	t1.F as F,
	t1.N as N,
	t1.G as G_1
FROM
	TruncateValues t1

