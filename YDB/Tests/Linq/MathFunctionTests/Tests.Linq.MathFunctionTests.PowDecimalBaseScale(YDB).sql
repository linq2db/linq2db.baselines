-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(Math::Pow(Unwrap(CAST(Decimal('1.00005', 6, 5) AS Double)), Unwrap(CAST(r.E AS Double))) AS Text)) AS Decimal(18,4))) + r.D as c1
FROM
	PowBaseScale r
LIMIT 2

