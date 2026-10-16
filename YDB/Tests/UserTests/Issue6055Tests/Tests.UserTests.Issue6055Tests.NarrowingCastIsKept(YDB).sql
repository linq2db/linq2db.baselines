-- YDB Ydb
SELECT
	Unwrap(CAST(r.A + r.B AS Decimal(22,9))) as c1
FROM
	DecimalTable r
LIMIT 2

