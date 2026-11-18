-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(Math::Pow(Unwrap(CAST(r.D AS Double)), Unwrap(CAST(Decimal('0.00005', 22, 9) AS Double))) AS Text)) AS Decimal(18,4))) + r.D as c1
FROM
	PowScale r
LIMIT 2

